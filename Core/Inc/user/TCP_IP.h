/* HEADER FILE FOR TCP/IP USAGE */

#ifndef TCP_IP_H
#define TCP_IP_H

/* Include any necessary headers */
#include "FreeRTOS.h"
#include "task.h"
#include "FreeRTOS_Routing.h"


#ifdef __cplusplus
extern "C" {
#endif

// Function prototypes
void initializeNetworkInterface(void);
Socket_t ConfigTCPClientSocket(void);
//void vSendTCP(char *pcTxBuffer, const size_t xTransmissionLength, Socket_t xClientSocket);
void vshutdownSocket(Socket_t socket_to_close);

// Type definitions
typedef struct {
    int value;
} MyStruct_t;

// Macros/defines
#define MY_CONSTANT 42

#ifdef __cplusplus
}
#endif

#endif
