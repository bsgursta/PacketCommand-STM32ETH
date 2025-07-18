//used to program BuyDisplay OLEDs

#include "lcd.h"
#include "main.h"
#include "stm32f7xx_hal.h"

//Reset lcd settings
void lcd_reset(void){
	//pull CS high
	HAL_GPIO_WritePin(GPIOA, GPIO_PIN_3, GPIO_PIN_SET);

	//pull RES pin down
	HAL_GPIO_WritePin(GPIOC, GPIO_PIN_0, GPIO_PIN_RESET);

	HAL_GPIO_WritePin(GPIOC, GPIO_PIN_0, GPIO_PIN_SET);
}

//turn lcd on
HAL_StatusTypeDef  lcd_ON(void){

	//lcd on data
	uint8_t data = 0xAF;

	//pull A0 low (PD7)
	HAL_GPIO_WritePin(GPIOD, GPIO_PIN_7, GPIO_PIN_RESET);

	//pull CS low
	HAL_GPIO_WritePin(GPIOA, GPIO_PIN_3, GPIO_PIN_RESET);

	//transmit the data

	HAL_StatusTypeDef status = HAL_SPI_Transmit(&hspi2, &data, 1, 1000);
	if (status == HAL_OK){

	}
	//pull CS high
	HAL_GPIO_WritePin(GPIOA, GPIO_PIN_3, GPIO_PIN_SET);

	return HAL_OK;
}

HAL_StatusTypeDef  lcd_ALLpixels(void){

	//lcd on data
	uint8_t data = 0xA5;

	//pull A0 low (PD7)
	HAL_GPIO_WritePin(GPIOD, GPIO_PIN_7, GPIO_PIN_RESET);

	//pull CS low
	HAL_GPIO_WritePin(GPIOA, GPIO_PIN_3, GPIO_PIN_RESET);

	//transmit the data

	HAL_StatusTypeDef status = HAL_SPI_Transmit(&hspi2, &data, 1, 1000);
	if (status == HAL_OK){

	}
	//pull CS high
	HAL_GPIO_WritePin(GPIOA, GPIO_PIN_3, GPIO_PIN_SET);

	return HAL_OK;
}

HAL_StatusTypeDef  lcd_RAMpixels(void){

	//lcd on data
	uint8_t data = 0b10100100;

	//pull A0 low (PD7)
	HAL_GPIO_WritePin(GPIOD, GPIO_PIN_7, GPIO_PIN_RESET);

	//pull CS low
	HAL_GPIO_WritePin(GPIOA, GPIO_PIN_3, GPIO_PIN_RESET);

	//transmit the data

	HAL_StatusTypeDef status = HAL_SPI_Transmit(&hspi2, &data, 1, 1000);
	if (status == HAL_OK){

	}
	//pull CS high
	HAL_GPIO_WritePin(GPIOA, GPIO_PIN_3, GPIO_PIN_SET);

	return HAL_OK;
}


//turn lcd OFF
HAL_StatusTypeDef  lcd_OFF(void){

	//lcd off data
	uint8_t data = 0xAD;

	//pull A0 low (PD7)
	HAL_GPIO_WritePin(GPIOD, GPIO_PIN_7, GPIO_PIN_RESET);

	//pull CS low
	HAL_GPIO_WritePin(GPIOA, GPIO_PIN_3, GPIO_PIN_RESET);

	//transmit the data
	if (HAL_SPI_Transmit(&hspi2, &data, 1, 1000) != HAL_OK){
		return HAL_ERROR;
	}

	//pull CS high
	HAL_GPIO_WritePin(GPIOA, GPIO_PIN_3, GPIO_PIN_SET);

	return HAL_OK;
}



//void lcd_write(uint8);

//set the column address for writing pixels
HAL_StatusTypeDef  lcd_setcolumn_address(int column_num){

	return HAL_OK;
}

//set the page address for writing pixels
//page number must be between 0-15
HAL_StatusTypeDef  lcd_setpage_address(int page_num){
	//convert int to uint8
	uint8_t pg_num = page_num;
	//data byte for page address
	uint8_t data = 0xB0 | pg_num;

	//pull A0 low (PD7)
	HAL_GPIO_WritePin(GPIOD, GPIO_PIN_7, GPIO_PIN_RESET);

	//pull CS low
	HAL_GPIO_WritePin(GPIOA, GPIO_PIN_3, GPIO_PIN_RESET);

	//transmit the data
	if (HAL_SPI_Transmit(&hspi2, &data, 1, 10000) != HAL_OK){
		return HAL_ERROR;
	}
	//pull CS high
	HAL_GPIO_WritePin(GPIOA, GPIO_PIN_3, GPIO_PIN_SET);

	return HAL_OK;

}

//initialize SPI protocol with 4 wire setup
//includes SCL,SI,A0, and /CS
//Pins: PB10 -> SCK, PC3 -> SI(MOSI), RES -> PC0, A0(D/C) -> PD7, CS -> PA3
void wire4SPI_init(){
	//pull CS high
	HAL_GPIO_WritePin(GPIOA, GPIO_PIN_3, GPIO_PIN_SET);
}

