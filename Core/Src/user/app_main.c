#include "app_main.h"
#include "main.h"
#include "lcd.h"
#include "FreeRTOS.h"
#include "FreeRTOS_IP.h"
#include "SEGGER_RTT.h"
#include "TCP_IP.h"
#include "proj_tasks.h"
#include "mic.h"


void AppMain(void){

	//Task to create network interface and socket
	xTaskCreate(vInterfaceSocketTask, "Task Initialize Interface & Socket",
			2048, //use of stack for task
			NULL,
			40,
			NULL );



	//test LCD

	//configureI2S();
	//getAudio();
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
