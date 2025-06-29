################################################################################
# 自动生成的文件。不要编辑！
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../CANopenNode/303/CO_LEDs.c 

OBJS += \
./CANopenNode/303/CO_LEDs.o 

C_DEPS += \
./CANopenNode/303/CO_LEDs.d 


# Each subdirectory must supply rules for building sources it contributes
CANopenNode/303/%.o CANopenNode/303/%.su CANopenNode/303/%.cyclo: ../CANopenNode/303/%.c CANopenNode/303/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I../CANopenNode/301 -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../CANopenNode -I../CANopenNode_STM32 -I../generated_od -O0 -ffunction-sections -fdata-sections -Wall -std=gnu99 -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-CANopenNode-2f-303

clean-CANopenNode-2f-303:
	-$(RM) ./CANopenNode/303/CO_LEDs.cyclo ./CANopenNode/303/CO_LEDs.d ./CANopenNode/303/CO_LEDs.o ./CANopenNode/303/CO_LEDs.su

.PHONY: clean-CANopenNode-2f-303

