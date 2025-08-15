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
const uint16_t server_port_num = 30301; //port num for desktop

const TickType_t shutdown_timeout_ticks = pdMS_TO_TICKS(TIMEOUT_MS);

//MAC address -> physical hardware identifier, interface card
static uint8_t macAddress[6];



#define configNUM_NETWORK_INTERFACES 1
#define configNUM_ENDPOINTS 1

//saved in MCU RAM
static NetworkInterface_t xInterfaces[ configNUM_NETWORK_INTERFACES ];
static NetworkEndPoint_t xEndPoints[configNUM_ENDPOINTS];


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
Socket_t ConfigTCPClientSocket(void){
	Socket_t xClientSocket;
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
	//port number: 30301

//send data over TCP
void vSendTCP(char *pcTxBuffer, const size_t xTransmissionLength){
	struct freertos_sockaddr xRemoteAddress;
	BaseType_t xAlreadyTransmitted = 0, xBytesSent = 0;
	TaskHandle_t xRxTask = NULL;
	size_t xLenToSend;

	//Set IP address and port number of the remote socket
    memset( &xRemoteAddress, 0, sizeof(xRemoteAddress) );

    xRemoteAddress.sin_port = FreeRTOS_htons(server_port_num);
    xRemoteAddress.sin_address.ulIP_IPv4 = FreeRTOS_inet_addr_quick( 10, 114, 20, 52 ); //address of server
    xRemoteAddress.sin_family = FREERTOS_AF_INET4; //ipv4 family

    //recheck Socket
    configASSERT( xClientSocket != FREETOS_INVALID_SOCKET);

    //connect to remote socket
    if(FreeRTOS_connect(xSocket, &xRemoteAddress, size(xRemoteAddress) == 0)){

    	//while entire buffer hasn't been sent
    	while(xAlreadyTransmitted < xTotalLengthToSend){

    		//calculate number of bytes still needede to send
    		xLenToSend = xTotalLengthToSend - xAlreadyTransmitted;

    		//get the number of bytes actually sent
    		xBytesSend = FreeRTOS_send(
    					xClientSocket, //socket being sent to
						&(pcBufferToTransmit[xAlreadyTransmitted]), //data being sent
						xLenToSend, //remaining length of data being sent
						0);
    		if (BytesSent <= 0){
    			xAlreadyTransmitted += xBytesSent
;    		}
    		else{
    			printf("Bytes not send");
    		}

    		//HERE MAKE IT SO THAT WE TURN OF WHEN WE RECEIVE the SPECIAL SHUTDOWN PACKET

    	}
    }
}

//shutdown the socket that is passed in
void vshutdownSocket(Socket_t *socket_closing){

	bool shutdown = True;

	//perform graceful shutdown
	FreeRTOS_shutdown(*socket_closing, FREERTOS_SHUT_RDWR);

	//tick count to track timeout time
	TickType_t shutdown_timer = xTaskGetTickCount();

	//wait for indication that shutdown is done
	while( FreeRTOS_recv( *socket_closing, pcBufferToTransmit, xTotalLengthToSend, 0 ) >= 0){

		//check the timeout to see if the task should just break
		if((xTaskGetTickCount() -shutdown_timer >= shutdown_timer_ticks)){
			printf("Shutdown timeout Reached!");
			shutdown = False;
			break;
		}

		vTaskDelay(pdTICKS_TO_MS(1000));
	}

	//check if the shutdown is happening
	if(shutdown){
		FreeRTOS_closesocket(*socket_closing);
		printf("socket shutdown");
	}
	else{
		printf("socket not shutdown");
	}



}


