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
#include <avr/sleep.h>
#include <nRF24L01.h>
#include <RF24.h>
#include <Arduino_FreeRTOS.h>
#include <FreeRTOSConfig.h>
#include <FreeRTOSVariant.h>

#define FASTADC_WITHOUT_TIMER1
#include <FastADC.h>

#include "EepromSettings.h"
#include "LcdHandler.h"

// Hardware config
#define TFT_CS           5
#define TFT_DC           3
#define TFT_RST          1
#define TFT_BL           0

#define RF24_IRQ         2
#define RF24_CE          7
#define RF24_CS         10
#define EEPROM_ADDR   0x00

#define X_LEFT_MUX    0x04
#define Y_LEFT_MUX    0x05
#define X_RIGHT_MUX   0x06
#define Y_RIGHT_MUX   0x07
#define SW_AIN1       0x23
#define SW_AIN2       0x24
#define AIN3          0x20
#define AIN4          0x22

// Hardware configuration
RF24 radio(RF24_CE, RF24_CS);
FastADC(analog, 8, true);
LcdHandler lcd(TFT_CS,TFT_DC, TFT_RST, TFT_BL);
Settings settings;

// Message structure
typedef struct {
  uint8_t x_axis_left;
  uint8_t y_axis_left;
  uint8_t x_axis_right;
  uint8_t y_axis_right;
  uint8_t analog1;
  uint8_t analog2;
  uint8_t buttons1;
  uint8_t buttons2;
} data_t;

// Function prototypes
void check_radio(void);
void TaskBlink(void *pvParameters);
void TaskAnalogRead(void *pvParameters);

static uint16_t get_seed(void) {
  uint16_t seed = 0;
  uint16_t *p = (uint16_t*) (RAMEND+1);
  extern uint16_t __heap_start;

  while (p >= &__heap_start + 1)
    seed ^= * (--p);

  return seed;
}

void setup() {
  // FastADC channel setup
  analog.reference(X_LEFT_MUX, INTERNAL);   // horizontal left stick
  analog.reference(Y_LEFT_MUX, INTERNAL);   // vertical left stick
  analog.reference(X_RIGHT_MUX, INTERNAL);  // horizontal right stick
  analog.reference(Y_RIGHT_MUX, INTERNAL);  // veritcal right stick
  analog.reference(SW_AIN1, INTERNAL);      // left analog switches
  analog.reference(SW_AIN2, INTERNAL);      // right analog switches
  analog.reference(AIN3, INTERNAL);         // battery voltage
  analog.reference(AIN4, INTERNAL);         // gui switches

  // load eeprom settings
  if(settings.defaultSettings) {
    // default settings were loaded, create a valid unique address
    randomSeed(get_seed());
    for(uint8_t i=0; i < sizeof(settings.rf24_addr); i++) {
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
  attachInterrupt(RF24_IRQ, check_radio, LOW);             // Attach interrupt handler to interrupt #0 (using pin 2) on BOTH the sender and receiver

  // TFT setup
  lcd.init();

  // Now set up two tasks to run independently.
  xTaskCreate(
    TaskBlink
    ,  (const portCHAR *)"Blink"   // A name just for humans
    ,  128  // Stack size
    ,  NULL
    ,  2  // priority
    ,  NULL );

  xTaskCreate(
    TaskAnalogRead
    ,  (const portCHAR *) "AnalogRead"
    ,  128 // This stack size can be checked & adjusted by reading Highwater
    ,  NULL
    ,  1  // priority
    ,  NULL );

  // disable unused modules
  PRR0 |= _BV(PRTWI);
  PRR1 |= _BV(PRUSB) | _BV(PRTIM3) | _BV(PRUSART1);
  MCUCR |= _BV(JTD);
  ACSR &= ~_BV(ACIE);
  ACSR |= _BV(ACD);
}


/********************** Main Loop *********************/
void loop() {
  set_sleep_mode( SLEEP_MODE_IDLE );
  portENTER_CRITICAL();
  sleep_enable();
  
  // Only if there is support to disable the brown-out detection.
  #if defined(BODS) && defined(BODSE)
    sleep_bod_disable();
  #endif
  
  portEXIT_CRITICAL();
  sleep_cpu(); // good night.
  
  // Ugh. I've been woken up. Better disable sleep mode.
  sleep_reset(); // sleep_reset is faster than sleep_disable() because it clears all sleep_mode() bits.
}

/********************** Interrupt *********************/
void check_radio(void)                                // Receiver role: Does nothing!  All the work is in IRQ
{
  bool tx, fail, rx;
  radio.whatHappened(tx, fail, rx);                     // What happened?  
}

void TaskBlink(void *pvParameters)  // This is a task.
{
  (void) pvParameters;

  // initialize digital pin 13 as an output.
  pinMode(13, OUTPUT);

  for (;;) // A Task shall never return or exit.
  {
    digitalWrite(13, HIGH);   // turn the LED on (HIGH is the voltage level)
    vTaskDelay( 1000 / portTICK_PERIOD_MS ); // wait for one second
    digitalWrite(13, LOW);    // turn the LED off by making the voltage LOW
    vTaskDelay( 1000 / portTICK_PERIOD_MS ); // wait for one second
  }
}

void TaskAnalogRead(void *pvParameters)  // This is a task.
{
  (void) pvParameters;

  // initialize serial communication at 9600 bits per second:

  for (;;)
  {
    // read the input on analog pin 0:
    int sensorValue = analog.read(X_LEFT_MUX);
    // print out the value you read:
    vTaskDelay(1);  // one tick delay (15ms) in between reads for stability
  }
}
