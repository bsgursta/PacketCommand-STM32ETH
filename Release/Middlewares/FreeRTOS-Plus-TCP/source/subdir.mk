################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_ARP.c \
../Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_BitConfig.c \
../Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DHCP.c \
../Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DHCPv6.c \
../Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DNS.c \
../Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DNS_Cache.c \
../Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DNS_Callback.c \
../Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DNS_Networking.c \
../Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DNS_Parser.c \
../Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_ICMP.c \
../Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IP.c \
../Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IP_Timers.c \
../Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IP_Utils.c \
../Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IPv4.c \
../Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IPv4_Sockets.c \
../Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IPv4_Utils.c \
../Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IPv6.c \
../Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IPv6_Sockets.c \
../Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IPv6_Utils.c \
../Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_ND.c \
../Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_RA.c \
../Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_Routing.c \
../Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_Sockets.c \
../Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_Stream_Buffer.c \
../Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_IP.c \
../Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_IP_IPv4.c \
../Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_IP_IPv6.c \
../Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Reception.c \
../Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_State_Handling.c \
../Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_State_Handling_IPv4.c \
../Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_State_Handling_IPv6.c \
../Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Transmission.c \
../Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Transmission_IPv4.c \
../Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Transmission_IPv6.c \
../Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Utils.c \
../Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Utils_IPv4.c \
../Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Utils_IPv6.c \
../Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_WIN.c \
../Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_Tiny_TCP.c \
../Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_UDP_IP.c \
../Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_UDP_IPv4.c \
../Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_UDP_IPv6.c 

OBJS += \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_ARP.o \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_BitConfig.o \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DHCP.o \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DHCPv6.o \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DNS.o \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DNS_Cache.o \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DNS_Callback.o \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DNS_Networking.o \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DNS_Parser.o \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_ICMP.o \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IP.o \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IP_Timers.o \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IP_Utils.o \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IPv4.o \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IPv4_Sockets.o \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IPv4_Utils.o \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IPv6.o \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IPv6_Sockets.o \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IPv6_Utils.o \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_ND.o \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_RA.o \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_Routing.o \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_Sockets.o \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_Stream_Buffer.o \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_IP.o \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_IP_IPv4.o \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_IP_IPv6.o \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Reception.o \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_State_Handling.o \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_State_Handling_IPv4.o \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_State_Handling_IPv6.o \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Transmission.o \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Transmission_IPv4.o \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Transmission_IPv6.o \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Utils.o \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Utils_IPv4.o \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Utils_IPv6.o \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_WIN.o \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_Tiny_TCP.o \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_UDP_IP.o \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_UDP_IPv4.o \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_UDP_IPv6.o 

C_DEPS += \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_ARP.d \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_BitConfig.d \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DHCP.d \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DHCPv6.d \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DNS.d \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DNS_Cache.d \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DNS_Callback.d \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DNS_Networking.d \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DNS_Parser.d \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_ICMP.d \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IP.d \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IP_Timers.d \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IP_Utils.d \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IPv4.d \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IPv4_Sockets.d \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IPv4_Utils.d \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IPv6.d \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IPv6_Sockets.d \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IPv6_Utils.d \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_ND.d \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_RA.d \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_Routing.d \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_Sockets.d \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_Stream_Buffer.d \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_IP.d \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_IP_IPv4.d \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_IP_IPv6.d \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Reception.d \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_State_Handling.d \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_State_Handling_IPv4.d \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_State_Handling_IPv6.d \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Transmission.d \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Transmission_IPv4.d \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Transmission_IPv6.d \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Utils.d \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Utils_IPv4.d \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Utils_IPv6.d \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_WIN.d \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_Tiny_TCP.d \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_UDP_IP.d \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_UDP_IPv4.d \
./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_UDP_IPv6.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/FreeRTOS-Plus-TCP/source/%.o Middlewares/FreeRTOS-Plus-TCP/source/%.su Middlewares/FreeRTOS-Plus-TCP/source/%.cyclo: ../Middlewares/FreeRTOS-Plus-TCP/source/%.c Middlewares/FreeRTOS-Plus-TCP/source/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-FreeRTOS-2d-Plus-2d-TCP-2f-source

