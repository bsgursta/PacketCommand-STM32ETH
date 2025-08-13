//
#include "FreeRTOS.h"
#include "FreeRTOS_Sockets.h"
#include "FreeRTOS_IP.h"
#include "TCP_IP.h"

void vInterfaceSocketTask(void * argument) {
//Initialize networkInterface
	NetworkInterface_t* ethInterace = initializeNetworkInterface();

	//Initialize Socket
	Socket_t clientSocket = ConfigTCPClientSocket();

    for(;;) {
        vTaskDelay(1000);
    }

}


