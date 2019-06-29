/**
 * Marlin 3D Printer Firmware
 * Copyright (C) 2019 MarlinFirmware [https://github.com/MarlinFirmware/Marlin]
 *
 * Based on Sprinter and grbl.
 * Copyright (C) 2011 Camiel Gubbels / Erik van der Zalm
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

/**
 * Pin mapping for the 32u4, 16u4
 *
 *   Logical Pin: 00 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22
 *   Port:        D2 D3 D1 D0 D4 C6 D7 E6 B4 B5 B6 B7 D6 C7 B3 B1 B2 B0 F7 F6 F5 F4 D5
 */

#include "fastio_AVR.h"

#define DEBUG_LED   DIO22

// UART
#define RXD         DIO0
#define TXD         DIO1
#define RXD0        DIO0
#define TXD0        DIO1

// SPI
#define SCK         DIO15
#define MISO        DIO14
#define MOSI        DIO16
#define SS          DIO17

// TWI (I2C)
#define SCL         DIO3
#define SDA         DIO4

// Timers and PWM
#define OC0A        DIO11
#define OC0B        DIO3
#define OC1A        DIO9
#define OC1B        DIO10
#define OC1C        DIO11
#define OC4A        DIO13
#define OC4B        DIO10

// Digital I/O

#define DIO0_PIN    PIND2
#define DIO0_RPORT  PIND
#define DIO0_WPORT  PORTD
#define DIO0_DDR    DDRD
#define DIO0_PWM    nullptr

#define DIO1_PIN    PIND3
#define DIO1_RPORT  PIND
#define DIO1_WPORT  PORTD
#define DIO1_DDR    DDRD
#define DIO1_PWM    nullptr

#define DIO2_PIN    PIND1
#define DIO2_RPORT  PIND
#define DIO2_WPORT  PORTD
#define DIO2_DDR    DDRD
#define DIO2_PWM    nullptr

#define DIO3_PIN    PIND0
#define DIO3_RPORT  PIND
#define DIO3_WPORT  PORTD
#define DIO3_DDR    DDRD
#define DIO3_PWM    &OCR0A  //todo

#define DIO4_PIN    PIND4
#define DIO4_RPORT  PIND
#define DIO4_WPORT  PORTD
#define DIO4_DDR    DDRD
#define DIO4_PWM    &OCR0B  //todo

#define DIO5_PIN    PINC6
#define DIO5_RPORT  PINC
#define DIO5_WPORT  PORTC
#define DIO5_DDR    DDRC
#define DIO5_PWM    nullptr

#define DIO6_PIN    PIND7
#define DIO6_RPORT  PIND
#define DIO6_WPORT  PORTD
#define DIO6_DDR    DDRD
#define DIO6_PWM    nullptr

#define DIO7_PIN    PINE6
#define DIO7_RPORT  PINE
#define DIO7_WPORT  PORTE
#define DIO7_DDR    DDRE
#define DIO7_PWM    nullptr

#define DIO8_PIN    PINB4
#define DIO8_RPORT  PINB
#define DIO8_WPORT  PORTB
#define DIO8_DDR    DDRB
#define DIO8_PWM    nullptr

#define DIO9_PIN    PINB5
#define DIO9_RPORT  PINB
#define DIO9_WPORT  PORTB
#define DIO9_DDR    DDRB
#define DIO9_PWM    nullptr

#define DIO10_PIN   PINB6
#define DIO10_RPORT PINB
#define DIO10_WPORT PORTB
#define DIO10_DDR   DDRB
#define DIO10_PWM   nullptr

#define DIO11_PIN   PINB7
#define DIO11_RPORT PINB
#define DIO11_WPORT PORTB
#define DIO11_DDR   DDRB
#define DIO11_PWM   nullptr

#define DIO12_PIN   PIND6
#define DIO12_RPORT PIND
#define DIO12_WPORT PORTD
#define DIO12_DDR   DDRD
#define DIO12_PWM   &OCR1B  //todo

#define DIO13_PIN   PINC7
#define DIO13_RPORT PINC
#define DIO13_WPORT PORTC
#define DIO13_DDR   DDRC
#define DIO13_PWM   &OCR1A  //todo

