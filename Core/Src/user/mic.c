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
 * 		WS -> PA4 (ORANGE)
 * 		SCK -> PC10 (BROWN)
 * 		SDA -> PC12 (WHITE)
 */


//get audio from the mic
uint32_t getAudio(){
	HAL_StatusTypeDef status;
	uint32_t timeout_I2S = 5000;

	// For 24-bit data in 32-bit frame, each sample is one 32-bit word
	uint32_t i2sRxBuffer[1]; // Single 32-bit sample

	//pass buffer as uint16_t* but with size for 32-bit data
	status = HAL_I2S_Receive(&hi2s3, (uint16_t*)i2sRxBuffer, 2, timeout_I2S);

	printf("I2S Mode: 0x%08lX\n", hi2s3.Instance->I2SCFGR & SPI_I2SCFGR_I2SCFG);

	//I2S state is 1, correct

	if(status == HAL_OK){
		SEGGER_RTT_printf(0,"works\n");
	}
	if (status != HAL_OK) {
	    if (status == HAL_BUSY) {
			SEGGER_RTT_printf(0,"busy error\n");
	    } else if (status == HAL_TIMEOUT) {
			SEGGER_RTT_printf(0,"timeout error\n");
	    } else if (status == HAL_ERROR) {
			SEGGER_RTT_printf(0,"reg error\n");
	    }
	}
	return 0xDEAD;
}
