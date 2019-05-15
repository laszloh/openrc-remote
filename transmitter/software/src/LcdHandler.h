/**
 * @file LcdHandler.h
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

#pragma once

#include <Adafruit_GFX.h>    // Core graphics library
#include <Adafruit_ST7735.h> // Hardware-specific library for ST7735

class LcdHandler {
public:
  LcdHandler(uint8_t pin_cs, uint8_t pin_dc, int8_t pin_rst, int8_t pin_bl);
  LcdHandler(uint8_t pin_cs, uint8_t pin_dc, int8_t pin_rst);
  LcdHandler(uint8_t pin_cs, uint8_t pin_dc);

  void init(void);

private:
  enum class StateMachine { standby, statusScreen, settingsMenu };

  Adafruit_ST7735 tft;
  uint8_t pin_bl;
  StateMachine currentState;
  StateMachine nextState;

  const uint32_t shortTimeout    = 1500; // in ms
  const uint32_t longTimeout     = 5000; // in ms
  const uint32_t updateIntervall = 250;  // in ms

  static void BasicTask(void *pvParameters);
  void TaskLcd(void);
};
