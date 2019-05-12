################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/Projects/STMicro/printer_motor/printer_motor/Src/system_stm32f4xx.c 

OBJS += \
./Drivers/CMSIS/system_stm32f4xx.o 

C_DEPS += \
./Drivers/CMSIS/system_stm32f4xx.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/system_stm32f4xx.o: D:/Projects/STMicro/printer_motor/printer_motor/Src/system_stm32f4xx.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F429xx -I"D:/Projects/STMicro/printer_motor/printer_motor/Inc" -I"D:/Projects/STMicro/printer_motor/printer_motor/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Projects/STMicro/printer_motor/printer_motor/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Projects/STMicro/printer_motor/printer_motor/Drivers/CMSIS/Include" -I"D:/Projects/STMicro/printer_motor/printer_motor/Drivers/STM32F4xx_HAL_Driver" -I"D:/Projects/STMicro/printer_motor/printer_motor/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Projects/STMicro/printer_motor/printer_motor/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"D:/Projects/STMicro/printer_motor/printer_motor/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


