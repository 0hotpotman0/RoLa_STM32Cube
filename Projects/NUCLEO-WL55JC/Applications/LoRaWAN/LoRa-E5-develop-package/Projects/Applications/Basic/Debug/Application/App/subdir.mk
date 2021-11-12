################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/Seeed/LoRa\ E5/cube_ide/LoRa-E5-develop-package/Projects/Applications/LoRaWAN/App/app_lorawan.c \
E:/Seeed/LoRa\ E5/cube_ide/LoRa-E5-develop-package/Projects/Applications/LoRaWAN/App/lora_app.c \
E:/Seeed/LoRa\ E5/cube_ide/LoRa-E5-develop-package/Projects/Applications/LoRaWAN/App/lora_info.c 

OBJS += \
./Application/App/app_lorawan.o \
./Application/App/lora_app.o \
./Application/App/lora_info.o 

C_DEPS += \
./Application/App/app_lorawan.d \
./Application/App/lora_app.d \
./Application/App/lora_info.d 


# Each subdirectory must supply rules for building sources it contributes
Application/App/app_lorawan.o: E:/Seeed/LoRa\ E5/cube_ide/LoRa-E5-develop-package/Projects/Applications/LoRaWAN/App/app_lorawan.c Application/App/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32WLE5xx -DCORE_CM4 -DDEBUG -c -I../../Core/Inc -I../../LoRaWAN/App -I../../LoRaWAN/Target -I../../Peripheral/Inc -I../../../../Drivers/STM32WLxx_HAL_Driver/Inc -I../../../../Drivers/CMSIS/Include -I../../../../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../../../../Middlewares/Third_Party/LoRaWAN/Crypto -I../../../../Middlewares/Third_Party/LoRaWAN/Mac -I../../../../Middlewares/Third_Party/LoRaWAN/Mac/Region -I../../../../Middlewares/Third_Party/LoRaWAN/LmHandler -I../../../../Middlewares/Third_Party/LoRaWAN/LmHandler/Packages -I../../../../Middlewares/Third_Party/LoRaWAN/Utilities -I../../../../Middlewares/Third_Party/SubGHz_Phy -I../../../../Middlewares/Third_Party/SubGHz_Phy/stm32_radio_driver -I../../../../Utilities/lpm/tiny_lpm -I../../../../Utilities/misc -I../../../../Utilities/sequencer -I../../../../Utilities/timer -I../../../../Utilities/trace/adv_trace -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/App/app_lorawan.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/App/lora_app.o: E:/Seeed/LoRa\ E5/cube_ide/LoRa-E5-develop-package/Projects/Applications/LoRaWAN/App/lora_app.c Application/App/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32WLE5xx -DCORE_CM4 -DDEBUG -c -I../../Core/Inc -I../../LoRaWAN/App -I../../LoRaWAN/Target -I../../Peripheral/Inc -I../../../../Drivers/STM32WLxx_HAL_Driver/Inc -I../../../../Drivers/CMSIS/Include -I../../../../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../../../../Middlewares/Third_Party/LoRaWAN/Crypto -I../../../../Middlewares/Third_Party/LoRaWAN/Mac -I../../../../Middlewares/Third_Party/LoRaWAN/Mac/Region -I../../../../Middlewares/Third_Party/LoRaWAN/LmHandler -I../../../../Middlewares/Third_Party/LoRaWAN/LmHandler/Packages -I../../../../Middlewares/Third_Party/LoRaWAN/Utilities -I../../../../Middlewares/Third_Party/SubGHz_Phy -I../../../../Middlewares/Third_Party/SubGHz_Phy/stm32_radio_driver -I../../../../Utilities/lpm/tiny_lpm -I../../../../Utilities/misc -I../../../../Utilities/sequencer -I../../../../Utilities/timer -I../../../../Utilities/trace/adv_trace -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/App/lora_app.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/App/lora_info.o: E:/Seeed/LoRa\ E5/cube_ide/LoRa-E5-develop-package/Projects/Applications/LoRaWAN/App/lora_info.c Application/App/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32WLE5xx -DCORE_CM4 -DDEBUG -c -I../../Core/Inc -I../../LoRaWAN/App -I../../LoRaWAN/Target -I../../Peripheral/Inc -I../../../../Drivers/STM32WLxx_HAL_Driver/Inc -I../../../../Drivers/CMSIS/Include -I../../../../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../../../../Middlewares/Third_Party/LoRaWAN/Crypto -I../../../../Middlewares/Third_Party/LoRaWAN/Mac -I../../../../Middlewares/Third_Party/LoRaWAN/Mac/Region -I../../../../Middlewares/Third_Party/LoRaWAN/LmHandler -I../../../../Middlewares/Third_Party/LoRaWAN/LmHandler/Packages -I../../../../Middlewares/Third_Party/LoRaWAN/Utilities -I../../../../Middlewares/Third_Party/SubGHz_Phy -I../../../../Middlewares/Third_Party/SubGHz_Phy/stm32_radio_driver -I../../../../Utilities/lpm/tiny_lpm -I../../../../Utilities/misc -I../../../../Utilities/sequencer -I../../../../Utilities/timer -I../../../../Utilities/trace/adv_trace -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/App/lora_info.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

