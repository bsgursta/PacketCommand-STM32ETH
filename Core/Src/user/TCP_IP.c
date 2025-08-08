//HEADER FILE FOR PERSONAL TCP/IP USE

#include "TCP_IP.h"
#include "FreeRTOS_Routing.h"

//create a network interface, telling the stack what hardware is available
NetworkInterface_t initializeNetworkInterface(void){
	NetworkInterface_t xEthernetInterface;
	//ptr to interface
	NetworkInterface_t *pxInterface;

	//set EMAC idx to the first 0, and pass in ptr
	pxInterface = pxSTM32_FillInterfaceDescriptor(0, &xEthernetInterface);

	//create endpoint, tells how to configure interface
	static NetworkEndPoint_t xLocalEndPoint;
	memset(&xLocalEndPoint, 0, sizeof(xLocalEndPoint));

	//use IPV4 because it's for less code and less RAM
		//actual IPV4 address
		xLocalEndPoint.ipv4_settings.ulIPAddress = FreeRTOS_inet_addr("10.114.20.200");
		xLocalEndPoint.ipv4_settings.ulNetMask = FreeRTOS_inet_addr("10.114.20.200");




}

//ADD Network-Interface and at least 1 end-point
void initailizeTCP(void){


}

