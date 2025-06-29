################################################################################
# 自动生成的文件。不要编辑！
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../CANopenNode/CANopen.c \
../CANopenNode/objectDictionary.c 

OBJS += \
./CANopenNode/CANopen.o \
./CANopenNode/objectDictionary.o 

C_DEPS += \
./CANopenNode/CANopen.d \
./CANopenNode/objectDictionary.d 


# Each subdirectory must supply rules for building sources it contributes
CANopenNode/%.o CANopenNode/%.su CANopenNode/%.cyclo: ../CANopenNode/%.c CANopenNode/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I../CANopenNode/301 -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../CANopenNode -I../CANopenNode_STM32 -I../generated_od -O0 -ffunction-sections -fdata-sections -Wall -std=gnu99 -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-CANopenNode

clean-CANopenNode:
	-$(RM) ./CANopenNode/CANopen.cyclo ./CANopenNode/CANopen.d ./CANopenNode/CANopen.o ./CANopenNode/CANopen.su ./CANopenNode/objectDictionary.cyclo ./CANopenNode/objectDictionary.d ./CANopenNode/objectDictionary.o ./CANopenNode/objectDictionary.su

.PHONY: clean-CANopenNode

