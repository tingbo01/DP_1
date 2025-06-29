################################################################################
# 自动生成的文件。不要编辑！
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../CANopenNode/305/CO_LSSmaster.c \
../CANopenNode/305/CO_LSSslave.c 

OBJS += \
./CANopenNode/305/CO_LSSmaster.o \
./CANopenNode/305/CO_LSSslave.o 

C_DEPS += \
./CANopenNode/305/CO_LSSmaster.d \
./CANopenNode/305/CO_LSSslave.d 


# Each subdirectory must supply rules for building sources it contributes
CANopenNode/305/%.o CANopenNode/305/%.su CANopenNode/305/%.cyclo: ../CANopenNode/305/%.c CANopenNode/305/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I../CANopenNode/301 -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../CANopenNode -I../CANopenNode_STM32 -I../generated_od -O0 -ffunction-sections -fdata-sections -Wall -std=gnu99 -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-CANopenNode-2f-305

clean-CANopenNode-2f-305:
	-$(RM) ./CANopenNode/305/CO_LSSmaster.cyclo ./CANopenNode/305/CO_LSSmaster.d ./CANopenNode/305/CO_LSSmaster.o ./CANopenNode/305/CO_LSSmaster.su ./CANopenNode/305/CO_LSSslave.cyclo ./CANopenNode/305/CO_LSSslave.d ./CANopenNode/305/CO_LSSslave.o ./CANopenNode/305/CO_LSSslave.su

.PHONY: clean-CANopenNode-2f-305

