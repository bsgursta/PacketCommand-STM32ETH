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
void initailizeTCP(void);
NetworkInterface_t initializeNetworkInterface(void);

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
