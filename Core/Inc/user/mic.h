#ifndef INC_USER_MIC_H_
#define INC_USER_MIC_H_

#include "stm32f7xx_hal.h"
#include "stm32f767xx.h"


#define SPI1_I2SCFGR (*(volatile uint32_t *)(SPI1_BASE + 0x1C))

#define NUM_SAMPLES 10


uint32_t getAudio(void);
HAL_StatusTypeDef configureI2S(void);


#endif /* INC_USER_MIC_H_ */
