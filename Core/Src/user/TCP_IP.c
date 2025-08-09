//HEADER FILE FOR PERSONAL TCP/IP USE

#include "TCP_IP.h"
#include "FreeRTOS_Routing.h"
#include "NetworkInterface.h"
#include "SEGGER_RTT.h"

//saved in MCU RAM
static NetworkInterface_t xEthernetInterface;

//create a network interface, telling the stack what hardware is available
NetworkInterface_t* initializeNetworkInterface(void){
	//ptr to interface
	NetworkInterface_t *pxInterface;

	//set EMAC idx to the first 0, and pass in ptr
	pxInterface = pxSTM32_FillInterfaceDescriptor(0, &xEthernetInterface);

	//create endpoint, tells how to configure interface

		//allocate space for the endpoint
		static NetworkEndPoint_t *xLocalEndPoint;

	//use IPV4 because it's for less code and less RAM
		//actual IPV4 address
		uint8_t ipAddress[4] = {10, 114, 20, 200};
		uint8_t netMask[4] = {255, 255, 252, 0};
		uint8_t gatewayAddress[4] = {10, 114, 20, 1};
		uint8_t dnsAddress[4] = {104,222,16,6};


	//MAC address -> physical hardware identifier, interface card
		uint8_t macAddress[6] = {0x02, 0x00, 0x00, 0xFA, 0x15, 0x47}; // Example MAC

	//Add network interface and endpoint to FreeRTOS
		FreeRTOS_FillEndPoint(pxInterface,xLocalEndPoint,ipAddress,netMask,gatewayAddress,dnsAddress, macAddress);

	BaseType_t xResult = FreeRTOS_IPInit_Multi();
	if (xResult == pdPASS) {
		SEGGER_RTT_printf(0,"Network stack initialized successfully\n");
	} else {
		SEGGER_RTT_printf(0,"Network initialization failed\n");
	}

	return &xEthernetInterface;
}


