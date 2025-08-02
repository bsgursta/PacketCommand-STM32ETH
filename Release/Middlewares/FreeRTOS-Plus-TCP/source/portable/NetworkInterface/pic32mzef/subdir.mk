################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/pic32mzef/BufferAllocation_2.c \
../Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/pic32mzef/NetworkInterface_eth.c \
../Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/pic32mzef/NetworkInterface_wifi.c 

OBJS += \
./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/pic32mzef/BufferAllocation_2.o \
./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/pic32mzef/NetworkInterface_eth.o \
./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/pic32mzef/NetworkInterface_wifi.o 

C_DEPS += \
./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/pic32mzef/BufferAllocation_2.d \
./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/pic32mzef/NetworkInterface_eth.d \
./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/pic32mzef/NetworkInterface_wifi.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/pic32mzef/%.o Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/pic32mzef/%.su Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/pic32mzef/%.cyclo: ../Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/pic32mzef/%.c Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/pic32mzef/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-FreeRTOS-2d-Plus-2d-TCP-2f-source-2f-portable-2f-NetworkInterface-2f-pic32mzef

clean-Middlewares-2f-FreeRTOS-2d-Plus-2d-TCP-2f-source-2f-portable-2f-NetworkInterface-2f-pic32mzef:
	-$(RM) ./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/pic32mzef/BufferAllocation_2.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/pic32mzef/BufferAllocation_2.d ./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/pic32mzef/BufferAllocation_2.o ./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/pic32mzef/BufferAllocation_2.su ./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/pic32mzef/NetworkInterface_eth.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/pic32mzef/NetworkInterface_eth.d ./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/pic32mzef/NetworkInterface_eth.o ./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/pic32mzef/NetworkInterface_eth.su ./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/pic32mzef/NetworkInterface_wifi.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/pic32mzef/NetworkInterface_wifi.d ./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/pic32mzef/NetworkInterface_wifi.o ./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/pic32mzef/NetworkInterface_wifi.su

.PHONY: clean-Middlewares-2f-FreeRTOS-2d-Plus-2d-TCP-2f-source-2f-portable-2f-NetworkInterface-2f-pic32mzef

