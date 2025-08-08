//Ensure constants are configured for the TCP/IP FreeRTOS application
#ifndef FREERTOS_IP_CONFIG_H
#define FREERTOS_IP_CONFIG_H

#include "stm32f7xx_hal.h"

//Link to macros: https://www.freertos.org/Documentation/03-Libraries/02-FreeRTOS-plus/02-FreeRTOS-plus-TCP/06-Configuration#ipconfigevent_queue_length


//Constants Affecting the TCP/IP Stack Task Execution Behaviour
	//queue size of events from app tasks to IP stack
	#define ipconfigEVENT_QUEUE_LENGTH 65
	//priority of IP stack tasks
	#define ipconfigIP_TASK_PRIORITY (configMAX_PRIORITIES - 2)
	//size of stack allocated to Plus-TCP task
	#define ipconfigIP_TASK_STACK_SIZE_WORDS 1024
	//use FrameHook callback to process unknown frame, NEEDS SETUP
	#define ipconfigPROCESS_CUSTOM_ETHERNET_FRAMES 0
	//use callback for when network disconnects/connects
	#define ipconfigUSE_NETWORK_EVENT_HOOK 1

//Debug, Trace and Logging Settings See also TCP/IP Trace Macros.
	//can use function to check the amount of free space that has existed to potentially add more
	#define ipconfigCHECK_IP_QUEUE_SPACE 1
	//print TCP/IP stack debugging messages
	#define ipconfigHAS_DEBUG_PRINTF 1
	#define ipconfigHAS_PRINTF 1
	//includes CLI for tracing purposes
	#define ipconfigINCLUDE_EXAMPLE_FREERTOS_PLUS_TRACE_CALLS()
	//for bufferv1, not need for v2
	#define ipconfigTCP_IP_SANITY()
	//can be set to log specific ports
	#define ipconfigTCP_MAY_LOG_PORT(x) 0
	//macro for watchdog functionality
	#define ipconfigWATCHDOG_TIMER()
	//enables stack to do statistics in Routing.c
	#define ipconfigHAS_ROUTING_STATISTICS 1

//Hardware and Driver Specific Settings
	//Adds size to the buffere requested by the application writer
	#define ipconfigBUFFER_PADDING 8
	//offsets the pointer to the start of the Ethernet frame
	#define ipconfigPACKET_FILLER_SIZE 2
	//Big Endian or Little Endian
	#define ipconfigBYTE_ORDER pdFREERTOS_BIG_ENDIAN
	//set if the receiver should be discarding packets because of checksum or not
	#define ipconfigDRIVER_INCLUDED_RX_IP_CHECKSUM 1
	//same thing as above except for Tx
	#define ipconfigDRIVER_INCLUDED_TX_IP_CHECKSUM 1
	//discard invalid MAC address frames
	#define ipconfigETHERNET_DRIVER_FILTERS_FRAME_TYPES 1
	//EXPERT USE
	#define ipconfigETHERNET_DRIVER_FILTERS_PACKETS 0
	//Determine packet minimum length
	#define ipconfigETHERNET_MINIMUM_PACKET_BYTES 60
	//Ethernet frames not in format 2 are discarded
	#define ipconfigFILTER_OUT_NON_ETHERNET_II_FRAMES 1
	//Maximum number of bytes a frame can contain
	#define ipconfigNETWORK_MTU 1500
	//defines total number of network buffers for TCP/IP
	#define ipconfigNUM_NETWORK_BUFFER_DESCRIPTORS 60
	//EXPERT USE
	#define ipconfigUSE_LINKED_RX_MESSAGES 0
	//EXPERT USE
	#define ipconfigZERO_COPY_RX_DRIVER 1
	//EXPERT USE
	#define ipconfigZERO_COPY_TX_DRIVER 1
	//receive eNetworkDown notification
	#define ipconfigSUPPORT_NETWORK_DOWN_EVENT 1

//TCP Specific Constants
	//Resets will not be sent to Tx if the packet has a bad/unknown destination
    #define    ipconfigIGNORE_UNKNOWN_PACKETS 1
	//socket will be marked close if there is not status change for a period of time
    #define    ipconfigTCP_HANG_PROTECTION 1
	//time required for inactive socket to be marked closed
    #define    ipconfigTCP_HANG_PROTECTION_TIME 60
	//FreeRTOS will send messages periodically to keep sockets alive
    #define    ipconfigTCP_KEEP_ALIVE 1
	//interval in seconds to send keep alive messages
    #define    ipconfigTCP_KEEP_ALIVE_INTERVAL 30
	//sets the max segment size for TCP packets
    #define    ipconfigTCP_MSS 1460

	//Buffer size for RX/TX
    #define    ipconfigTCP_RX_BUFFER_LENGTH (3 * ipconfigTCP_MSS)
	#define    ipconfigTCP_TX_BUFFER_LENGTH (3 * ipconfigTCP_MSS)
	//TTL for outgoing packets
    #define    ipconfigTCP_TIME_TO_LIVE 64
	//sets number of descriptors
    #define    ipconfigTCP_WIN_SEG_COUNT 64
	//set for TCP or UDP
    #define    ipconfigUSE_TCP 1
	//DEPRECIATED!!!
    ///#define    ipconfigUSE_TCP_TIMESTAMPS
	//set to include sliding window behavior in TCP sockets
    #define    ipconfigUSE_TCP_WIN 1
	//set round trip minimum value
    #define    ipconfigTCP_SRTT_MINIMUM_VALUE_MS 1000

