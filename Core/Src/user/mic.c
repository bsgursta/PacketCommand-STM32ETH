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

	    // Clear any previous errors
	    __HAL_I2S_CLEAR_OVRFLAG(&hi2s3);
	    __HAL_I2S_CLEAR_UDRFLAG(&hi2s3);
	    hi2s3.ErrorCode = HAL_I2S_ERROR_NONE;

	    // Debug current configuration
	    SEGGER_RTT_printf(0, "I2S CFGR: 0x%08X\r\n", hi2s3.Instance->I2SCFGR);
	    SEGGER_RTT_printf(0, "I2S SR: 0x%08X\r\n", hi2s3.Instance->SR);

	    // Make sure I2S is enabled
	    if (!(hi2s3.Instance->I2SCFGR & SPI_I2SCFGR_I2SE)) {
	        __HAL_I2S_ENABLE(&hi2s3);
	        // Give microphone time to stabilize after clock starts
	        HAL_Delay(50);
	    }

	    // For 32-bit frame: pass buffer as uint16_t* but with size for 32-bit data
	    // Each 32-bit sample = 2 uint16_t elements in the HAL function
	    status = HAL_I2S_Receive(&hi2s3, (uint16_t*)i2sRxBuffer, 2, timeout_I2S);

	    if (status != HAL_OK) {
	        SEGGER_RTT_printf(0, "I2S Receive Error: %d\r\n", status);
	        SEGGER_RTT_printf(0, "I2S State: %d\r\n", hi2s3.State);
	        SEGGER_RTT_printf(0, "I2S Error Code: 0x%08X\r\n", hi2s3.ErrorCode);
	        return 0xDEAD;
	    }

	    // The ICS43434 sends 24-bit data in 32-bit frame
	    // The 24-bit audio data is usually in the upper 24 bits
	    uint32_t rawSample = i2sRxBuffer[0];

	    SEGGER_RTT_printf(0, "Raw 32-bit sample: 0x%08X\r\n", rawSample);

	    // Extract 24-bit audio data (usually upper 24 bits, lower 8 bits are padding)
	    int32_t audioData = (int32_t)(rawSample >> 8); // Shift right 8 bits to get 24-bit data
	    // Sign extend if needed (24-bit to 32-bit)
	    if (audioData & 0x800000) {
	        audioData |= 0xFF000000; // Sign extend negative numbers
	    }

	    SEGGER_RTT_printf(0, "24-bit audio data: 0x%06X (%d)\r\n", audioData & 0xFFFFFF, audioData);

	    return 0xBACF;
	}
