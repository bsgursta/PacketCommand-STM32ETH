################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/SEGGER_RTT.c \
../Core/Src/SEGGER_RTT_Syscalls_GCC.c \
../Core/Src/SEGGER_RTT_printf.c \
../Core/Src/app_main.c \
../Core/Src/eth.c \
../Core/Src/freertos.c \
../Core/Src/gpio.c \
../Core/Src/lcd.c \
../Core/Src/main.c \
../Core/Src/rng.c \
../Core/Src/spi.c \
../Core/Src/stm32f7xx_hal_msp.c \
../Core/Src/stm32f7xx_hal_timebase_tim.c \
../Core/Src/stm32f7xx_it.c \
../Core/Src/syscalls.c \
../Core/Src/sysmem.c \
../Core/Src/system_stm32f7xx.c \
../Core/Src/usart.c \
../Core/Src/usb_otg.c 

OBJS += \
./Core/Src/SEGGER_RTT.o \
./Core/Src/SEGGER_RTT_Syscalls_GCC.o \
./Core/Src/SEGGER_RTT_printf.o \
./Core/Src/app_main.o \
./Core/Src/eth.o \
./Core/Src/freertos.o \
./Core/Src/gpio.o \
./Core/Src/lcd.o \
./Core/Src/main.o \
./Core/Src/rng.o \
./Core/Src/spi.o \
./Core/Src/stm32f7xx_hal_msp.o \
./Core/Src/stm32f7xx_hal_timebase_tim.o \
./Core/Src/stm32f7xx_it.o \
./Core/Src/syscalls.o \
./Core/Src/sysmem.o \
./Core/Src/system_stm32f7xx.o \
./Core/Src/usart.o \
./Core/Src/usb_otg.o 

C_DEPS += \
./Core/Src/SEGGER_RTT.d \
./Core/Src/SEGGER_RTT_Syscalls_GCC.d \
./Core/Src/SEGGER_RTT_printf.d \
./Core/Src/app_main.d \
./Core/Src/eth.d \
./Core/Src/freertos.d \
./Core/Src/gpio.d \
./Core/Src/lcd.d \
./Core/Src/main.d \
./Core/Src/rng.d \
./Core/Src/spi.d \
./Core/Src/stm32f7xx_hal_msp.d \
./Core/Src/stm32f7xx_hal_timebase_tim.d \
./Core/Src/stm32f7xx_it.d \
./Core/Src/syscalls.d \
./Core/Src/sysmem.d \
./Core/Src/system_stm32f7xx.d \
./Core/Src/usart.d \
./Core/Src/usb_otg.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o Core/Src/%.su Core/Src/%.cyclo: ../Core/Src/%.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I"C:/Users/bryan/git/ethernet/Middlewares/FreeRTOS-Plus-TCP/source/include" -I"C:/Users/bryan/git/ethernet/Middlewares/FreeRTOS-Plus-TCP/source/portable/Compiler/GCC" -I"C:/Users/bryan/git/ethernet/Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/include" -I"C:/Users/bryan/git/ethernet/Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/STM32" -I"C:/Users/bryan/git/ethernet/Core/Config" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src

clean-Core-2f-Src:
	-$(RM) ./Core/Src/SEGGER_RTT.cyclo ./Core/Src/SEGGER_RTT.d ./Core/Src/SEGGER_RTT.o ./Core/Src/SEGGER_RTT.su ./Core/Src/SEGGER_RTT_Syscalls_GCC.cyclo ./Core/Src/SEGGER_RTT_Syscalls_GCC.d ./Core/Src/SEGGER_RTT_Syscalls_GCC.o ./Core/Src/SEGGER_RTT_Syscalls_GCC.su ./Core/Src/SEGGER_RTT_printf.cyclo ./Core/Src/SEGGER_RTT_printf.d ./Core/Src/SEGGER_RTT_printf.o ./Core/Src/SEGGER_RTT_printf.su ./Core/Src/app_main.cyclo ./Core/Src/app_main.d ./Core/Src/app_main.o ./Core/Src/app_main.su ./Core/Src/eth.cyclo ./Core/Src/eth.d ./Core/Src/eth.o ./Core/Src/eth.su ./Core/Src/freertos.cyclo ./Core/Src/freertos.d ./Core/Src/freertos.o ./Core/Src/freertos.su ./Core/Src/gpio.cyclo ./Core/Src/gpio.d ./Core/Src/gpio.o ./Core/Src/gpio.su ./Core/Src/lcd.cyclo ./Core/Src/lcd.d ./Core/Src/lcd.o ./Core/Src/lcd.su ./Core/Src/main.cyclo ./Core/Src/main.d ./Core/Src/main.o ./Core/Src/main.su ./Core/Src/rng.cyclo ./Core/Src/rng.d ./Core/Src/rng.o ./Core/Src/rng.su ./Core/Src/spi.cyclo ./Core/Src/spi.d ./Core/Src/spi.o ./Core/Src/spi.su ./Core/Src/stm32f7xx_hal_msp.cyclo ./Core/Src/stm32f7xx_hal_msp.d ./Core/Src/stm32f7xx_hal_msp.o ./Core/Src/stm32f7xx_hal_msp.su ./Core/Src/stm32f7xx_hal_timebase_tim.cyclo ./Core/Src/stm32f7xx_hal_timebase_tim.d ./Core/Src/stm32f7xx_hal_timebase_tim.o ./Core/Src/stm32f7xx_hal_timebase_tim.su ./Core/Src/stm32f7xx_it.cyclo ./Core/Src/stm32f7xx_it.d ./Core/Src/stm32f7xx_it.o ./Core/Src/stm32f7xx_it.su ./Core/Src/syscalls.cyclo ./Core/Src/syscalls.d ./Core/Src/syscalls.o ./Core/Src/syscalls.su ./Core/Src/sysmem.cyclo ./Core/Src/sysmem.d ./Core/Src/sysmem.o ./Core/Src/sysmem.su ./Core/Src/system_stm32f7xx.cyclo ./Core/Src/system_stm32f7xx.d ./Core/Src/system_stm32f7xx.o ./Core/Src/system_stm32f7xx.su ./Core/Src/usart.cyclo ./Core/Src/usart.d ./Core/Src/usart.o ./Core/Src/usart.su ./Core/Src/usb_otg.cyclo ./Core/Src/usb_otg.d ./Core/Src/usb_otg.o ./Core/Src/usb_otg.su

.PHONY: clean-Core-2f-Src

