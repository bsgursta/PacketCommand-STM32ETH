//HEADER FILE FOR PERSONAL TCP/IP USE

#include "TCP_IP.h"
#include "FreeRTOS_Routing.h"
#include "NetworkInterface.h"
#include "SEGGER_RTT.h"
#include "eth.h"

//use IPV4 because it's for less code and less RAM
	//actual IPV4 address
const uint8_t ipAddress[4] = {10, 114, 20, 200};
const uint8_t netMask[4] = {255, 255, 252, 0};
const uint8_t gatewayAddress[4] = {10, 114, 20, 1};
const uint8_t dnsAddress[4] = {104,222,16,6};

//MAC address -> physical hardware identifier, interface card
static uint8_t macAddress[6];

#define configNUM_NETWORK_INTERFACES 1
#define configNUM_ENDPOINTS 1

//saved in MCU RAM
static NetworkInterface_t xInterfaces[ configNUM_NETWORK_INTERFACES ];
static NetworkEndPoint_t xEndPoints[configNUM_ENDPOINTS];

//client socket
static Socket_t xClientSocket;

//create a network interface, telling the stack what hardware is available
void initializeNetworkInterface(void){

	//set macAddress according to STM32 initialization
	memcpy(macAddress, heth.Init.MACAddr, 6);

	//set EMAC idx to the first 0, and pass in ptr
	pxSTM32_FillInterfaceDescriptor( 0, &( xInterfaces[0]));

	//create endpoint, tells how to configure interface
    FreeRTOS_FillEndPoint( &( xInterfaces[0] ), &(xEndPoints[0]), ipAddress,

    		netMask, gatewayAddress, dnsAddress, macAddress);

    #if ( ipconfigUSE_DHCP != 0 )
    {
        /* End-point 0 wants to use DHCPv4. */
        xEndPoints[ 0 ].bits.bWantDHCP = pdTRUE;
    }

    #endif /* ( ipconfigUSE_DHCP != 0 ) */
	BaseType_t xResult = FreeRTOS_IPInit_Multi();
	if (xResult == pdPASS) {
		SEGGER_RTT_printf(0,"Network stack initialized successfully\n");
	} else {
		SEGGER_RTT_printf(0,"Network initialization failed\n");
	}
}

//tasks to create/config socket -> create socket, set timeout for Rx and Tx and bind socket to port #
void ConfigTCPClientSocket(void){
	socklen_t xSize = sizeof( struct freertos_sockaddr );
	static const TickType_t xTimeOut = pdMS_TO_TICKS( 2000 );

    xClientSocket = FreeRTOS_socket(FREERTOS_AF_INET, //ipv4 family

    								FREERTOS_SOCK_STREAM,  /* SOCK_STREAM for TCP. */

									 FREERTOS_IPPROTO_TCP  ); //TCP protocol

    //check if socket was created
    configASSERT( xClientSocket != FREERTOS_INVALID_SOCKET );

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

//IP address for desktop : 10.114.20.52
	//port number: ???

//send data over TCP
void vSendTCP(char *pcTxBuffer, const size_t xTransmissionLength){
	struct freertos_sockaddr xRemoteAddress;
	BaseType_t xAlreadyTransmitted = 0, xBytesSent = 0;
	TaskHandle_t xRxTask = NULL;
	size_t xLenToSend;

	//Set IP address and port number of the remote socket
    xRemoteAddress.sin_port = FreeRTOS_htons( 1500 );

    xRemoteAddress.sin_address.ulIP_IPv4 = FreeRTOS_inet_addr_quick( 10, 114, 20, 52 );

    xRemoteAddress.sin_family = FREERTOS_AF_INET4;
}


