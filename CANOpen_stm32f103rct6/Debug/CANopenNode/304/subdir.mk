################################################################################
# 自动生成的文件。不要编辑！
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../CANopenNode/304/CO_GFC.c \
../CANopenNode/304/CO_SRDO.c 

OBJS += \
./CANopenNode/304/CO_GFC.o \
./CANopenNode/304/CO_SRDO.o 

C_DEPS += \
./CANopenNode/304/CO_GFC.d \
./CANopenNode/304/CO_SRDO.d 


# Each subdirectory must supply rules for building sources it contributes
CANopenNode/304/%.o CANopenNode/304/%.su CANopenNode/304/%.cyclo: ../CANopenNode/304/%.c CANopenNode/304/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I../CANopenNode/301 -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../CANopenNode -I../CANopenNode_STM32 -I../generated_od -O0 -ffunction-sections -fdata-sections -Wall -std=c99 -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-CANopenNode-2f-304

clean-CANopenNode-2f-304:
	-$(RM) ./CANopenNode/304/CO_GFC.cyclo ./CANopenNode/304/CO_GFC.d ./CANopenNode/304/CO_GFC.o ./CANopenNode/304/CO_GFC.su ./CANopenNode/304/CO_SRDO.cyclo ./CANopenNode/304/CO_SRDO.d ./CANopenNode/304/CO_SRDO.o ./CANopenNode/304/CO_SRDO.su

.PHONY: clean-CANopenNode-2f-304

