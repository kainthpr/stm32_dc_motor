################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/Projects/STMicro/printer_motor/printer_motor/Src/main.c \
D:/Projects/STMicro/printer_motor/printer_motor/Src/stm32f4xx_hal_msp.c \
D:/Projects/STMicro/printer_motor/printer_motor/Src/stm32f4xx_it.c \
D:/Projects/STMicro/printer_motor/printer_motor/Src/usb_device.c \
D:/Projects/STMicro/printer_motor/printer_motor/Src/usbd_cdc_if.c \
D:/Projects/STMicro/printer_motor/printer_motor/Src/usbd_conf.c \
D:/Projects/STMicro/printer_motor/printer_motor/Src/usbd_desc.c 

OBJS += \
./Application/User/main.o \
./Application/User/stm32f4xx_hal_msp.o \
./Application/User/stm32f4xx_it.o \
./Application/User/usb_device.o \
./Application/User/usbd_cdc_if.o \
./Application/User/usbd_conf.o \
./Application/User/usbd_desc.o 

C_DEPS += \
./Application/User/main.d \
./Application/User/stm32f4xx_hal_msp.d \
./Application/User/stm32f4xx_it.d \
./Application/User/usb_device.d \
./Application/User/usbd_cdc_if.d \
./Application/User/usbd_conf.d \
./Application/User/usbd_desc.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/main.o: D:/Projects/STMicro/printer_motor/printer_motor/Src/main.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F429xx -I"D:/Projects/STMicro/printer_motor/printer_motor/Inc" -I"D:/Projects/STMicro/printer_motor/printer_motor/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Projects/STMicro/printer_motor/printer_motor/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Projects/STMicro/printer_motor/printer_motor/Drivers/CMSIS/Include" -I"D:/Projects/STMicro/printer_motor/printer_motor/Drivers/STM32F4xx_HAL_Driver" -I"D:/Projects/STMicro/printer_motor/printer_motor/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Projects/STMicro/printer_motor/printer_motor/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"D:/Projects/STMicro/printer_motor/printer_motor/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/stm32f4xx_hal_msp.o: D:/Projects/STMicro/printer_motor/printer_motor/Src/stm32f4xx_hal_msp.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F429xx -I"D:/Projects/STMicro/printer_motor/printer_motor/Inc" -I"D:/Projects/STMicro/printer_motor/printer_motor/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Projects/STMicro/printer_motor/printer_motor/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Projects/STMicro/printer_motor/printer_motor/Drivers/CMSIS/Include" -I"D:/Projects/STMicro/printer_motor/printer_motor/Drivers/STM32F4xx_HAL_Driver" -I"D:/Projects/STMicro/printer_motor/printer_motor/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Projects/STMicro/printer_motor/printer_motor/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"D:/Projects/STMicro/printer_motor/printer_motor/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/stm32f4xx_it.o: D:/Projects/STMicro/printer_motor/printer_motor/Src/stm32f4xx_it.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F429xx -I"D:/Projects/STMicro/printer_motor/printer_motor/Inc" -I"D:/Projects/STMicro/printer_motor/printer_motor/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Projects/STMicro/printer_motor/printer_motor/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Projects/STMicro/printer_motor/printer_motor/Drivers/CMSIS/Include" -I"D:/Projects/STMicro/printer_motor/printer_motor/Drivers/STM32F4xx_HAL_Driver" -I"D:/Projects/STMicro/printer_motor/printer_motor/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Projects/STMicro/printer_motor/printer_motor/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"D:/Projects/STMicro/printer_motor/printer_motor/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/usb_device.o: D:/Projects/STMicro/printer_motor/printer_motor/Src/usb_device.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F429xx -I"D:/Projects/STMicro/printer_motor/printer_motor/Inc" -I"D:/Projects/STMicro/printer_motor/printer_motor/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Projects/STMicro/printer_motor/printer_motor/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Projects/STMicro/printer_motor/printer_motor/Drivers/CMSIS/Include" -I"D:/Projects/STMicro/printer_motor/printer_motor/Drivers/STM32F4xx_HAL_Driver" -I"D:/Projects/STMicro/printer_motor/printer_motor/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Projects/STMicro/printer_motor/printer_motor/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"D:/Projects/STMicro/printer_motor/printer_motor/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/usbd_cdc_if.o: D:/Projects/STMicro/printer_motor/printer_motor/Src/usbd_cdc_if.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F429xx -I"D:/Projects/STMicro/printer_motor/printer_motor/Inc" -I"D:/Projects/STMicro/printer_motor/printer_motor/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Projects/STMicro/printer_motor/printer_motor/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Projects/STMicro/printer_motor/printer_motor/Drivers/CMSIS/Include" -I"D:/Projects/STMicro/printer_motor/printer_motor/Drivers/STM32F4xx_HAL_Driver" -I"D:/Projects/STMicro/printer_motor/printer_motor/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Projects/STMicro/printer_motor/printer_motor/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"D:/Projects/STMicro/printer_motor/printer_motor/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/usbd_conf.o: D:/Projects/STMicro/printer_motor/printer_motor/Src/usbd_conf.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F429xx -I"D:/Projects/STMicro/printer_motor/printer_motor/Inc" -I"D:/Projects/STMicro/printer_motor/printer_motor/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Projects/STMicro/printer_motor/printer_motor/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Projects/STMicro/printer_motor/printer_motor/Drivers/CMSIS/Include" -I"D:/Projects/STMicro/printer_motor/printer_motor/Drivers/STM32F4xx_HAL_Driver" -I"D:/Projects/STMicro/printer_motor/printer_motor/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Projects/STMicro/printer_motor/printer_motor/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"D:/Projects/STMicro/printer_motor/printer_motor/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/usbd_desc.o: D:/Projects/STMicro/printer_motor/printer_motor/Src/usbd_desc.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F429xx -I"D:/Projects/STMicro/printer_motor/printer_motor/Inc" -I"D:/Projects/STMicro/printer_motor/printer_motor/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Projects/STMicro/printer_motor/printer_motor/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Projects/STMicro/printer_motor/printer_motor/Drivers/CMSIS/Include" -I"D:/Projects/STMicro/printer_motor/printer_motor/Drivers/STM32F4xx_HAL_Driver" -I"D:/Projects/STMicro/printer_motor/printer_motor/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Projects/STMicro/printer_motor/printer_motor/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"D:/Projects/STMicro/printer_motor/printer_motor/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


