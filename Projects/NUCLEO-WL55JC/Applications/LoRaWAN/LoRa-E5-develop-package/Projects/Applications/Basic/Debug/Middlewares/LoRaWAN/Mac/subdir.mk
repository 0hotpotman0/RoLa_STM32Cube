################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/Seeed/LoRa\ E5/cube_ide/LoRa-E5-develop-package/Middlewares/Third_Party/LoRaWAN/Mac/LoRaMac.c \
E:/Seeed/LoRa\ E5/cube_ide/LoRa-E5-develop-package/Middlewares/Third_Party/LoRaWAN/Mac/LoRaMacAdr.c \
E:/Seeed/LoRa\ E5/cube_ide/LoRa-E5-develop-package/Middlewares/Third_Party/LoRaWAN/Mac/LoRaMacClassB.c \
E:/Seeed/LoRa\ E5/cube_ide/LoRa-E5-develop-package/Middlewares/Third_Party/LoRaWAN/Mac/LoRaMacCommands.c \
E:/Seeed/LoRa\ E5/cube_ide/LoRa-E5-develop-package/Middlewares/Third_Party/LoRaWAN/Mac/LoRaMacConfirmQueue.c \
E:/Seeed/LoRa\ E5/cube_ide/LoRa-E5-develop-package/Middlewares/Third_Party/LoRaWAN/Mac/LoRaMacCrypto.c \
E:/Seeed/LoRa\ E5/cube_ide/LoRa-E5-develop-package/Middlewares/Third_Party/LoRaWAN/Mac/LoRaMacParser.c \
E:/Seeed/LoRa\ E5/cube_ide/LoRa-E5-develop-package/Middlewares/Third_Party/LoRaWAN/Mac/LoRaMacSerializer.c 

OBJS += \
./Middlewares/LoRaWAN/Mac/LoRaMac.o \
./Middlewares/LoRaWAN/Mac/LoRaMacAdr.o \
./Middlewares/LoRaWAN/Mac/LoRaMacClassB.o \
./Middlewares/LoRaWAN/Mac/LoRaMacCommands.o \
./Middlewares/LoRaWAN/Mac/LoRaMacConfirmQueue.o \
./Middlewares/LoRaWAN/Mac/LoRaMacCrypto.o \
./Middlewares/LoRaWAN/Mac/LoRaMacParser.o \
./Middlewares/LoRaWAN/Mac/LoRaMacSerializer.o 

