//used to program BuyDisplay OLEDs

#include "lcd.h"
#include "stm32f7xx_hal.h"

//Reset lcd settings
void lcd_reset(void){

}

//initialize SPI protocol with 4 wire setup
//includes SCL,SI,A0, and /CS
//Pins: PB10 -> SCK, PC3 -> SI(MOSI), RES -> PC0, A0(D/C) -> PD7, CS -> PA3
void wire4SPI_init(){

}

