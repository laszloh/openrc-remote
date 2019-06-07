//*********************************************************************************
// State Button Debouncer - Platform Independent
// 
// Revision: 1.6
// 
// Description: Debounces buttons on a single port being used by the application.
// This module takes what the signal on a GPIO port is doing and removes
// the oscillations caused by a bouncing button and tells the application if
// the button(s) are debounced. This algorithm is robust against noise if the 
// amount of allowable debouncing states is adequate. Below is an example of how 
// the button debouncer would work in practice in relation to a single button:
// 
// Real Signal:     0011111111111110000000000000011111111111111111110000000000
// Bouncy Signal:   0010110111111111010000000000001010111011111111110101000000
// Debounced Sig:   0000000000000011000000000000000000000000000001110000000000
// 
// The debouncing algorithm used in this library is based partly on Jack
// Ganssle's state button debouncer example shown in, "A Guide to Debouncing" 
// Rev 4. http://www.ganssle.com/debouncing.htm
// 
// Revisions can be found here:
// https://github.com/tcleg
// 
// Copyright (C) 2014 Trent Cleghorn , <trentoncleghorn@gmail.com>
// Copyright (C) 2019 Laszlo Hegedüs , <laszlo.hegedues@gmail.com>
// 
//                                  MIT License
// 
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
//*********************************************************************************

// 
// Header Guard
// 
#ifndef BUTTON_DEBOUNCER_H
#define BUTTON_DEBOUNCER_H

//*********************************************************************************
// Headers
//*********************************************************************************
#include <stdint.h>

//*********************************************************************************
// Macros and Globals
//*********************************************************************************

/**
 * @brief Defines the depth of the debounce array
 * 
 * NUM_BUTTON_STATES should be greater than 0 and less than or equal to 255.
 * 8 is a roundabout good number of states to have. At a practical minimum, the
 * the number of button states should be at least 3. Each button state consumes
 * 1 byte of RAM per 8 buttons.
 * If this number is large, the Debouncer instantiation will consume 
 * more RAM and take more time to debounce but will reduce the chance of having an 
 * incorrectly debounced button. If this is small, the Debouncer instantiation 
 * will consume less RAM and take less time to debounce but will be more prone 
 * to incorrectly determining button presses and releases.
 */


#define BUTTON_PIN(x)       (1 << x)    /// Return the binary equivalent of a button

//*********************************************************************************
// Class
//*********************************************************************************

/**
 * @brief 
 * 
 * @tparam PortWidth The 
 * @tparam ButtonDepth 
 */
template<typename PortWidth, int ButtonDepth> class Debouncer {
public:

    /**
     * @brief Construct a new Debouncer object
     * Initializes the Debouncer instantiation. 
     * 
     * @param pulledUpButtons Specifies whether pullups or pulldowns are being used 
     *          on the port pins. This is the ORed BUTTON_PIN_* 's that are being
     *          pulled up. Otherwise, the debouncer assumes that the other
     *          buttons are being pulled down. A 0 bit means pulldown.
     *          A 1 bit means pullup. For example, 00010001 means that
     *          button 0 and button 4 are both being pulled up. All other
     *          buttons have pulldowns if they represent buttons.
     */
    Debouncer(bool pulledUpButtons): pullUp(pulledUpButtons), index(0), debouncedState(0x00), changed(0x00) {
        memset(state, 0, sizeof(PortWidth)*ButtonDepth)
    }

    /**
     * @brief 
     * 
     * @param portStatus 
     */
    void ButtonProcess(PortWidth portStatus);

    /**
     * @brief 
     * 
     * @param GPIOButtonPins 
     * @return true
     * @return false 
     */
    bool ButtonPressed(PortWidth GPIOButtonPins);

    /**
     * @brief 
     * 
     * @param GPIOButtonPins 
     * @return true 
     * @return false 
     */
    bool ButtonReleased(PortWidth GPIOButtonPins);

    /**
     * @brief 
     * 
     * @param GPIOButtonPins 
     * @return uint8_t 
     */
    uint8_t ButtonCurrent(PortWidth GPIOButtonPins);

private:
    PortWidth state[ButtonDepth];   /// Holds the states that the particular port is transitioning through
    uint8_t index;                  /// Keeps up with where to store the next port info in the state array
    PortWidth debouncedState;       /// The currently debounced state of the pins
    PortWidth changed;              /// The pins that just changed debounced state
    bool pullUp;                    ///Pullups or pulldowns are being used
};


#endif //BUTTON_DEBOUNCER_H