C_DEPS += \
./Middlewares/LoRaWAN/Mac/LoRaMac.d \
./Middlewares/LoRaWAN/Mac/LoRaMacAdr.d \
./Middlewares/LoRaWAN/Mac/LoRaMacClassB.d \
./Middlewares/LoRaWAN/Mac/LoRaMacCommands.d \
./Middlewares/LoRaWAN/Mac/LoRaMacConfirmQueue.d \
./Middlewares/LoRaWAN/Mac/LoRaMacCrypto.d \
./Middlewares/LoRaWAN/Mac/LoRaMacParser.d \
./Middlewares/LoRaWAN/Mac/LoRaMacSerializer.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/LoRaWAN/Mac/LoRaMac.o: E:/Seeed/LoRa\ E5/cube_ide/LoRa-E5-develop-package/Middlewares/Third_Party/LoRaWAN/Mac/LoRaMac.c Middlewares/LoRaWAN/Mac/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32WLE5xx -DCORE_CM4 -DDEBUG -c -I../../Core/Inc -I../../LoRaWAN/App -I../../LoRaWAN/Target -I../../Peripheral/Inc -I../../../../Drivers/STM32WLxx_HAL_Driver/Inc -I../../../../Drivers/CMSIS/Include -I../../../../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../../../../Middlewares/Third_Party/LoRaWAN/Crypto -I../../../../Middlewares/Third_Party/LoRaWAN/Mac -I../../../../Middlewares/Third_Party/LoRaWAN/Mac/Region -I../../../../Middlewares/Third_Party/LoRaWAN/LmHandler -I../../../../Middlewares/Third_Party/LoRaWAN/LmHandler/Packages -I../../../../Middlewares/Third_Party/LoRaWAN/Utilities -I../../../../Middlewares/Third_Party/SubGHz_Phy -I../../../../Middlewares/Third_Party/SubGHz_Phy/stm32_radio_driver -I../../../../Utilities/lpm/tiny_lpm -I../../../../Utilities/misc -I../../../../Utilities/sequencer -I../../../../Utilities/timer -I../../../../Utilities/trace/adv_trace -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/LoRaWAN/Mac/LoRaMac.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Middlewares/LoRaWAN/Mac/LoRaMacAdr.o: E:/Seeed/LoRa\ E5/cube_ide/LoRa-E5-develop-package/Middlewares/Third_Party/LoRaWAN/Mac/LoRaMacAdr.c Middlewares/LoRaWAN/Mac/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32WLE5xx -DCORE_CM4 -DDEBUG -c -I../../Core/Inc -I../../LoRaWAN/App -I../../LoRaWAN/Target -I../../Peripheral/Inc -I../../../../Drivers/STM32WLxx_HAL_Driver/Inc -I../../../../Drivers/CMSIS/Include -I../../../../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../../../../Middlewares/Third_Party/LoRaWAN/Crypto -I../../../../Middlewares/Third_Party/LoRaWAN/Mac -I../../../../Middlewares/Third_Party/LoRaWAN/Mac/Region -I../../../../Middlewares/Third_Party/LoRaWAN/LmHandler -I../../../../Middlewares/Third_Party/LoRaWAN/LmHandler/Packages -I../../../../Middlewares/Third_Party/LoRaWAN/Utilities -I../../../../Middlewares/Third_Party/SubGHz_Phy -I../../../../Middlewares/Third_Party/SubGHz_Phy/stm32_radio_driver -I../../../../Utilities/lpm/tiny_lpm -I../../../../Utilities/misc -I../../../../Utilities/sequencer -I../../../../Utilities/timer -I../../../../Utilities/trace/adv_trace -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/LoRaWAN/Mac/LoRaMacAdr.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Middlewares/LoRaWAN/Mac/LoRaMacClassB.o: E:/Seeed/LoRa\ E5/cube_ide/LoRa-E5-develop-package/Middlewares/Third_Party/LoRaWAN/Mac/LoRaMacClassB.c Middlewares/LoRaWAN/Mac/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32WLE5xx -DCORE_CM4 -DDEBUG -c -I../../Core/Inc -I../../LoRaWAN/App -I../../LoRaWAN/Target -I../../Peripheral/Inc -I../../../../Drivers/STM32WLxx_HAL_Driver/Inc -I../../../../Drivers/CMSIS/Include -I../../../../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../../../../Middlewares/Third_Party/LoRaWAN/Crypto -I../../../../Middlewares/Third_Party/LoRaWAN/Mac -I../../../../Middlewares/Third_Party/LoRaWAN/Mac/Region -I../../../../Middlewares/Third_Party/LoRaWAN/LmHandler -I../../../../Middlewares/Third_Party/LoRaWAN/LmHandler/Packages -I../../../../Middlewares/Third_Party/LoRaWAN/Utilities -I../../../../Middlewares/Third_Party/SubGHz_Phy -I../../../../Middlewares/Third_Party/SubGHz_Phy/stm32_radio_driver -I../../../../Utilities/lpm/tiny_lpm -I../../../../Utilities/misc -I../../../../Utilities/sequencer -I../../../../Utilities/timer -I../../../../Utilities/trace/adv_trace -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/LoRaWAN/Mac/LoRaMacClassB.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Middlewares/LoRaWAN/Mac/LoRaMacCommands.o: E:/Seeed/LoRa\ E5/cube_ide/LoRa-E5-develop-package/Middlewares/Third_Party/LoRaWAN/Mac/LoRaMacCommands.c Middlewares/LoRaWAN/Mac/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32WLE5xx -DCORE_CM4 -DDEBUG -c -I../../Core/Inc -I../../LoRaWAN/App -I../../LoRaWAN/Target -I../../Peripheral/Inc -I../../../../Drivers/STM32WLxx_HAL_Driver/Inc -I../../../../Drivers/CMSIS/Include -I../../../../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../../../../Middlewares/Third_Party/LoRaWAN/Crypto -I../../../../Middlewares/Third_Party/LoRaWAN/Mac -I../../../../Middlewares/Third_Party/LoRaWAN/Mac/Region -I../../../../Middlewares/Third_Party/LoRaWAN/LmHandler -I../../../../Middlewares/Third_Party/LoRaWAN/LmHandler/Packages -I../../../../Middlewares/Third_Party/LoRaWAN/Utilities -I../../../../Middlewares/Third_Party/SubGHz_Phy -I../../../../Middlewares/Third_Party/SubGHz_Phy/stm32_radio_driver -I../../../../Utilities/lpm/tiny_lpm -I../../../../Utilities/misc -I../../../../Utilities/sequencer -I../../../../Utilities/timer -I../../../../Utilities/trace/adv_trace -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/LoRaWAN/Mac/LoRaMacCommands.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Middlewares/LoRaWAN/Mac/LoRaMacConfirmQueue.o: E:/Seeed/LoRa\ E5/cube_ide/LoRa-E5-develop-package/Middlewares/Third_Party/LoRaWAN/Mac/LoRaMacConfirmQueue.c Middlewares/LoRaWAN/Mac/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32WLE5xx -DCORE_CM4 -DDEBUG -c -I../../Core/Inc -I../../LoRaWAN/App -I../../LoRaWAN/Target -I../../Peripheral/Inc -I../../../../Drivers/STM32WLxx_HAL_Driver/Inc -I../../../../Drivers/CMSIS/Include -I../../../../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../../../../Middlewares/Third_Party/LoRaWAN/Crypto -I../../../../Middlewares/Third_Party/LoRaWAN/Mac -I../../../../Middlewares/Third_Party/LoRaWAN/Mac/Region -I../../../../Middlewares/Third_Party/LoRaWAN/LmHandler -I../../../../Middlewares/Third_Party/LoRaWAN/LmHandler/Packages -I../../../../Middlewares/Third_Party/LoRaWAN/Utilities -I../../../../Middlewares/Third_Party/SubGHz_Phy -I../../../../Middlewares/Third_Party/SubGHz_Phy/stm32_radio_driver -I../../../../Utilities/lpm/tiny_lpm -I../../../../Utilities/misc -I../../../../Utilities/sequencer -I../../../../Utilities/timer -I../../../../Utilities/trace/adv_trace -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/LoRaWAN/Mac/LoRaMacConfirmQueue.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Middlewares/LoRaWAN/Mac/LoRaMacCrypto.o: E:/Seeed/LoRa\ E5/cube_ide/LoRa-E5-develop-package/Middlewares/Third_Party/LoRaWAN/Mac/LoRaMacCrypto.c Middlewares/LoRaWAN/Mac/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32WLE5xx -DCORE_CM4 -DDEBUG -c -I../../Core/Inc -I../../LoRaWAN/App -I../../LoRaWAN/Target -I../../Peripheral/Inc -I../../../../Drivers/STM32WLxx_HAL_Driver/Inc -I../../../../Drivers/CMSIS/Include -I../../../../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../../../../Middlewares/Third_Party/LoRaWAN/Crypto -I../../../../Middlewares/Third_Party/LoRaWAN/Mac -I../../../../Middlewares/Third_Party/LoRaWAN/Mac/Region -I../../../../Middlewares/Third_Party/LoRaWAN/LmHandler -I../../../../Middlewares/Third_Party/LoRaWAN/LmHandler/Packages -I../../../../Middlewares/Third_Party/LoRaWAN/Utilities -I../../../../Middlewares/Third_Party/SubGHz_Phy -I../../../../Middlewares/Third_Party/SubGHz_Phy/stm32_radio_driver -I../../../../Utilities/lpm/tiny_lpm -I../../../../Utilities/misc -I../../../../Utilities/sequencer -I../../../../Utilities/timer -I../../../../Utilities/trace/adv_trace -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/LoRaWAN/Mac/LoRaMacCrypto.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Middlewares/LoRaWAN/Mac/LoRaMacParser.o: E:/Seeed/LoRa\ E5/cube_ide/LoRa-E5-develop-package/Middlewares/Third_Party/LoRaWAN/Mac/LoRaMacParser.c Middlewares/LoRaWAN/Mac/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32WLE5xx -DCORE_CM4 -DDEBUG -c -I../../Core/Inc -I../../LoRaWAN/App -I../../LoRaWAN/Target -I../../Peripheral/Inc -I../../../../Drivers/STM32WLxx_HAL_Driver/Inc -I../../../../Drivers/CMSIS/Include -I../../../../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../../../../Middlewares/Third_Party/LoRaWAN/Crypto -I../../../../Middlewares/Third_Party/LoRaWAN/Mac -I../../../../Middlewares/Third_Party/LoRaWAN/Mac/Region -I../../../../Middlewares/Third_Party/LoRaWAN/LmHandler -I../../../../Middlewares/Third_Party/LoRaWAN/LmHandler/Packages -I../../../../Middlewares/Third_Party/LoRaWAN/Utilities -I../../../../Middlewares/Third_Party/SubGHz_Phy -I../../../../Middlewares/Third_Party/SubGHz_Phy/stm32_radio_driver -I../../../../Utilities/lpm/tiny_lpm -I../../../../Utilities/misc -I../../../../Utilities/sequencer -I../../../../Utilities/timer -I../../../../Utilities/trace/adv_trace -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/LoRaWAN/Mac/LoRaMacParser.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Middlewares/LoRaWAN/Mac/LoRaMacSerializer.o: E:/Seeed/LoRa\ E5/cube_ide/LoRa-E5-develop-package/Middlewares/Third_Party/LoRaWAN/Mac/LoRaMacSerializer.c Middlewares/LoRaWAN/Mac/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32WLE5xx -DCORE_CM4 -DDEBUG -c -I../../Core/Inc -I../../LoRaWAN/App -I../../LoRaWAN/Target -I../../Peripheral/Inc -I../../../../Drivers/STM32WLxx_HAL_Driver/Inc -I../../../../Drivers/CMSIS/Include -I../../../../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../../../../Middlewares/Third_Party/LoRaWAN/Crypto -I../../../../Middlewares/Third_Party/LoRaWAN/Mac -I../../../../Middlewares/Third_Party/LoRaWAN/Mac/Region -I../../../../Middlewares/Third_Party/LoRaWAN/LmHandler -I../../../../Middlewares/Third_Party/LoRaWAN/LmHandler/Packages -I../../../../Middlewares/Third_Party/LoRaWAN/Utilities -I../../../../Middlewares/Third_Party/SubGHz_Phy -I../../../../Middlewares/Third_Party/SubGHz_Phy/stm32_radio_driver -I../../../../Utilities/lpm/tiny_lpm -I../../../../Utilities/misc -I../../../../Utilities/sequencer -I../../../../Utilities/timer -I../../../../Utilities/trace/adv_trace -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/LoRaWAN/Mac/LoRaMacSerializer.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

