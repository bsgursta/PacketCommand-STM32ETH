//HEADER FILE FOR PERSONAL TCP/IP USE

#include "TCP_IP.h"
#include "FreeRTOS_Routing.h"
#include "NetworkInterface.h"
#include "SEGGER_RTT.h"
#include "eth.h"

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
		const uint8_t ipAddress[4] = {10, 114, 20, 200};
		const uint8_t netMask[4] = {255, 255, 252, 0};
		const uint8_t gatewayAddress[4] = {10, 114, 20, 1};
		const uint8_t dnsAddress[4] = {104,222,16,6};


	//MAC address -> physical hardware identifier, interface card
		uint8_t macAddress[6];
		memcpy(macAddress, heth.Init.MACAddr, 6); // get MAC from config file

		//static NetworkInterface_t xInterfaces[1];

		//static NetworkEndPoint_t xEndPoints[4];

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

//tasks to create/config socket -> create socket, set timeout for Rx and Tx and bind socket to port #
Socket_t ConfigTCPClientSocket(void){
	Socket_t xClientSocket;
	socklen_t xSize = sizeof( struct freertos_sockaddr );
	static const TickType_t xTimeOut = pdMS_TO_TICKS( 2000 );

    xClientSocket = FreeRTOS_socket(FREERTOS_AF_INET, //ipv4 family

    								FREERTOS_SOCK_STREAM,  /* SOCK_STREAM for TCP. */

									 FREERTOS_IPPROTO_TCP  ); //TCP protocol

    /* Check the socket was created. */
    if( xClientSocket != FREERTOS_INVALID_SOCKET )
    {
        printf("ERROR: Socket creation failed!\n");

        // Check network status
        printf("Network up: %s\n", FreeRTOS_IsNetworkUp() ? "YES" : "NO");

        // Check heap memory
        printf("Free heap: %u bytes\n", xPortGetFreeHeapSize());

        // Check if we have an IP address

        // Add longer wait for DHCP
        printf("Waiting for DHCP...\n");
        int attempts = 0;
        while(FreeRTOS_GetIPAddress() == 0 && attempts < 30) {
            vTaskDelay(pdMS_TO_TICKS(1000));
            attempts++;
            printf("DHCP attempt %d, IP: %lu\n", attempts, FreeRTOS_GetIPAddress());
        }

        // Stop here for debugging
        while(1);
    }

    //socket was created successfully
    else
    {
        printf("Socket created successfully!\n");


    //set socket options for the given socket
        /* Set send and receive time outs. */

        //set timeout for receiving data
        FreeRTOS_setsockopt( xClientSocket,
                             0,
                             FREERTOS_SO_RCVTIMEO,
                             &xTimeOut,
                             sizeof( xTimeOut ) );

        //set timeout for sending data out of socket
        FreeRTOS_setsockopt( xClientSocket,
                             0,
                             FREERTOS_SO_SNDTIMEO,
                             &xTimeOut,
                             sizeof( xTimeOut ) );

        //bind socket to port num, NULL means FreeRTOS choose port #
        FreeRTOS_bind( xClientSocket, NULL, xSize );

        if (xClientSocket == FREERTOS_INVALID_SOCKET) {
        	SEGGER_RTT_printf(0,"Client socket is invalid!\n");
        } else {

        	SEGGER_RTT_printf(0,"Client socket is valid\n");
        }
    }

        return xClientSocket;

}


