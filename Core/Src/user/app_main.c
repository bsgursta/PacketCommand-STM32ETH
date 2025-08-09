#include "app_main.h"
#include "main.h"
#include "lcd.h"
#include "FreeRTOS_IP.h"
#include "SEGGER_RTT.h"
#include "TCP_IP.h"


void AppMain(void){

	//test LCD
	lcd_4SPI_init();
	setPageaddressing();

	//THIS WORKS, COLUMN SEEMS TO NOT
	lcd_setpage_address(1);
	lcd_setcolumn_address(32);

	while(1){
		SEGGER_RTT_printf(0,"HELLO WORLD!\r\n");
		HAL_Delay(5000);
		/*onLCD();
		clearLCD();
		lcd_printHELLO();
		offLCD();*/
	}

}
