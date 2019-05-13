/**
 * @file LcdHandler.cpp
 * @author your name (you@domain.com)
 * @brief 
 * @version 0.1
 * @date 2019-05-11
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
#include <Arduino_FreeRTOS.h>
#include <Adafruit_GFX.h>
#include <Adafruit_ST7735.h>

#include "LcdHandler.h"

LcdHandler::LcdHandler(uint8_t pin_cs, uint8_t pin_dc, int8_t pin_rst, int8_t pin_bl):
    tft(pin_cs, pin_dc, pin_rst), pin_bl(pin_bl),
    currentState(StateMachine::standby), nextState(StateMachine::statusScreen)
{
    if(pin_bl >= 0) {
        pinMode(pin_bl, OUTPUT);
        digitalWrite(pin_bl, LOW);
    }
    
    xTaskCreate(
        BasicTask
        ,  (const portCHAR *) "AnalogRead"
        ,  128 // This stack size can be checked & adjusted by reading Highwater
        ,  this
        ,  1  // priority
        ,  NULL );
}

LcdHandler::LcdHandler(uint8_t pin_cs, uint8_t pin_dc, int8_t pin_rst):
    LcdHandler(pin_cs, pin_dc, pin_rst, -1) {}

LcdHandler::LcdHandler(uint8_t pin_cs, uint8_t pin_dc):
    LcdHandler(pin_cs, pin_dc, -1, -1) {}

void LcdHandler::init(void){
    tft.initR(INITR_BLACKTAB);      // Init ST7735S chip, black tab

    tft.setCursor(54, 10);
    tft.setTextColor(ST7735_ORANGE);
    tft.setTextSize(20);
    tft.print(F("OpenRC"));
    tft.setCursor(84,20);
    tft.print(F("remote"));
}

void LcdHandler::TaskLcd(void) {

    for(;;) {
        // check our buttons

        switch(currentState) {
        case StateMachine::standby:
            break;

        case StateMachine::statusScreen:
            nextState = StateMachine::statusScreen;
            break;

        case StateMachine::settingsMenu:
            break;
        }

        currentState = nextState;

        vTaskDelay( 1000 / portTICK_PERIOD_MS ); // wait for one second
    }
}

void LcdHandler::BasicTask(void *pvParameters) {
    static_cast<LcdHandler*>(pvParameters)->TaskLcd();
}