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
#include <Adafruit_GFX.h>    // Core graphics library
#include <Adafruit_ST7735.h> // Hardware-specific library for ST7735

#include "LcdHandler.h"

bool LcdHandler::timerEvent = false;

LcdHandler::LcdHandler(uint8_t pin_cs, uint8_t pin_dc, int8_t pin_rst, int8_t pin_bl):
    tft(pin_cs, pin_dc, pin_rst), timer([](){timerEvent = true;}, 5000), pin_bl(pin_bl),
    currentState(StateMachine::standby), nextState(StateMachine::statusScreen)
{
    if(pin_bl >= 0) {
        pinMode(pin_bl, OUTPUT);
        digitalWrite(pin_bl, LOW);
    }
    
    timer.interval(shortTimeout);
    timer.start();
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

void LcdHandler::loop(void) {
    timer.update();

    if(timerEvent) {
        timerEvent = false;

        switch(currentState) {
        case StateMachine::standby:
            nextState = StateMachine::statusScreen;
            timer.interval(updateIntervall);
            break;

        case StateMachine::statusScreen:
            nextState = StateMachine::statusScreen;
            break;

        case StateMachine::settingsMenu:
            break;
        }

        currentState = nextState;
    }
}
