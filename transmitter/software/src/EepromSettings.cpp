/**
 * @file eeprom_settings.c
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
#include <EEPROM.h>
#include <FastCRC.h>
#include <util/atomic.h>
#include "EepromSettings.h"

FastCRC16 crc16;

Settings::Settings():
  trim_x_left(127), trim_y_left(127), trim_x_right(127),
  trim_y_right(127), rf24_addr{0xDE,0xAD,0xCA,0xFF,0xEE},
  rf24_channel(108)
{
  defaultSettings = !loadSettings();
}

bool Settings::loadSettings(uint16_t startAddress) {
  eeprom_settings_t settings;
  eepromAddress = startAddress;
  
  for(uint16_t addr=eepromAddress; addr<EEPROM.length(); addr+=sizeof(eeprom_settings_t)) {
    settings.header.raw_data = EEPROM.read(addr);
    // test the header
    if(settings.header.magic==magic && settings.header.valid) {
      eepromLoad(&settings, addr);
      if(crc16.mcrf4xx((uint8_t*)(&settings), sizeof(eeprom_settings_t)) == 0) {
        // crc was ok, copy values
        this->trim_x_left = settings.trim_x_left;
        this->trim_y_left = settings.trim_y_left;
        this->trim_x_right = settings.trim_x_right;
        this->trim_y_right = settings.trim_y_right;
        this->rf24_channel = settings.rf24_channel;
        memcpy(this->rf24_addr, settings.rf24_addr, sizeof(this->rf24_addr));

        defaultSettings = false;
        eepromAddress = addr;

        return true;
      }
    }
  }

  return false;
}

void Settings::saveSettings(void) {
  uint16_t previousAddress = eepromAddress;
  eeprom_settings_t newData;
  memset(&newData, 0, sizeof(eeprom_settings_t));

  eepromAddress += sizeof(eeprom_settings_t);
  // wrapp around, if we have overflown
  if(eepromAddress > EEPROM.length())
    eepromAddress = 0x00;

  // prepare the struct
  newData.header.magic = magic;
  newData.header.valid = 1;
  newData.trim_x_left = this->trim_x_left;
  newData.trim_y_left = this->trim_y_left;
  newData.trim_x_right = this->trim_x_right;
  newData.trim_y_right = this->trim_y_right;
  newData.rf24_channel = this->rf24_channel;
  memcpy(newData.rf24_addr, this->rf24_addr, sizeof(newData.rf24_addr));
  newData.crc = crc16.mcrf4xx((uint8_t*)(&newData), sizeof(eeprom_settings_t));

  // write the new config to th eeprom
  for(uint8_t i=0;i<sizeof(eeprom_settings_t);i++) {
    EEPROM.update(eepromAddress+i, *((uint8_t*)(&newData+i)));
  }

  //invalidiate previous config
  eepromWriteOnly(previousAddress, invalidHeader);
}

void Settings::eepromLoad(eeprom_settings_t *mem, uint16_t addr) {
  for(uint16_t i=0;i<sizeof(eeprom_settings_t);i++) {
    *((uint8_t*)mem+i) = EEPROM.read(addr+i);
  }
}

void Settings::eepromWriteOnly(uint16_t addr, uint8_t value) {
  uint8_t eecr;

  // sanity checks
  if(addr > EEPROM.length())
    return;

  while(EECR & (1<<EEPE));

  ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
    EEAR = addr;
    EEDR = value;
    eecr = EECR;
    EECR = 0x00 | (1<<EEPM1) | (1<<EEMPE);
    EECR |= (1<<EEPE);

    while(EECR & (1<<EEPE));
    EECR = eecr;
  }
}
