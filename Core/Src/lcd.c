//used to program BuyDisplay OLEDs

#include "lcd.h"
#include "stm32f7xx_hal.h"

//Reset lcd settings
void lcd_reset(void){
	//pull RES pin down
	HAL_GPIO_WritePin(GPIOC, GPIO_PIN_0, GPIO_PIN_RESET);
}

void lcd_write(uint8)

//set the column address for writing pixels
void lcd_setcolumn_address(int column_num){

}

//set the page address for writing pixels
//page number must be between 0-15
void lcd_setpage_address(int page_num){
	//convert int to uint8
	uint8_t pg_num = page_num;
	//data byte for page address
	uint8_t data = 0xB0 | pg_num;

	//pull A0 low (PD7)
	HAL_GPIO_WritePin(GPIOD, GPIO_PIN_7, GPIO_PIN_RESET);



}

//initialize SPI protocol with 4 wire setup
//includes SCL,SI,A0, and /CS
//Pins: PB10 -> SCK, PC3 -> SI(MOSI), RES -> PC0, A0(D/C) -> PD7, CS -> PA3
void wire4SPI_init(){

}

