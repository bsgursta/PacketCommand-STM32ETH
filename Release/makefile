################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/subdir.mk
-include Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1/subdir.mk
-include Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/subdir.mk
-include Middlewares/Third_Party/FreeRTOS/Source/subdir.mk
-include Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/xilinx_ultrascale/subdir.mk
-include Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/pic32mzef/subdir.mk
-include Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/mw300_rd/subdir.mk
-include Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/loopback/subdir.mk
-include Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/linux/subdir.mk
-include Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/libslirp/subdir.mk
-include Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/STM32/Legacy/STM32Hxx/subdir.mk
-include Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/STM32/Legacy/STM32Fxx/subdir.mk
-include Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/STM32/Drivers/H7/subdir.mk
-include Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/STM32/Drivers/H5/subdir.mk
-include Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/STM32/Drivers/F7/subdir.mk
-include Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/STM32/Drivers/F4/subdir.mk
-include Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/STM32/subdir.mk
-include Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/SH2A/subdir.mk
-include Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/RX/subdir.mk
-include Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/NXP1060/subdir.mk
-include Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/MPS4_CS315/CMSIS_Driver/subdir.mk
-include Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/MPS4_CS315/subdir.mk
-include Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/MPS3_AN552/CMSIS_Driver/subdir.mk
-include Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/MPS3_AN552/subdir.mk
-include Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/MPS2_AN385/ether_lan9118/subdir.mk
-include Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/MPS2_AN385/subdir.mk
-include Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/M487/subdir.mk
-include Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/LPC54018/subdir.mk
-include Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/LPC18xx/subdir.mk
-include Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/LPC17xx/subdir.mk
-include Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/DriverSAM/subdir.mk
-include Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/Common/subdir.mk
-include Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/ATSAME5x/subdir.mk
-include Middlewares/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/ATSAM4E/subdir.mk
-include Middlewares/FreeRTOS-Plus-TCP/source/portable/BufferManagement/subdir.mk
-include Middlewares/FreeRTOS-Plus-TCP/source/subdir.mk
-include Drivers/STM32F7xx_HAL_Driver/Src/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := ethernet
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
ethernet.elf \

MAP_FILES += \
ethernet.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
ethernet.list \


# All Target
all: main-build

# Main-build Target
main-build: ethernet.elf secondary-outputs

# Tool invocations
ethernet.elf ethernet.map: $(OBJS) $(USER_OBJS) C:\Users\bryan\STM32CubeIDE\workplace_ethernet\ethernet\STM32F767ZITX_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "ethernet.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m7 -T"C:\Users\bryan\STM32CubeIDE\workplace_ethernet\ethernet\STM32F767ZITX_FLASH.ld" --specs=nosys.specs -Wl,-Map="ethernet.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

ethernet.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "ethernet.list"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) default.size.stdout ethernet.elf ethernet.list ethernet.map
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