clean-Middlewares-2f-FreeRTOS-2d-Plus-2d-TCP-2f-source:
	-$(RM) ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_ARP.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_ARP.d ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_ARP.o ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_ARP.su ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_BitConfig.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_BitConfig.d ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_BitConfig.o ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_BitConfig.su ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DHCP.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DHCP.d ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DHCP.o ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DHCP.su ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DHCPv6.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DHCPv6.d ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DHCPv6.o ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DHCPv6.su ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DNS.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DNS.d ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DNS.o ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DNS.su ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DNS_Cache.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DNS_Cache.d ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DNS_Cache.o ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DNS_Cache.su ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DNS_Callback.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DNS_Callback.d ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DNS_Callback.o ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DNS_Callback.su ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DNS_Networking.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DNS_Networking.d ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DNS_Networking.o ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DNS_Networking.su ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DNS_Parser.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DNS_Parser.d ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DNS_Parser.o ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_DNS_Parser.su ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_ICMP.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_ICMP.d ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_ICMP.o ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_ICMP.su ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IP.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IP.d ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IP.o ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IP.su ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IP_Timers.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IP_Timers.d ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IP_Timers.o ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IP_Timers.su ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IP_Utils.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IP_Utils.d ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IP_Utils.o ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IP_Utils.su ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IPv4.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IPv4.d ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IPv4.o ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IPv4.su ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IPv4_Sockets.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IPv4_Sockets.d ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IPv4_Sockets.o ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IPv4_Sockets.su ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IPv4_Utils.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IPv4_Utils.d ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IPv4_Utils.o ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IPv4_Utils.su ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IPv6.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IPv6.d ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IPv6.o ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IPv6.su ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IPv6_Sockets.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IPv6_Sockets.d ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IPv6_Sockets.o ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IPv6_Sockets.su ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IPv6_Utils.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IPv6_Utils.d ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IPv6_Utils.o ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_IPv6_Utils.su ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_ND.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_ND.d ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_ND.o ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_ND.su ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_RA.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_RA.d ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_RA.o ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_RA.su ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_Routing.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_Routing.d ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_Routing.o ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_Routing.su ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_Sockets.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_Sockets.d ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_Sockets.o ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_Sockets.su ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_Stream_Buffer.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_Stream_Buffer.d ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_Stream_Buffer.o ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_Stream_Buffer.su ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_IP.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_IP.d ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_IP.o ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_IP.su
	-$(RM) ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_IP_IPv4.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_IP_IPv4.d ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_IP_IPv4.o ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_IP_IPv4.su ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_IP_IPv6.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_IP_IPv6.d ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_IP_IPv6.o ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_IP_IPv6.su ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Reception.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Reception.d ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Reception.o ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Reception.su ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_State_Handling.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_State_Handling.d ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_State_Handling.o ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_State_Handling.su ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_State_Handling_IPv4.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_State_Handling_IPv4.d ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_State_Handling_IPv4.o ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_State_Handling_IPv4.su ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_State_Handling_IPv6.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_State_Handling_IPv6.d ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_State_Handling_IPv6.o ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_State_Handling_IPv6.su ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Transmission.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Transmission.d ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Transmission.o ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Transmission.su ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Transmission_IPv4.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Transmission_IPv4.d ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Transmission_IPv4.o ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Transmission_IPv4.su ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Transmission_IPv6.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Transmission_IPv6.d ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Transmission_IPv6.o ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Transmission_IPv6.su ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Utils.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Utils.d ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Utils.o ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Utils.su ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Utils_IPv4.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Utils_IPv4.d ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Utils_IPv4.o ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Utils_IPv4.su ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Utils_IPv6.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Utils_IPv6.d ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Utils_IPv6.o ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_Utils_IPv6.su ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_WIN.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_WIN.d ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_WIN.o ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_WIN.su ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_Tiny_TCP.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_Tiny_TCP.d ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_Tiny_TCP.o ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_Tiny_TCP.su ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_UDP_IP.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_UDP_IP.d ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_UDP_IP.o ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_UDP_IP.su ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_UDP_IPv4.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_UDP_IPv4.d ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_UDP_IPv4.o ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_UDP_IPv4.su ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_UDP_IPv6.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_UDP_IPv6.d ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_UDP_IPv6.o ./Middlewares/FreeRTOS-Plus-TCP/source/FreeRTOS_UDP_IPv6.su

.PHONY: clean-Middlewares-2f-FreeRTOS-2d-Plus-2d-TCP-2f-source

