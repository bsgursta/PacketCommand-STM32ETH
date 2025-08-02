################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/MPS2_AN385/ether_lan9118/smsc9220_eth_drv.c 

OBJS += \
./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/MPS2_AN385/ether_lan9118/smsc9220_eth_drv.o 

C_DEPS += \
./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/MPS2_AN385/ether_lan9118/smsc9220_eth_drv.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/MPS2_AN385/ether_lan9118/%.o Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/MPS2_AN385/ether_lan9118/%.su Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/MPS2_AN385/ether_lan9118/%.cyclo: ../Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/MPS2_AN385/ether_lan9118/%.c Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/MPS2_AN385/ether_lan9118/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-FreeRTOS-2d-Plus-2d-TCP-2f-source-2f-portable-2f-NetworkInterface-2f-MPS2_AN385-2f-ether_lan9118

clean-Middlewares-2f-FreeRTOS-2d-Plus-2d-TCP-2f-source-2f-portable-2f-NetworkInterface-2f-MPS2_AN385-2f-ether_lan9118:
	-$(RM) ./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/MPS2_AN385/ether_lan9118/smsc9220_eth_drv.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/MPS2_AN385/ether_lan9118/smsc9220_eth_drv.d ./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/MPS2_AN385/ether_lan9118/smsc9220_eth_drv.o ./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/MPS2_AN385/ether_lan9118/smsc9220_eth_drv.su

.PHONY: clean-Middlewares-2f-FreeRTOS-2d-Plus-2d-TCP-2f-source-2f-portable-2f-NetworkInterface-2f-MPS2_AN385-2f-ether_lan9118

