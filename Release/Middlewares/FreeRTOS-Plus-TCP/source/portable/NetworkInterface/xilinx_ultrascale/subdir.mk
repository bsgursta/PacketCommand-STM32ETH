################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/xilinx_ultrascale/NetworkInterface.c \
../Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/xilinx_ultrascale/uncached_memory.c \
../Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/xilinx_ultrascale/x_emacpsif_dma.c \
../Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/xilinx_ultrascale/x_emacpsif_hw.c \
../Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/xilinx_ultrascale/x_emacpsif_physpeed.c 

OBJS += \
./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/xilinx_ultrascale/NetworkInterface.o \
./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/xilinx_ultrascale/uncached_memory.o \
./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/xilinx_ultrascale/x_emacpsif_dma.o \
./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/xilinx_ultrascale/x_emacpsif_hw.o \
./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/xilinx_ultrascale/x_emacpsif_physpeed.o 

C_DEPS += \
./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/xilinx_ultrascale/NetworkInterface.d \
./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/xilinx_ultrascale/uncached_memory.d \
./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/xilinx_ultrascale/x_emacpsif_dma.d \
./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/xilinx_ultrascale/x_emacpsif_hw.d \
./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/xilinx_ultrascale/x_emacpsif_physpeed.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/xilinx_ultrascale/%.o Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/xilinx_ultrascale/%.su Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/xilinx_ultrascale/%.cyclo: ../Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/xilinx_ultrascale/%.c Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/xilinx_ultrascale/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-FreeRTOS-2d-Plus-2d-TCP-2f-source-2f-portable-2f-NetworkInterface-2f-xilinx_ultrascale

clean-Middlewares-2f-FreeRTOS-2d-Plus-2d-TCP-2f-source-2f-portable-2f-NetworkInterface-2f-xilinx_ultrascale:
	-$(RM) ./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/xilinx_ultrascale/NetworkInterface.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/xilinx_ultrascale/NetworkInterface.d ./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/xilinx_ultrascale/NetworkInterface.o ./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/xilinx_ultrascale/NetworkInterface.su ./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/xilinx_ultrascale/uncached_memory.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/xilinx_ultrascale/uncached_memory.d ./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/xilinx_ultrascale/uncached_memory.o ./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/xilinx_ultrascale/uncached_memory.su ./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/xilinx_ultrascale/x_emacpsif_dma.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/xilinx_ultrascale/x_emacpsif_dma.d ./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/xilinx_ultrascale/x_emacpsif_dma.o ./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/xilinx_ultrascale/x_emacpsif_dma.su ./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/xilinx_ultrascale/x_emacpsif_hw.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/xilinx_ultrascale/x_emacpsif_hw.d ./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/xilinx_ultrascale/x_emacpsif_hw.o ./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/xilinx_ultrascale/x_emacpsif_hw.su ./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/xilinx_ultrascale/x_emacpsif_physpeed.cyclo ./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/xilinx_ultrascale/x_emacpsif_physpeed.d ./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/xilinx_ultrascale/x_emacpsif_physpeed.o ./Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/xilinx_ultrascale/x_emacpsif_physpeed.su

.PHONY: clean-Middlewares-2f-FreeRTOS-2d-Plus-2d-TCP-2f-source-2f-portable-2f-NetworkInterface-2f-xilinx_ultrascale

