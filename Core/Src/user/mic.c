//Drivers for the adafruit i2c/i2s mic

#include "mic.h"
#include "main.h"
#include "stm32f767xx.h"
#include "SEGGER_RTT.h"

//configure the I2S mode for SPI1
HAL_StatusTypeDef configureI2S(void){

	uint16_t reg_val = SPI1_I2SCFGR;

	//set: I2SMOD,I2SCFG, CKPOL,DATLEN, I2SSTD
	reg_val |= 0x0B0C;

	SPI1_I2SCFGR = reg_val;

	//enable I2S last

	SPI1_I2SCFGR |= 0x400;

	return HAL_OK;

}

/*
 * Pins:
 * 		WS -> PB2 (ORANGE)
 * 		SCK -> PB6 (BROWN)
 * 		SDA -> PB9 (WHITE)
 */


//get audio from the mic
uint32_t getAudio(){
	//10 samples
	uint32_t i2sRxBuffer[10];

	HAL_StatusTypeDef status;

	// For 32-bit data, pass the buffer as uint16_t* and double the size
	status = HAL_I2S_Receive(&hi2s1, (uint16_t *)i2sRxBuffer, NUM_SAMPLES * 2, HAL_MAX_DELAY);

	if (status != HAL_OK)
	{
	    // Handle errors (timeout, overrun, etc.)
	}

	for (int i = 0; i < NUM_SAMPLES; i++)
	{
	    uint32_t sample = i2sRxBuffer[i];
	    SEGGER_RTT_printf(0, "Sample %d: 0x%08X\r\n", i, sample);
	}

	return 0xBACF;

}
