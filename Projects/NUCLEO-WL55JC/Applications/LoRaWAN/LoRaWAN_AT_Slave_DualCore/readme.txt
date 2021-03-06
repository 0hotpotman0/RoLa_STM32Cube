/**
  @page LoRaWAN_AT_Slave_DualCore Readme file
 
  @verbatim
  ******************** (C) COPYRIGHT 2020 STMicroelectronics *******************
  * @file    Applications/LoRaWAN/LoRaWAN_AT_Slave_DualCore/readme.txt 
  * @author  MCD Application Team
  * @brief   This application is a simple demo application software of a LoRa
  *          modem controlled though AT command interface over UART by an
  *          external host. The application runs on CM4, the MW and radio driver
  *          run on CM0PLUS. IPCC and MBMUX are used for multicore communication
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2020 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under Ultimate Liberty license
  * SLA0044, the "License"; You may not use this file except in compliance with
  * the License. You may obtain a copy of the License at:
  *                             www.st.com/SLA0044
  *
  ******************************************************************************
  @endverbatim

@par Description

This directory contains a set of source files that implements a Dual Core (CM4 / CM0) LoRa application
modem that is controlled though AT command interface over UART by an external host,
like a computer executing a terminal.

This application is targeting the STM32WLxx Nucleo board embedding the STM32WLxx.
  ******************************************************************************

@par Keywords

Applications, SubGHz_Phy, LoRaWAN, AT_Slave, DualCore

@par Directory contents 


  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/Core/Inc/ca_conf.h                        This file contains configuration for Cryptographic API (CA)
                                                                                module functionalities.
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/Core/Inc/ca_low_level.h                   This file contains the low level definitions of the Cryptographic API (CA) module.
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/Core/Inc/ipcc.h                           This file contains all the function prototypes for
                                                                                the ipcc.c file
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/Core/Inc/ipcc_if.h                        This file contains the interface of the ipcc driver on CM0PLUS.
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/Core/Inc/kms_config.h                     This file contains configuration for Key Management Services (KMS)
                                                                                module functionalities.
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/Core/Inc/kms_if.h                         This file contains kms interfaces with middleware
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/Core/Inc/kms_low_level.h                  This file contains definitions for Key Management Services (KMS)
                                                                                module Low Level access to Flash, CRC...
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/Core/Inc/kms_mem_pool_def.h               This file contains definitions for Key Management Services (KMS)
                                                                                memory pool definition
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/Core/Inc/kms_platf_objects_config.h       This file contains definitions for Key Management Services (KMS)
                                                                                module platform objects management configuration
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/Core/Inc/kms_platf_objects_interface.h    This file contains definitions for Key Management Services (KMS)
                                                                                module platform objects management configuration interface
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/Core/Inc/main.h                           : Header for main.c file.
                                                                                This file contains the common defines of the application.
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/Core/Inc/mbedtls_config.h                 !!! No description found !!!
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/Core/Inc/nvms_low_level.h                 This file contains definitions for Key Management Services (KMS)
                                                                                module NVM Low Level access to physical storage (Flash...)
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/Core/Inc/platform.h                       Header for General HW instances configuration
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/Core/Inc/rtc.h                            This file contains all the function prototypes for
                                                                                the rtc.c file
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/Core/Inc/stm32wlxx_hal_conf.h             HAL configuration file.
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/Core/Inc/stm32wlxx_it.h                   This file contains the headers of the interrupt handlers.
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/Core/Inc/stm32_lpm_if.h                   Header for Low Power Manager interface configuration
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/Core/Inc/subghz.h                         This file contains all the function prototypes for
                                                                                the subghz.c file
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/Core/Inc/sys_app.h                        Function prototypes for sys_app.c file
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/Core/Inc/sys_conf.h                       Applicative configuration, e.g. : debug, trace, low power, sensors
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/Core/Inc/timer_if.h                       configuration of the timer_if.c instances
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/Core/Inc/utilities_conf.h                 Header for configuration file to utilities
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/Core/Inc/utilities_def.h                  Definitions for modules requiring utilities
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/KMS/App/app_kms.h                         !!! No description found !!!
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/LoRaWAN/App/app_lorawan.h                 Header of application of the LRWAN Middleware
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/LoRaWAN/App/Commissioning.h               End-device commissioning parameters
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/LoRaWAN/App/lora_app.h                    Header of application of the LRWAN Middleware
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/LoRaWAN/App/lora_app_version.h            Definition the version of the CM0PLUS application
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/LoRaWAN/App/se-identity.h                 Secure Element identity and keys
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/LoRaWAN/Target/lorawan_conf.h             Header for LoRaWAN middleware instances
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/LoRaWAN/Target/mw_log_conf.h              Configure (enable/disable) traces for CM0
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/LoRaWAN/Target/radio_board_if.h           Header for Radio interface configuration
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/LoRaWAN/Target/radio_conf.h               Header of Radio configuration
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/LoRaWAN/Target/systime.h                  Map middleware systime
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/LoRaWAN/Target/timer.h                    Wrapper to timer server
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/MbMux/LmHandler_mbwrapper.h               This file implements the CM0PLUS side wrapper of the LmHandler
                                                                                interface shared between M0 and M4.
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/MbMux/mbmux.h                             API which interfaces CM0PLUS to IPCC
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/MbMux/mbmuxif_kms.h                       Interface layer CM4 Kms to MBMUX (Mailbox Multiplexer)
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/MbMux/mbmuxif_lora.h                      API provided to CM0PLUS applic to register and handle LoraWAN via MBMUX
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/MbMux/mbmuxif_radio.h                     API for CM0PLUS applic to register and handle RADIO driver via MBMUX
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/MbMux/mbmuxif_sys.h                       API for CM0PLUS applic to handle the SYSTEM MBMUX channel
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/MbMux/mbmuxif_trace.h                     API for CM0PLUS applic to register and handle TRACE via MBMUX
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/MbMux/radio_mbwrapper.h                   This file implements the CM0PLUS side wrapper of the Radio interface
                                                                                shared between M0 and M4.
  - LoRaWAN_AT_Slave_DualCore/CM4/Core/Inc/adc.h                                This file contains all the function prototypes for
                                                                                the adc.c file
  - LoRaWAN_AT_Slave_DualCore/CM4/Core/Inc/adc_if.h                             Header for ADC interface configuration
  - LoRaWAN_AT_Slave_DualCore/CM4/Core/Inc/dma.h                                This file contains all the function prototypes for
                                                                                the dma.c file
  - LoRaWAN_AT_Slave_DualCore/CM4/Core/Inc/ipcc.h                               This file contains all the function prototypes for
                                                                                the ipcc.c file
  - LoRaWAN_AT_Slave_DualCore/CM4/Core/Inc/ipcc_if.h                            This file contains the interface of the ipcc driver on CM4.
  - LoRaWAN_AT_Slave_DualCore/CM4/Core/Inc/main.h                               : Header for main.c file.
                                                                                This file contains the common defines of the application.
  - LoRaWAN_AT_Slave_DualCore/CM4/Core/Inc/platform.h                           Header for General HW instances configuration
  - LoRaWAN_AT_Slave_DualCore/CM4/Core/Inc/stm32wlxx_hal_conf.h                 HAL configuration file.
  - LoRaWAN_AT_Slave_DualCore/CM4/Core/Inc/stm32wlxx_it.h                       This file contains the headers of the interrupt handlers.
  - LoRaWAN_AT_Slave_DualCore/CM4/Core/Inc/stm32_lpm_if.h                       Header for Low Power Manager interface configuration
  - LoRaWAN_AT_Slave_DualCore/CM4/Core/Inc/sys_app.h                            Function prototypes for sys_app.c file
  - LoRaWAN_AT_Slave_DualCore/CM4/Core/Inc/sys_conf.h                           Applicative configuration, e.g. : debug, trace, low power, sensors
  - LoRaWAN_AT_Slave_DualCore/CM4/Core/Inc/timer_if.h                           configuration of the timer_if.c instances
  - LoRaWAN_AT_Slave_DualCore/CM4/Core/Inc/usart.h                              This file contains all the function prototypes for
                                                                                the usart.c file
  - LoRaWAN_AT_Slave_DualCore/CM4/Core/Inc/usart_if.h                           Header for USART interface configuration
  - LoRaWAN_AT_Slave_DualCore/CM4/Core/Inc/utilities_conf.h                     Header for configuration file to utilities
  - LoRaWAN_AT_Slave_DualCore/CM4/Core/Inc/utilities_def.h                      Definitions for modules requiring utilities
  - LoRaWAN_AT_Slave_DualCore/CM4/LoRaWAN/App/app_lorawan.h                     Header of application of the LRWAN Middleware
  - LoRaWAN_AT_Slave_DualCore/CM4/LoRaWAN/App/lora_app.h                        Header of application of the LRWAN Middleware
  - LoRaWAN_AT_Slave_DualCore/CM4/LoRaWAN/App/lora_app_version.h                Definition the version of the CM4 application
  - LoRaWAN_AT_Slave_DualCore/CM4/LoRaWAN/App/lora_at.h                         Header for driver at.c module
  - LoRaWAN_AT_Slave_DualCore/CM4/LoRaWAN/App/lora_command.h                    Header for driver command.c module
  - LoRaWAN_AT_Slave_DualCore/CM4/LoRaWAN/App/test_rf.h                         Header for test_rf.c
  - LoRaWAN_AT_Slave_DualCore/CM4/LoRaWAN/Target/lorawan_conf.h                 Header for LoRaWAN middleware instances
  - LoRaWAN_AT_Slave_DualCore/CM4/LoRaWAN/Target/systime.h                      Map middleware systime
  - LoRaWAN_AT_Slave_DualCore/CM4/LoRaWAN/Target/timer.h                        Wrapper to timer server
  - LoRaWAN_AT_Slave_DualCore/CM4/MbMux/LmHandler_mbwrapper.h                   This file implements the CM4 side wrapper of the LmHandler
                                                                                interface shared between M0 and M4.
  - LoRaWAN_AT_Slave_DualCore/CM4/MbMux/mbmux.h                                 API which interfaces CM4 to IPCC
  - LoRaWAN_AT_Slave_DualCore/CM4/MbMux/mbmuxif_kms.h                           Interface layer CM4 Kms to MBMUX (Mailbox Multiplexer)
  - LoRaWAN_AT_Slave_DualCore/CM4/MbMux/mbmuxif_lora.h                          API provided to CM4 applic to register and handle LoraWAN via MBMUX
  - LoRaWAN_AT_Slave_DualCore/CM4/MbMux/mbmuxif_radio.h                         API for CM4 applic to register and handle RADIO driver via MBMUX
  - LoRaWAN_AT_Slave_DualCore/CM4/MbMux/mbmuxif_sys.h                           API for CM4 applic to handle the SYSTEM MBMUX channel
  - LoRaWAN_AT_Slave_DualCore/CM4/MbMux/mbmuxif_trace.h                         API for CM4 applic to register and handle TRACE via MBMUX
  - LoRaWAN_AT_Slave_DualCore/CM4/MbMux/radio_mbwrapper.h                       This file implements the CM4 side wrapper of the Radio interface
                                                                                shared between M0 and M4.
  - LoRaWAN_AT_Slave_DualCore/Common/Board/board_resources.h                    Header for driver at.c module
  - LoRaWAN_AT_Slave_DualCore/Common/Board/stm32wlxx_nucleo_conf.h              STM32WLxx_Nucleo board configuration file.
  - LoRaWAN_AT_Slave_DualCore/Common/MbMux/features_info.h                      Feature list and parameters TypeDefinitions
  - LoRaWAN_AT_Slave_DualCore/Common/MbMux/lora_info.h                          To give info to the application about LoRaWAN configuration
  - LoRaWAN_AT_Slave_DualCore/Common/MbMux/mbmux_table.h                        Maps the IPCC channels to memory buffers
  - LoRaWAN_AT_Slave_DualCore/Common/MbMux/msg_id.h                             MBMUX message ID enumeration
  - LoRaWAN_AT_Slave_DualCore/Common/System/sys_debug.h                         Configuration of the debug.c instances

  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/Core/Src/ca_low_level.c                   This file contains the low level implementations of the Cryptographic API (CA) module.
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/Core/Src/ipcc.c                           This file provides code for the configuration
                                                                                of the IPCC instances.
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/Core/Src/ipcc_if.c                        Interface to IPCC: handles IRQs and abstract appl from Ipcc handler and ch direction
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/Core/Src/kms_low_level.c                  This file contains implementations for Key Management Services (KMS)
                                                                                module Low Level access to Flash, CRC...
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/Core/Src/main.c                           : Main program body
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/Core/Src/nvms_low_level.c                 This file contains definitions for Key Management Services (KMS)
                                                                                module NVM Low Level access to physical storage (Flash...)
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/Core/Src/rtc.c                            This file provides code for the configuration
                                                                                of the RTC instances.
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/Core/Src/stm32wlxx_it.c                   Interrupt Service Routines.
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/Core/Src/stm32_lpm_if.c                   Low layer function to enter/exit low power modes (stop, sleep)
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/Core/Src/subghz.c                         This file provides code for the configuration
                                                                                of the SUBGHZ instances.
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/Core/Src/sys_app.c                        Initializes HW and SW system entities (not related to the radio)
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/Core/Src/timer_if.c                       Configure RTC Alarm, Tick and Calendar manager
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/KMS/App/app_kms.c                         !!! No description found !!!
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/LoRaWAN/App/app_lorawan.c                 Application of the LRWAN Middleware
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/LoRaWAN/App/lora_app.c                    Application of the LRWAN Middleware
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/LoRaWAN/Target/radio_board_if.c           This file provides an interface layer between MW and Radio Board
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/MbMux/features_info.c                     CM0PLUS supported features list
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/MbMux/LmHandler_mbwrapper.c               This file implements the CM0PLUS side wrapper of the LoraMac interface
                                                                                shared between M0 and M4.
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/MbMux/lora_info.c                         To give info to the application about LoRaWAN configuration
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/MbMux/mbmux.c                             Interface CPU2 to IPCC: multiplexer to map features to IPCC channels
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/MbMux/mbmuxif_kms.c                       Interface layer CM0PLUS Kms to MBMUX (Mailbox Multiplexer)
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/MbMux/mbmuxif_lora.c                      allows CM0 applic to register and handle LoraWAN to MBMUX
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/MbMux/mbmuxif_radio.c                     allows CM0PLUS applic to register and handle RADIO driver via MBMUX
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/MbMux/mbmuxif_sys.c                       allows CM0 applic to handle the SYSTEM MBMUX channel
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/MbMux/mbmuxif_trace.c                     Interface layer CM0PLUS Trace to MBMUX (Mailbox Multiplexer)
  - LoRaWAN_AT_Slave_DualCore/CM0PLUS/MbMux/radio_mbwrapper.c                   This file implements the CM0 side wrapper of the Radio interface
                                                                                shared between M0 and M4.
  - LoRaWAN_AT_Slave_DualCore/CM4/Core/Src/adc.c                                This file provides code for the configuration
                                                                                of the ADC instances.
  - LoRaWAN_AT_Slave_DualCore/CM4/Core/Src/adc_if.c                             Read status related to the chip (battery level, VREF, chip temperature)
  - LoRaWAN_AT_Slave_DualCore/CM4/Core/Src/dma.c                                This file provides code for the configuration
                                                                                of all the requested memory to memory DMA transfers.
  - LoRaWAN_AT_Slave_DualCore/CM4/Core/Src/ipcc.c                               This file provides code for the configuration
                                                                                of the IPCC instances.
  - LoRaWAN_AT_Slave_DualCore/CM4/Core/Src/ipcc_if.c                            Interface to IPCC: handles IRQs and abstract appl from Ipcc handler and ch direction
  - LoRaWAN_AT_Slave_DualCore/CM4/Core/Src/main.c                               : Main program body
  - LoRaWAN_AT_Slave_DualCore/CM4/Core/Src/stm32wlxx_hal_msp.c                  This file provides code for the MSP Initialization
                                                                                and de-Initialization codes.
  - LoRaWAN_AT_Slave_DualCore/CM4/Core/Src/stm32wlxx_it.c                       Interrupt Service Routines.
  - LoRaWAN_AT_Slave_DualCore/CM4/Core/Src/stm32_lpm_if.c                       Low layer function to enter/exit low power modes (stop, sleep)
  - LoRaWAN_AT_Slave_DualCore/CM4/Core/Src/sys_app.c                            Initializes HW and SW system entities (not related to the radio)
  - LoRaWAN_AT_Slave_DualCore/CM4/Core/Src/timer_if.c                           Configure RTC Alarm, Tick and Calendar manager
  - LoRaWAN_AT_Slave_DualCore/CM4/Core/Src/usart.c                              This file provides code for the configuration
                                                                                of the USART instances.
  - LoRaWAN_AT_Slave_DualCore/CM4/Core/Src/usart_if.c                           Configuration of UART MX driver interface for hyperterminal communication
  - LoRaWAN_AT_Slave_DualCore/CM4/LoRaWAN/App/app_lorawan.c                     Application of the LRWAN Middleware
  - LoRaWAN_AT_Slave_DualCore/CM4/LoRaWAN/App/lora_app.c                        Application of the LRWAN Middleware
  - LoRaWAN_AT_Slave_DualCore/CM4/LoRaWAN/App/lora_at.c                         AT command API
  - LoRaWAN_AT_Slave_DualCore/CM4/LoRaWAN/App/lora_command.c                    Main command driver dedicated to command AT
  - LoRaWAN_AT_Slave_DualCore/CM4/LoRaWAN/App/test_rf.c                         manages tx tests
  - LoRaWAN_AT_Slave_DualCore/CM4/MbMux/LmHandler_mbwrapper.c                   This file implements the CM4 side wrapper of the LoraMac interface
                                                                                shared between M0 and M4.
  - LoRaWAN_AT_Slave_DualCore/CM4/MbMux/mbmux.c                                 CM4 side multiplexer to map features to IPCC channels
  - LoRaWAN_AT_Slave_DualCore/CM4/MbMux/mbmuxif_kms.c                           Interface layer CM4 Kms to MBMUX (Mailbox Multiplexer)
  - LoRaWAN_AT_Slave_DualCore/CM4/MbMux/mbmuxif_lora.c                          allows CM4 applic to register and handle LoraWAN via MBMUX
  - LoRaWAN_AT_Slave_DualCore/CM4/MbMux/mbmuxif_radio.c                         allows CM4 applic to register and handle RADIO driver via MBMUX
  - LoRaWAN_AT_Slave_DualCore/CM4/MbMux/mbmuxif_sys.c                           allows CM4 applic to handle the SYSTEM MBMUX channel.
  - LoRaWAN_AT_Slave_DualCore/CM4/MbMux/mbmuxif_trace.c                         allows CM4 applic to receive by CM0 TRACE via MBMUX
  - LoRaWAN_AT_Slave_DualCore/CM4/MbMux/radio_mbwrapper.c                       This file implements the CM4 side wrapper of the Radio interface
                                                                                shared between M0 and M4.
  - LoRaWAN_AT_Slave_DualCore/Common/Board/board_resources.c                    Source file
  - LoRaWAN_AT_Slave_DualCore/Common/System/system_stm32wlxx.c                  CMSIS Cortex Device Peripheral Access Layer System Source File
  - LoRaWAN_AT_Slave_DualCore/Common/System/sys_debug.c                         Enables 4 debug pins for internal signals RealTime debugging


@par Hardware and Software environment 

  - This example runs on the STM32WLxx Nucleo board.

  - STM32WLxx Nucleo board Set-up    
    - Connect the Nucleo board to your PC with a USB cable type A to micro-B 
      to ST-LINK connector.
    - Please ensure that the ST-LINK connector jumpers are fitted.

  - Configure the software via the configuration files:
    - CM0PLUS (Mw and radio drivers config) 
        - sys_conf.h, radio_conf.h, lorawan_conf.h, Commissioning.h, se-identity.h, mw_log_conf.h, radio_board_if.h, main.h, etc
    - CM4 (Lora appli)
        - sys_conf.h, lora_app.h, nucleo_conf.h, main.h, etc
    - Careful: 
        - the region and class chosen on CM4/LoRaWAN/App/lora_app.h shall be compatible with CM0PLUS/LoRaWAN/Target/lorawan_conf.h list
        - STM32WLxx Nucleo requires IS_TCXO_SUPPORTED=1

  -Set Up:

             --------------------------  V    V  --------------------------
             |      LoRa Object       |  |    |  |      LoRa Network      |
             |                        |  |    |  |                        |
   ComPort<--|                        |--|    |--|                        |-->Web Server
             |                        |          |                        |
             --------------------------          --------------------------

@par How to use it ? 
In order to make the program work, you must do the following :
  - Open your preferred toolchain 
  - Rebuild all CM4 files and load your image into CM4 target memory
  - Rebuild all CM0PLUS files, set PWR_CR4_C2BOOT flag via CM4 and load your image into CM0PLUS target memory 
  - Reset the system (two cores)
  - Run the example
  - Open a Terminal, connected the LoRa Object
  - UART Config = 9600, 8b, 1 stopbit, no parity, no flow control
  - Terminal Config: Select 'CR+LF' for Transmit New-Line and switch 'Local echo' on
  - Reset the board
  - type AT? to get all available commands
  - Send your AT commands by typing them in the terminal

@par How to use IAR to debug ? 
  - open project.eww and select CM4 project
  - make sure the flag DEBUGGER_ON =1 in app_conf.h
  - better to define the flag LOW_POWER_DISABLE = 1 at least on one MCU (currently debugger has problem in dual core STOP mode)
  - compile and download (Ctrl + D)
  - put a breakpoint in sys_app.c one line after HAL_PWREx_ReleaseCore(PWR_CORE_CPU2);
  - run CM4 (the above functions sets PWR_CR4_C2BOOT flag)
  - open a second instance of project.eww and select CM0PLUS project
  - compile and download using "Download active application" 
  - once CM0PLUS code is downloaded reset (system reset) the CM4
  - run CM4 to the breakpoint again
  - attach to running target CM0PLUS 
         (CM0PLUS is in a while loop waiting CM4 to give green light to go further)
         (this is done to prevent CM0PLUS to execute too much code before attaching)
  - on CM4 execute MBMUXIF_SetCpusSynchroFlag(1); this will allow CM0PLUS to exite the while loop

 * <h3><center>&copy; COPYRIGHT STMicroelectronics</center></h3>
 */