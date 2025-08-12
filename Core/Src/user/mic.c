//Drivers for the adafruit i2c/i2s mic

#include "mic.h"
#include "main.h"
#include "stm32f7xx_hal.h"
#include "stm32f7xx.h"

/*
 * Pins:
 * 		WS -> PB2
 * 		SCK -> PB6
 * 		SDA -> PB9
 */

//get audio from the mic
uint32_t getAudio(){

	return 0xBACF;

}