#define DIO14_PIN   PINB3
#define DIO14_RPORT PINB
#define DIO14_WPORT PORTB
#define DIO14_DDR   DDRB
#define DIO14_PWM   &OCR2B  //todo

#define DIO15_PIN   PINB1
#define DIO15_RPORT PINB
#define DIO15_WPORT PORTB
#define DIO15_DDR   DDRB
#define DIO15_PWM   &OCR2A  //todo

#define DIO16_PIN   PINB2
#define DIO16_RPORT PINB
#define DIO16_WPORT PORTB
#define DIO16_DDR   DDRB
#define DIO16_PWM   nullptr

#define DIO17_PIN   PINB0
#define DIO17_RPORT PINB
#define DIO17_WPORT PORTB
#define DIO17_DDR   DDRB
#define DIO17_PWM   nullptr

#define DIO18_PIN   PINF7
#define DIO18_RPORT PINF
#define DIO18_WPORT PORTF
#define DIO18_DDR   DDRF
#define DIO18_PWM   nullptr

#define DIO19_PIN   PINF6
#define DIO19_RPORT PINF
#define DIO19_WPORT PORTF
#define DIO19_DDR   DDRF
#define DIO19_PWM   nullptr

#define DIO20_PIN   PINF5
#define DIO20_RPORT PINF
#define DIO20_WPORT PORTF
#define DIO20_DDR   DDRF
#define DIO20_PWM   nullptr

#define DIO21_PIN   PINF4
#define DIO21_RPORT PINF
#define DIO21_WPORT PORTF
#define DIO21_DDR   DDRF
#define DIO21_PWM   nullptr

#define DIO22_PIN   PIND5
#define DIO22_RPORT PIND
#define DIO22_WPORT PORTD
#define DIO22_DDR   DDRD
#define DIO22_PWM   nullptr

#define AIO0_PIN    PINF7
#define AIO0_RPORT  PINF
#define AIO0_WPORT  PORTF
#define AIO0_DDR    DDRF
#define AIO0_PWM    nullptr

#define AIO1_PIN    PINF6
#define AIO1_RPORT  PINF
#define AIO1_WPORT  PORTF
#define AIO1_DDR    DDRF
#define AIO1_PWM    nullptr

#define AIO2_PIN    PINF5
#define AIO2_RPORT  PINF
#define AIO2_WPORT  PORTF
#define AIO2_DDR    DDRF
#define AIO2_PWM    nullptr

#define AIO3_PIN    PINF4
#define AIO3_RPORT  PINF
#define AIO3_WPORT  PORTF
#define AIO3_DDR    DDRF
#define AIO3_PWM    nullptr

#undef PB0
#define PB0_PIN     PINB0
#define PB0_RPORT   PINB
#define PB0_WPORT   PORTB
#define PB0_DDR     DDRB
#define PB0_PWM     nullptr

#undef PB1
#define PB1_PIN     PINB1
#define PB1_RPORT   PINB
#define PB1_WPORT   PORTB
#define PB1_DDR     DDRB
#define PB1_PWM     nullptr

#undef PB2
#define PB2_PIN     PINB2
#define PB2_RPORT   PINB
#define PB2_WPORT   PORTB
#define PB2_DDR     DDRB
#define PB2_PWM     nullptr

#undef PB3
#define PB3_PIN     PINB3
#define PB3_RPORT   PINB
#define PB3_WPORT   PORTB
#define PB3_DDR     DDRB
#define PB3_PWM     &OCR0A  //todo

#undef PB4
#define PB4_PIN     PINB4
#define PB4_RPORT   PINB
#define PB4_WPORT   PORTB
#define PB4_DDR     DDRB
#define PB4_PWM     &OCR0B  //todo

#undef PB5
#define PB5_PIN     PINB5
#define PB5_RPORT   PINB
#define PB5_WPORT   PORTB
#define PB5_DDR     DDRB
#define PB5_PWM     nullptr

#undef PB6
#define PB6_PIN     PINB6
#define PB6_RPORT   PINB
#define PB6_WPORT   PORTB
#define PB6_DDR     DDRB
#define PB6_PWM     nullptr

