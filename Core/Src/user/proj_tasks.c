//
#include "FreeRTOS.h"
#include "FreeRTOS_Sockets.h"
#include "FreeRTOS_IP.h"
#include "TCP_IP.h"

void vInterfaceSocketTask(void * argument) {
	 //Initialize networkInterface
	 initializeNetworkInterface();

	//Initialize Socket
	ConfigTCPClientSocket();

    for(;;) {
        vTaskDelay(1000);
    }

}


