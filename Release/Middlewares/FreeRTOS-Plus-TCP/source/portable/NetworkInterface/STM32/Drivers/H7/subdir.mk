################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/STM32/Drivers/H7/stm32h7xx_hal_eth.c \
../Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/STM32/Drivers/H7/stm32h7xx_hal_eth_ex.c 

OBJS += \
./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/STM32/Drivers/H7/stm32h7xx_hal_eth.o \
./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/STM32/Drivers/H7/stm32h7xx_hal_eth_ex.o 

C_DEPS += \
./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/STM32/Drivers/H7/stm32h7xx_hal_eth.d \
./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/STM32/Drivers/H7/stm32h7xx_hal_eth_ex.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/STM32/Drivers/H7/%.o Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/STM32/Drivers/H7/%.su Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/STM32/Drivers/H7/%.cyclo: ../Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/STM32/Drivers/H7/%.c Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/STM32/Drivers/H7/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-FreeRTOS-2d-Plus-2d-TCP-2f-source-2f-portable-2f-NetworkInterface-2f-STM32-2f-Drivers-2f-H7

clean-Middlewares-2f-FreeRTOS-2d-Plus-2d-TCP-2f-source-2f-portable-2f-NetworkInterface-2f-STM32-2f-Drivers-2f-H7:
	-$(RM) ./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/STM32/Drivers/H7/stm32h7xx_hal_eth.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/STM32/Drivers/H7/stm32h7xx_hal_eth.d ./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/STM32/Drivers/H7/stm32h7xx_hal_eth.o ./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/STM32/Drivers/H7/stm32h7xx_hal_eth.su ./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/STM32/Drivers/H7/stm32h7xx_hal_eth_ex.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/STM32/Drivers/H7/stm32h7xx_hal_eth_ex.d ./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/STM32/Drivers/H7/stm32h7xx_hal_eth_ex.o ./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/STM32/Drivers/H7/stm32h7xx_hal_eth_ex.su

.PHONY: clean-Middlewares-2f-FreeRTOS-2d-Plus-2d-TCP-2f-source-2f-portable-2f-NetworkInterface-2f-STM32-2f-Drivers-2f-H7

