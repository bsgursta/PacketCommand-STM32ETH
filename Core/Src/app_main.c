#include "app_main.h"
#include "main.h"
#include "lcd.h"

void AppMain(void){

	//test LCD
	lcd_4SPI_init();
	setPageaddressing();
	lcd_setpage_address(0);
	lcd_setcolumn_address(0);

	while(1){
		/*
		lcd_ALLpixels();
		lcd_ON();
		lcd_OFF();

		lcd_RAMpixels();
		lcd_ON();
		lcd_OFF();
		*/
		for(int i = 0; i < 8; i++){
			lcd_writeRAM(0xFF);
		}
		lcd_ON();
		lcd_OFF();
	}

}
