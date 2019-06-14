/**
 * @file main.cpp
 * @author Laszlo Hegedüs (laszlo.hegedues@gmail.com)
 * @brief
 * @version 0.1
 * @date 2019-05-10
 *
 * @copyright Copyright (c) 2019
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 */

#include <Arduino.h>
#include <SPI.h>
#include <FastADC.h>
#include <ButtonDebouncer.h>
#include <RF24.h>
#include <avr/power.h>
#include <avr/sleep.h>

#include "AnalogButtons.h"
#include "EepromSettings.h"
#include "LcdHandler.h"

#define DEBUG

// Hardware config
// ATMEL ATMEGA32U4 / ARDUINO LEONARDO
//
// D0               PD2                 RXD1/INT2
// D1               PD3                 TXD1/INT3
// D2               PD1     SDA         SDA/INT1
// D3#              PD0     PWM8/SCL    OC0B/SCL/INT0
// D4       A6      PD4                 ADC8
// D5#              PC6     ???         OC3A/#OC4A
// D6#      A7      PD7     FastPWM     #OC4D/ADC10
// D7               PE6                 INT6/AIN0
//
// D8       A8      PB4                 ADC11/PCINT4
// D9#      A9      PB5     PWM16       OC1A/#OC4B/ADC12/PCINT5
// D10#     A10     PB6     PWM16       OC1B/0c4B/ADC13/PCINT6
// D11#             PB7     PWM8/16     0C0A/OC1C/#RTS/PCINT7
// D12      A11     PD6                 T1/#OC4D/ADC9
// D13#             PC7     PWM10       CLK0/OC4A
//
// A0       D18     PF7                 ADC7
// A1       D19     PF6                 ADC6
// A2       D20     PF5                 ADC5
// A3       D21     PF4                 ADC4
// A4       D22     PF1                 ADC1
// A5       D23     PF0                 ADC0
//
// New pins D14..D17 to map SPI port to digital pins
//
// MISO     D14     PB3                 MISO,PCINT3
// SCK      D15     PB1                 SCK,PCINT1
// MOSI     D16     PB2                 MOSI,PCINT2
// SS       D17     PB0                 RXLED,SS/PCINT0
//
// Connected LEDs on board for TX and RX
// TXLED    D30     PD5                 XCK1
// RXLED    D17     PB0
// HWB              PE2                 HWB

#define LCD_CS 10
#define LCD_DC 3
#define LCD_BL 2
#define LCD_RST 5

#define RF24_CE 9
#define RF24_CS 8

#define PE_LATCH 7
#define PE_CS 6

#define EEPROM_ADDR 0x00

#define H_LEFT_MUX 0x04   // ADC4
#define V_LEFT_MUX 0x05   // ADC5
#define H_RIGHT_MUX 0x06  // ADC6
#define V_RIGHT_MUX 0x07  // ADC7
#define VBAT_MUX 0x80     // ADC8

// Hardware configuration
RF24 radio(RF24_CE, RF24_CS);
FastADC(analog, 5, 4, true);
ButtonDebouncer(debounce, uint16_t, 8, ~0x00);
LcdHandler lcd(LCD_CS, LCD_DC, LCD_RST, LCD_BL);
Settings settings;

// Message structure
typedef struct {
  uint8_t x_axis_left;
  uint8_t y_axis_left;
  uint8_t x_axis_right;
  uint8_t y_axis_right;
  uint8_t buttons1;
  uint8_t buttons2;
} data_t;

typedef struct {
  uint16_t retry_counter;
  data_t data;
} packet_t;

// Function prototypes
static void TaskRadio();
static void enter_sleep(void);
static uint16_t read_port_expander(void);

static uint16_t get_seed(void) {
  uint16_t seed = 0;
  uint16_t *p   = (uint16_t *)(RAMEND + 1);
  extern uint16_t __heap_start;

  while (p >= &__heap_start + 1)
    seed ^= *(--p);

  return seed;
}

