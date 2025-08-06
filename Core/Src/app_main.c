#include "app_main.h"
#include "main.h"
#include "lcd.h"


void AppMain(void){

	//FreeRTOS_IPInit();

	//test LCD
	lcd_4SPI_init();
	setPageaddressing();

	//THIS WORKS, COLUMN SEEMS TO NOT
	lcd_setpage_address(1);
	lcd_setcolumn_address(32);

	while(1){

		onLCD();
		clearLCD();
		lcd_printHELLO();
		offLCD();
	}

}
