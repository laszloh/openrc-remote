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

#pragma once

#include <Arduino.h>

class AnalogButtons {
public:
  typedef enum { buttons_8=8, buttons_4=4 } button_count_t;

  AnalogButtons() {}

  uint8_t GetAnalogButton(uint16_t analog_value,
                          button_count_t type = buttons_8) {
    for(uint8_t i=0; i<type; i++) {
      uint16_t ulimit = button_8_values[i];

      if(type == buttons_4) {
        ulimit = button_4_values[i];
      }

      if(analog_value <= ulimit) {
        return i+1;
      }
    }
    return 0;
  }

private:
  static constexpr uint16_t button_8_values[8] = {
      196, 327, 458, 571, 692, 829, 950, 1023,
  };

  static constexpr uint16_t button_4_values[4] = {380, 640, 894, 1023};
};