void setup() {
  // FastADC channel setup
  analog.reference(H_LEFT_MUX, DEFAULT);  // horizontal left stick
  analog.reference(V_LEFT_MUX, DEFAULT);  // vertical left stick
  analog.reference(H_RIGHT_MUX, DEFAULT); // horizontal right stick
  analog.reference(V_RIGHT_MUX, DEFAULT); // veritcal right stick
  analog.reference(VBAT_MUX, DEFAULT);    // battery voltage

  // load eeprom settings
  settings.loadSettings();
  if (settings.defaultSettings) {
    // default settings were loaded, create a valid unique address
    randomSeed(get_seed());
    for (uint8_t i = 0; i < sizeof(settings.rf24_addr); i++) {
      settings.rf24_addr[i] = random(UINT8_MAX);
    }
    settings.saveSettings();
  }

  // RF24 setup
  radio.begin();
  radio.setPALevel(RF24_PA_MAX);
  radio.setDataRate(RF24_250KBPS);
  radio.setChannel(settings.rf24_channel);
  radio.enableAckPayload();
  radio.enableDynamicPayloads();
  radio.openWritingPipe(settings.rf24_addr);

  // Port expander
  pinMode(PE_LATCH, OUTPUT);
  digitalWrite(PE_LATCH, LOW);

  pinMode(PE_CS, OUTPUT);
  digitalWrite(PE_CS, HIGH);

  // TFT setup
  lcd.init();

  // disable unused modules
  power_twi_disable();
#ifndef DEBUG
  power_usart1_disable();
#endif
  power_usb_disable();
  //  power_timer0_disable();
  //  power_timer1_disable();
  power_timer2_disable();
  power_timer3_disable();
  MCUCR |= _BV(JTD);
  ACSR &= ~_BV(ACIE);
  ACSR |= _BV(ACD);
}

/********************** Main Loop *********************/
void loop() {
  // debounce the buttons
  debounce.ButtonProcess(read_port_expander());

  // calling all task
  TaskRadio();
  lcd.TaskLcd();

  // we have reached the end of all tasks, go to sleep
  enter_sleep();
}

void TaskRadio(void) // This is a task.
{
  static uint8_t buffer[32];
  static uint32_t last_millis = millis();
  static packet_t packet;
  const uint16_t txIntervall = 10; // ms

  if (millis() > (last_millis + txIntervall)) {
    last_millis = millis();

    // prepare packet
    packet.data.x_axis_left  = (analog.read(H_LEFT_MUX) >> 2);
    packet.data.y_axis_left  = (analog.read(V_LEFT_MUX) >> 2);
    packet.data.x_axis_right = (analog.read(H_RIGHT_MUX) >> 2);
    packet.data.y_axis_right = (analog.read(V_RIGHT_MUX) >> 2);
    packet.data.buttons1     = debounce.ButtonPressed(0xFF);
    packet.data.buttons2     = 0x00;

    radio.powerUp();
    if (!radio.write(&packet, sizeof(packet_t))) {
      // transmission failed, increment failed counter
      packet.retry_counter++;
    } else {
      if (radio.isAckPayloadAvailable()) {
        radio.read(&buffer, sizeof(buffer));
      }
    }
    radio.powerDown();
  }
}

static void enter_sleep(void) {
  set_sleep_mode(SLEEP_MODE_IDLE);

  ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
    sleep_enable();

// Only if there is support to disable the brown-out detection.
#if defined(BODS) && defined(BODSE)
    sleep_bod_disable();
#endif
  }
  sleep_cpu(); // good night.

  // Ugh. I've been woken up. Better disable sleep mode.
  sleep_disable();
}

static uint16_t read_port_expander(void) {
  uint16_t retVal;

  digitalWrite(PE_LATCH, LOW);
  _delay_us(5);
  digitalWrite(PE_LATCH, HIGH);
  _delay_us(10);

  SPI.beginTransaction(SPISettings(4000000U, MSBFIRST, SPI_MODE0));
  digitalWrite(PE_CS, LOW);
  retVal = SPI.transfer16(0x00);
  digitalWrite(PE_CS, HIGH);
  SPI.endTransaction();

  return retVal;
}