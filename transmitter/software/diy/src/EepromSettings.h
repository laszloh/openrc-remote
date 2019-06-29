/**
 * @file eeprom_settings.h
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

#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>

// EEPROM settings structure

class Settings {
public:
  uint8_t trim_x_left;
  uint8_t trim_y_left;
  uint8_t trim_x_right;
  uint8_t trim_y_right;
  uint8_t rf24_addr[5];
  uint8_t rf24_channel;

  bool defaultSettings;

  Settings();

  bool loadSettings(uint16_t startAddress = 0);
  void saveSettings(void);

private:
  typedef union {
    uint8_t raw_data;
    struct {
      uint8_t magic : 4;
      uint8_t res : 3;
      uint8_t valid : 1;
    };
  } header_t;

  typedef struct __attribute__((packed)) {
    header_t header;
    uint8_t trim_x_left;
    uint8_t trim_y_left;
    uint8_t trim_x_right;
    uint8_t trim_y_right;
    uint8_t rf24_addr[5];
    uint8_t rf24_channel;
    uint16_t crc;
  } eeprom_settings_t;

  static const uint8_t magic         = 0xD;
  static const uint8_t invalidHeader = 0x00 | (magic << 4);
  uint16_t eepromAddress;

  void eepromLoad(eeprom_settings_t *mem, uint16_t addr);
  void eepromWriteOnly(uint16_t addr, uint8_t value);
};
