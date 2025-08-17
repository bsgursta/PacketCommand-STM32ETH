//
#include "FreeRTOS.h"
#include "FreeRTOS_Sockets.h"
#include "FreeRTOS_IP.h"
#include "TCP_IP.h"

static Socket_t xClientSocket;

//store Mic data, use 8 chars for 64 bits in case
static char TxBuffer[8];

//initailize network interface and create socket, only 1 for my current applications
void vInterfaceSocketTask(void * argument) {
	 //Initialize networkInterface
	 //initializeNetworkInterface();

	//Initialize Socket
	//xClientSocket = ConfigTCPClientSocket();

    for(;;) {
        vTaskDelay(1000);
    }

}

//send data with the socket we have create from the previous task
void vTCPSendDataTask(void * argument){

	for(;;){
		//send data on buffer
		vSendTCP(&TxBuffer, len(TxBuffer), xClientSocket);
	}
}