//UDP Specific Constants
	//num of packets that can exist in a UDP socket queue
    #define    ipconfigUDP_MAX_RX_PACKETS 10
	//time a send request can stay in the blocked state
    #define    ipconfigUDP_MAX_SEND_BLOCK_TIME_TICKS pdMS_TO_TICKS(1000)
	//receive checksums with 0
    #define    ipconfigUDP_PASS_ZERO_CHECKSUM_PACKETS 1
	//Time to live for UDP packets
    #define    ipconfigUDP_TIME_TO_LIVE 64

//Other Constants Effecting Socket Behaviour
	//if a socket isn't port bound, than it will automatically be assigned before sending, instead of just aborting
    #define    ipconfigALLOW_SOCKET_SEND_WITHOUT_BIND 1
	//accesses certain functions
    #define    ipconfigINCLUDE_FULL_INET_ADDR 1
	//socket select functions are active
    #define    ipconfigSELECT_USES_NOTIFY 1
	//sets block time for sockets to wait for data to be read
    #define    ipconfigSOCK_DEFAULT_RECEIVE_BLOCK_TIME pdMS_TO_TICKS(5000)
	//same as above but for ending
    #define    ipconfigSOCK_DEFAULT_SEND_BLOCK_TIME pdMS_TO_TICKS(5000)
	//use semaphore for socket manipulation in a task
    #define    ipconfigSOCKET_HAS_USER_SEMAPHORE 1
	//function to call after every event
    #define    ipconfigSOCKET_HAS_USER_WAKE_CALLBACK 1
	//include support for select() function
    #define    ipconfigSUPPORT_SELECT_FUNCTION 1
	//include support for signalsocket() API function
    #define    ipconfigSUPPORT_SIGNALS 0
    #define    ipconfigUSE_CALLBACKS 1

//Constants Affecting the ARP Behaviour
    #define    ipconfigARP_CACHE_ENTRIES 10
    #define    ipconfigARP_STORES_REMOTE_ADDRESSES 1
    #define    ipconfigARP_USE_CLASH_DETECTION 1
    #define    ipconfigMAX_ARP_AGE 150
    #define    ipconfigMAX_ARP_RETRANSMISSIONS 0
    #define    ipconfigUSE_ARP_REMOVE_ENTRY 1
    #define    ipconfigUSE_ARP_REVERSED_LOOKUP 0

//Constants Affecting DHCP and Name Service Behaviour
    #define    ipconfigDHCP_FALL_BACK_AUTO_IP 1
    #define    ipconfigDHCP_REGISTER_HOSTNAME 0
    #define    ipconfigDNS_CACHE_ADDRESSES_PER_ENTRY 1
    #define    ipconfigDNS_CACHE_ENTRIES 10
    #define    ipconfigDNS_CACHE_NAME_LENGTH 30
    #define    ipconfigDNS_REQUEST_ATTEMPTS 500
    #define    ipconfigDNS_USE_CALLBACKS 1
    #define    ipconfigMAXIMUM_DISCOVER_TX_PERIOD 1
    #define    ipconfigUSE_DHCP 1
    #define    ipconfigUSE_DHCPv6 0
    #define    ipconfigUSE_DHCP_HOOK 0
    #define    ipconfigUSE_DNS 1
    #define    ipconfigUSE_DNS_CACHE 1
    #define    ipconfigUSE_LLMNR 0
    #define    ipconfigUSE_NBNS 0
    #define    ipconfigUSE_MDNS 0

//Constants Affecting IP and ICMP Behaviour
    #define    ipconfigUSE_IPv4 1
    #define    ipconfigUSE_IPv6 0
    #define    ipconfigFORCE_IP_DONT_FRAGMENT 0
    #define    ipconfigICMP_TIME_TO_LIVE 64
    #define    ipconfigIP_PASS_PACKETS_WITH_IP_OPTIONS 1
    #define    ipconfigREPLY_TO_INCOMING_PINGS 1
    #define    ipconfigSUPPORT_OUTGOING_PINGS 1

//Constants Affecting ND Behaviour
    #define    ipconfigND_CACHE_ENTRIES 10

//Constants Affecting RA Behaviour
    #define    ipconfigUSE_RA 1
    #define    ipconfigRA_SEARCH_COUNT 4
	#define	   ipconfigRA_IP_TEST_COUNT 3

//Constants Providing Target Support
	//DEPRECIATED!!!
    //#define    ipconfigHAS_INLINE_FUNCTIONS
    //#define    ipconfigRAND32
	#define ipconfigIS_VALID_PROG_ADDRESS( x ) 1
    #define    ipconfigPORT_SUPPRESS_WARNING 1

//Backward Compatibility
	//set for either 1 or multiple ip devices
    #define    ipconfigCOMPATIBLE_WITH_SINGLE 1
    #define    ipconfigIPv4_BACKWARD_COMPATIBLE 0

//Extra
	#define ipconfigUSE_LOOPBACK    1


#endif /* FREERTOS_IP_CONFIG_H */
