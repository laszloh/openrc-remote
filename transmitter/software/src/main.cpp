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
#include "nRF24L01.h"
#include "RF24.h"
#include "FastADC.h"

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
}


/********************** Main Loop *********************/
void loop() {
  delay(1000);
}

/********************** Interrupt *********************/
void check_radio(void)                                // Receiver role: Does nothing!  All the work is in IRQ
{
  
  bool tx, fail, rx;
  radio.whatHappened(tx, fail, rx);                     // What happened?  
}

