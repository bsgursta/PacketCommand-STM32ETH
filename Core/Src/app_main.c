#include "app_main.h"
#include "main.h"
#include "lcd.h"

void AppMain(void){

	//test LCD
	lcd_4SPI_init();
	setPageaddressing();
	//THIS WORKS, COLUMN SEEMS TO NOT
	lcd_setpage_address(1);
	lcd_setcolumn_address(0);
	for(int i = 0; i < 32; i++){
		lcd_writeRAM(0x00);
		HAL_Delay(100);
	}

	while(1){

		//lcd_ALLpixels();
		lcd_setcolumn_address(0);
		lcd_ON();
		for(int i = 0; i < 16; i++){
			lcd_writeRAM(0x00);
		}

		lcd_OFF();
	}

}
