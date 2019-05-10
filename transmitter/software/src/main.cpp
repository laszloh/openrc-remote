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

void check_radio(void);

// Hardware configuration
RF24 radio(7,8);                          // Set up nRF24L01 radio on SPI bus plus pins 7 & 8
FastADC(analog, 4, true);

typedef struct button {
  uint8_t b1:1;
  uint8_t b2:1;
  uint8_t b3:1;
  uint8_t b4:1;
  uint8_t b5:1;
  uint8_t b6:1;
  uint8_t b7:1;
  uint8_t b8:1;
} button_t;

typedef struct {
  uint8_t x_axis_left;
  uint8_t y_axis_left;
  uint8_t x_axis_right;
  uint8_t y_axis_right;
  uint8_t analog1;
  uint8_t analog2;
  button_t buttons1;
  button_t buttons2;
} data_t;


const short role_pin = 5;                 // sets the role of this unit in hardware.  Connect to GND to be the 'pong' receiver
                                          // Leave open to be the 'ping' transmitter
// Demonstrates another method of setting up the addresses
const byte address[][5] = { 
  0xCC,0xCE,0xCC,0xCE,0xCC , 
  0xCE,0xCC,0xCE,0xCC,0xCE ,
  0xDE,0xAD,0xCA,0xFF,0xEE
};
// Role management
// Set up role.  This sketch uses the same software for all the nodes in this
// system.  Doing so greatly simplifies testing.  The hardware itself specifies
// which node it is.
// This is done through the role_pin
typedef enum { role_sender = 1, role_receiver } role_e;                 // The various roles supported by this sketch
role_e role;                                                            // The role of the current running sketch
static uint32_t message_count = 0;


unsigned short get_seed()
{
   unsigned short seed = 0;
   unsigned short *p = (unsigned short*) (RAMEND+1);
   extern unsigned short __heap_start;
    
   while (p >= &__heap_start + 1)
      seed ^= * (--p);
    
   return seed;
}

void setup() {
  analog.reference(7, INTERNAL);    // AN0
  analog.reference(6, INTERNAL);    // AN1
  analog.reference(5, INTERNAL);    // AN2
  analog.reference(4, INTERNAL);    // AN3

  srand(get_seed());

  pinMode(role_pin, INPUT);                        // set up the role pin                  
  digitalWrite(role_pin,HIGH);                     // Change this to LOW/HIGH instead of using an external pin
  delay(20);                                       // Just to get a solid reading on the role pin
  if ( digitalRead(role_pin) )                    // read the address pin, establish our role
    role = role_sender;
  else
    role = role_receiver;
  // Setup and configure rf radio
  radio.begin();  
  //radio.setPALevel(RF24_PA_LOW);
  radio.enableAckPayload();                         // We will be using the Ack Payload feature, so please enable it
  radio.enableDynamicPayloads();                    // Ack payloads are dynamic payloads
                                                    // Open pipes to other node for communication
  if ( role == role_sender ) {                      // This simple sketch opens a pipe on a single address for these two nodes to 
     radio.openWritingPipe(address[0]);             // communicate back and forth.  One listens on it, the other talks to it.
     radio.openReadingPipe(1,address[1]); 
  }else{
    radio.openWritingPipe(address[1]);
    radio.openReadingPipe(1,address[0]);
    radio.startListening();
    radio.writeAckPayload( 1, &message_count, sizeof(message_count) );  // Add an ack packet for the next time around.  This is a simple
    ++message_count;        
  }
  delay(50);
  attachInterrupt(0, check_radio, LOW);             // Attach interrupt handler to interrupt #0 (using pin 2) on BOTH the sender and receiver
}

/********************** Main Loop *********************/
void loop() {
  if (role == role_sender)  {                        // Sender role.  Repeatedly send the current time 
    unsigned long time = millis();                   // Take the time, and send it.
    radio.startWrite( &time, sizeof(unsigned long) ,0);
    delay(2000);                                     // Try again soon
  }
  if(role == role_receiver){                        // Receiver does nothing except in IRQ
  }  
}

/********************** Interrupt *********************/
void check_radio(void)                                // Receiver role: Does nothing!  All the work is in IRQ
{
  
  bool tx,fail,rx;
  radio.whatHappened(tx,fail,rx);                     // What happened?
  
  if ( tx ) {                                         // Have we successfully transmitted?
      if ( role == role_sender ){    }
      if ( role == role_receiver ){ }
  }
  
  if ( fail ) {                                       // Have we failed to transmit?
      if ( role == role_sender ){     }
      if ( role == role_receiver ){   }
  }
  
  if ( rx || radio.available()){                      // Did we receive a message?
    
    if ( role == role_sender ) {                      // If we're the sender, we've received an ack payload
        radio.read(&message_count,sizeof(message_count));
    }
    
    if ( role == role_receiver ) {                    // If we're the receiver, we've received a time message
      static unsigned long got_time;                  // Get this payload and dump it
      radio.read( &got_time, sizeof(got_time) );
      radio.writeAckPayload( 1, &message_count, sizeof(message_count) );  // Add an ack packet for the next time around.  This is a simple
      ++message_count;                                // packet counter
    }
  }
}