#undef PB7
#define PB7_PIN     PINB7
#define PB7_RPORT   PINB
#define PB7_WPORT   PORTB
#define PB7_DDR     DDRB
#define PB7_PWM     nullptr

#undef PC6
#define PC6_PIN     PINC6
#define PC6_RPORT   PINC
#define PC6_WPORT   PORTC
#define PC6_DDR     DDRC
#define PC6_PWM     nullptr

#undef PC7
#define PC7_PIN     PINC7
#define PC7_RPORT   PINC
#define PC7_WPORT   PORTC
#define PC7_DDR     DDRC
#define PC7_PWM     nullptr

#undef PD0
#define PD0_PIN     PIND0
#define PD0_RPORT   PIND
#define PD0_WPORT   PORTD
#define PD0_DDR     DDRD
#define PD0_PWM     nullptr

#undef PD1
#define PD1_PIN     PIND1
#define PD1_RPORT   PIND
#define PD1_WPORT   PORTD
#define PD1_DDR     DDRD
#define PD1_PWM     nullptr

#undef PD2
#define PD2_PIN     PIND2
#define PD2_RPORT   PIND
#define PD2_WPORT   PORTD
#define PD2_DDR     DDRD
#define PD2_PWM     nullptr

#undef PD3
#define PD3_PIN     PIND3
#define PD3_RPORT   PIND
#define PD3_WPORT   PORTD
#define PD3_DDR     DDRD
#define PD3_PWM     nullptr

#undef PD4
#define PD4_PIN     PIND4
#define PD4_RPORT   PIND
#define PD4_WPORT   PORTD
#define PD4_DDR     DDRD
#define PD4_PWM     nullptr

#undef PD5
#define PD5_PIN     PIND5
#define PD5_RPORT   PIND
#define PD5_WPORT   PORTD
#define PD5_DDR     DDRD
#define PD5_PWM     nullptr

#undef PD6
#define PD6_PIN     PIND6
#define PD6_RPORT   PIND
#define PD6_WPORT   PORTD
#define PD6_DDR     DDRD
#define PD6_PWM     &OCR2B  //todo

#undef PD7
#define PD7_PIN     PIND7
#define PD7_RPORT   PIND
#define PD7_WPORT   PORTD
#define PD7_DDR     DDRD
#define PD7_PWM     &OCR2A  //todo

#undef PE2
#define PE2_PIN     PINE2
#define PE2_RPORT   PINE
#define PE2_WPORT   PORTE
#define PE2_DDR     DDRE
#define PE2_PWM     nullptr

#undef PE6
#define PE6_PIN     PINE6
#define PE6_RPORT   PINE
#define PE6_WPORT   PORTE
#define PE6_DDR     DDRE
#define PE6_PWM     &OCR2B  //todo

#undef PF0
#define PF0_PIN     PINF0
#define PF0_RPORT   PINF
#define PF0_WPORT   PORTF
#define PF0_DDR     DDRF
#define PF0_PWM     nullptr

#undef PF1
#define PF1_PIN     PINF1
#define PF1_RPORT   PINF
#define PF1_WPORT   PORTF
#define PF1_DDR     DDRF
#define PF1_PWM     nullptr

#undef PF4
#define PF4_PIN     PINF4
#define PF4_RPORT   PINF
#define PF4_WPORT   PORTF
#define PF4_DDR     DDRF
#define PF4_PWM     nullptr

#undef PF5
#define PF5_PIN     PINF5
#define PF5_RPORT   PINF
#define PF5_WPORT   PORTF
#define PF5_DDR     DDRF
#define PF5_PWM     nullptr

#undef PF6
#define PF6_PIN     PINF6
#define PF6_RPORT   PINF
#define PF6_WPORT   PORTF
#define PF6_DDR     DDRF
#define PF6_PWM     &OCR2B  //todo

#undef PF7
#define PF7_PIN     PINF7
#define PF7_RPORT   PINF
#define PF7_WPORT   PORTF
#define PF7_DDR     DDRF
#define PF7_PWM     &OCR2A  //todo
