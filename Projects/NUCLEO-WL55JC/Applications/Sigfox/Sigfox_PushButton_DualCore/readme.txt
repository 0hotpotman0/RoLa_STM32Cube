/**
  @page Sigfox_PushButton_DualCore Readme file
 
  @verbatim
  ******************** (C) COPYRIGHT 2020 STMicroelectronics *******************
  * @file    Applications/Sigfox/Sigfox_PushButton_DualCore/readme.txt 
  * @author  MCD Application Team
  * @brief   This application is a simple demo application software of a Sigfox 
  *          Modem sending temperature and Batterie Level to a Sigfox Network.
  *          The application runs on CM4, the MW and radio driver
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

This directory contains a set of source files that implements a Dual Core (CM4 / CM0) Sigfox application
example of a Sigfox object sending temperature - and Batterie Level to a Sigfox Network.

This application is targeting the NUCLEO-WL55JC1 (HIGH-BAND) embedding the STM32WLxx.

  ******************************************************************************

@par Keywords

Applications, SubGHz_Phy, Sigfox, PushButton, DualCore

@par Directory contents 


  - Sigfox_PushButton_DualCore/CM0PLUS/Core/Inc/ca_conf.h                       This file contains configuration for Cryptographic API (CA)
                                                                                module functionalities.
  - Sigfox_PushButton_DualCore/CM0PLUS/Core/Inc/ca_low_level.h                  This file contains the low level definitions of the Cryptographic API (CA) module.
  - Sigfox_PushButton_DualCore/CM0PLUS/Core/Inc/flash_if.h                      This file provides interface to low level driver
  - Sigfox_PushButton_DualCore/CM0PLUS/Core/Inc/ipcc.h                          This file contains all the function prototypes for
                                                                                the ipcc.c file
  - Sigfox_PushButton_DualCore/CM0PLUS/Core/Inc/ipcc_if.h                       This file contains the interface of the ipcc driver on CM0PLUS.
  - Sigfox_PushButton_DualCore/CM0PLUS/Core/Inc/kms_config.h                    This file contains configuration for Key Management Services (KMS)
                                                                                module functionalities.
  - Sigfox_PushButton_DualCore/CM0PLUS/Core/Inc/kms_if.h                        This file contains kms interfaces with middleware
  - Sigfox_PushButton_DualCore/CM0PLUS/Core/Inc/kms_low_level.h                 This file contains definitions for Key Management Services (KMS)
                                                                                module Low Level access to Flash, CRC...
  - Sigfox_PushButton_DualCore/CM0PLUS/Core/Inc/kms_mem_pool_def.h              This file contains definitions for Key Management Services (KMS)
                                                                                memory pool definition
  - Sigfox_PushButton_DualCore/CM0PLUS/Core/Inc/kms_platf_objects_config.h      This file contains definitions for Key Management Services (KMS)
                                                                                module platform objects management configuration
  - Sigfox_PushButton_DualCore/CM0PLUS/Core/Inc/kms_platf_objects_interface.h   This file contains definitions for Key Management Services (KMS)
                                                                                module platform objects management configuration interface
  - Sigfox_PushButton_DualCore/CM0PLUS/Core/Inc/lptim.h                         This file contains all the function prototypes for
                                                                                the lptim.c file
  - Sigfox_PushButton_DualCore/CM0PLUS/Core/Inc/main.h                          : Header for main.c file.
                                                                                This file contains the common defines of the application.
  - Sigfox_PushButton_DualCore/CM0PLUS/Core/Inc/mbedtls_config.h                !!! No description found !!!
  - Sigfox_PushButton_DualCore/CM0PLUS/Core/Inc/mn_lptim_if.h                   Header for between Sigfox monarch and lptim
  - Sigfox_PushButton_DualCore/CM0PLUS/Core/Inc/nvms_low_level.h                This file contains definitions for Key Management Services (KMS)
                                                                                module NVM Low Level access to physical storage (Flash...)
  - Sigfox_PushButton_DualCore/CM0PLUS/Core/Inc/platform.h                      Header for General HW instances configuration
  - Sigfox_PushButton_DualCore/CM0PLUS/Core/Inc/rtc.h                           This file contains all the function prototypes for
                                                                                the rtc.c file
  - Sigfox_PushButton_DualCore/CM0PLUS/Core/Inc/stm32wlxx_hal_conf.h            HAL configuration file.
  - Sigfox_PushButton_DualCore/CM0PLUS/Core/Inc/stm32wlxx_it.h                  This file contains the headers of the interrupt handlers.
  - Sigfox_PushButton_DualCore/CM0PLUS/Core/Inc/stm32_lpm_if.h                  Header for Low Power Manager interface configuration
  - Sigfox_PushButton_DualCore/CM0PLUS/Core/Inc/subghz.h                        This file contains all the function prototypes for
                                                                                the subghz.c file
  - Sigfox_PushButton_DualCore/CM0PLUS/Core/Inc/sys_app.h                       Function prototypes for sys_app.c file
  - Sigfox_PushButton_DualCore/CM0PLUS/Core/Inc/sys_conf.h                      Applicative configuration, e.g. : debug, trace, low power, sensors
  - Sigfox_PushButton_DualCore/CM0PLUS/Core/Inc/timer_if.h                      configuration of the timer_if.c instances
  - Sigfox_PushButton_DualCore/CM0PLUS/Core/Inc/utilities_conf.h                Header for configuration file to utilities
  - Sigfox_PushButton_DualCore/CM0PLUS/Core/Inc/utilities_def.h                 Definitions for modules requiring utilities
  - Sigfox_PushButton_DualCore/CM0PLUS/KMS/App/app_kms.h                        !!! No description found !!!
  - Sigfox_PushButton_DualCore/CM0PLUS/MbMux/mbmux.h                            API which interfaces CM0PLUS to IPCC
  - Sigfox_PushButton_DualCore/CM0PLUS/MbMux/mbmuxif_kms.h                      Interface layer CM4 Kms to MBMUX (Mailbox Multiplexer)
  - Sigfox_PushButton_DualCore/CM0PLUS/MbMux/mbmuxif_radio.h                    API for CM0PLUS applic to register and handle RADIO driver via MBMUX
  - Sigfox_PushButton_DualCore/CM0PLUS/MbMux/mbmuxif_sigfox.h                   API provided to CM0 appli to register and handle Sigfox to MBMUX
  - Sigfox_PushButton_DualCore/CM0PLUS/MbMux/mbmuxif_sys.h                      API for CM0PLUS applic to handle the SYSTEM MBMUX channel
  - Sigfox_PushButton_DualCore/CM0PLUS/MbMux/mbmuxif_trace.h                    API for CM0PLUS applic to register and handle TRACE via MBMUX
  - Sigfox_PushButton_DualCore/CM0PLUS/MbMux/radio_mbwrapper.h                  This file implements the CM0PLUS side wrapper of the Radio interface
                                                                                shared between M0 and M4.
  - Sigfox_PushButton_DualCore/CM0PLUS/MbMux/sigfox_mbwrapper.h                 This file implements the CM0 side wrapper of the SigfoxMac interface
                                                                                shared between M0 and M4.
  - Sigfox_PushButton_DualCore/CM0PLUS/Sigfox/App/app_sigfox.h                  Header of application of the Sigfox Middleware
  - Sigfox_PushButton_DualCore/CM0PLUS/Sigfox/App/ee.h                          Header of the EEPROM emulator
  - Sigfox_PushButton_DualCore/CM0PLUS/Sigfox/App/sgfx_app_version.h            Definition the version of the CM0PLUS application
  - Sigfox_PushButton_DualCore/CM0PLUS/Sigfox/App/sgfx_cstimer.h                Interface for  cstimer.c driver
  - Sigfox_PushButton_DualCore/CM0PLUS/Sigfox/App/sgfx_eeprom_if.h              eeprom interface to the upper module.
  - Sigfox_PushButton_DualCore/CM0PLUS/Sigfox/App/sigfox_data.h                 provides encrypted data
  - Sigfox_PushButton_DualCore/CM0PLUS/Sigfox/Target/mcu_api.h                  defines the interfaace to mcu_api.c
  - Sigfox_PushButton_DualCore/CM0PLUS/Sigfox/Target/mn_api.h                   monarch library interface
  - Sigfox_PushButton_DualCore/CM0PLUS/Sigfox/Target/mw_log_conf.h              Configure (enable/disable) traces for CM0
  - Sigfox_PushButton_DualCore/CM0PLUS/Sigfox/Target/radio_board_if.h           Header for Radio interface configuration
  - Sigfox_PushButton_DualCore/CM0PLUS/Sigfox/Target/radio_conf.h               Header of Radio configuration
  - Sigfox_PushButton_DualCore/CM0PLUS/Sigfox/Target/rf_api.h                   interface to rf_api.c
  - Sigfox_PushButton_DualCore/CM0PLUS/Sigfox/Target/se_nvm.h                   header to emulated SE nvm data
  - Sigfox_PushButton_DualCore/CM0PLUS/Sigfox/Target/sgfx_credentials.h         interface to key manager and encryption algorithm
  - Sigfox_PushButton_DualCore/CM0PLUS/Sigfox/Target/timer.h                    Wrapper to timer server
  - Sigfox_PushButton_DualCore/CM4/Core/Inc/adc.h                               This file contains all the function prototypes for
                                                                                the adc.c file
  - Sigfox_PushButton_DualCore/CM4/Core/Inc/adc_if.h                            Header for ADC interface configuration
  - Sigfox_PushButton_DualCore/CM4/Core/Inc/dma.h                               This file contains all the function prototypes for
                                                                                the dma.c file
  - Sigfox_PushButton_DualCore/CM4/Core/Inc/ipcc.h                              This file contains all the function prototypes for
                                                                                the ipcc.c file
  - Sigfox_PushButton_DualCore/CM4/Core/Inc/ipcc_if.h                           This file contains the interface of the ipcc driver on CM4.
  - Sigfox_PushButton_DualCore/CM4/Core/Inc/main.h                              : Header for main.c file.
                                                                                This file contains the common defines of the application.
  - Sigfox_PushButton_DualCore/CM4/Core/Inc/platform.h                          Header for General HW instances configuration
  - Sigfox_PushButton_DualCore/CM4/Core/Inc/stm32wlxx_hal_conf.h                HAL configuration file.
  - Sigfox_PushButton_DualCore/CM4/Core/Inc/stm32wlxx_it.h                      This file contains the headers of the interrupt handlers.
  - Sigfox_PushButton_DualCore/CM4/Core/Inc/stm32_lpm_if.h                      Header for Low Power Manager interface configuration
  - Sigfox_PushButton_DualCore/CM4/Core/Inc/sys_app.h                           Function prototypes for sys_app.c file
  - Sigfox_PushButton_DualCore/CM4/Core/Inc/sys_conf.h                          Applicative configuration, e.g. : debug, trace, low power, sensors
  - Sigfox_PushButton_DualCore/CM4/Core/Inc/sys_sensors.h                       Header for sensors application
  - Sigfox_PushButton_DualCore/CM4/Core/Inc/timer_if.h                          configuration of the timer_if.c instances
  - Sigfox_PushButton_DualCore/CM4/Core/Inc/usart.h                             This file contains all the function prototypes for
                                                                                the usart.c file
  - Sigfox_PushButton_DualCore/CM4/Core/Inc/usart_if.h                          Header for USART interface configuration
  - Sigfox_PushButton_DualCore/CM4/Core/Inc/utilities_conf.h                    Header for configuration file to utilities
  - Sigfox_PushButton_DualCore/CM4/Core/Inc/utilities_def.h                     Definitions for modules requiring utilities
  - Sigfox_PushButton_DualCore/CM4/MbMux/mbmux.h                                API which interfaces CM4 to IPCC
  - Sigfox_PushButton_DualCore/CM4/MbMux/mbmuxif_kms.h                          Interface layer CM4 Kms to MBMUX (Mailbox Multiplexer)
  - Sigfox_PushButton_DualCore/CM4/MbMux/mbmuxif_radio.h                        API for CM4 applic to register and handle RADIO driver via MBMUX
  - Sigfox_PushButton_DualCore/CM4/MbMux/mbmuxif_sigfox.h                       API provided to CM0 appli to register and handle Sigfox to MBMUX
  - Sigfox_PushButton_DualCore/CM4/MbMux/mbmuxif_sys.h                          API for CM4 applic to handle the SYSTEM MBMUX channel
  - Sigfox_PushButton_DualCore/CM4/MbMux/mbmuxif_trace.h                        API for CM4 applic to register and handle TRACE via MBMUX
  - Sigfox_PushButton_DualCore/CM4/MbMux/radio_mbwrapper.h                      This file implements the CM4 side wrapper of the Radio interface
                                                                                shared between M0 and M4.
  - Sigfox_PushButton_DualCore/CM4/MbMux/sigfox_mbwrapper.h                     This file implements the CM0 side wrapper of the SigfoxMac interface
                                                                                shared between M0 and M4.
  - Sigfox_PushButton_DualCore/CM4/MbMux/system_mbwrapper.h                     This file implements the CM4 side wrapper of the Radio interface
                                                                                shared between M0 and M4.
  - Sigfox_PushButton_DualCore/CM4/Sigfox/App/app_sigfox.h                      Header of application of the Sigfox Middleware
  - Sigfox_PushButton_DualCore/CM4/Sigfox/App/sgfx_app.h                        provides code for the application of the SIGFOX Middleware
  - Sigfox_PushButton_DualCore/CM4/Sigfox/App/sgfx_app_version.h                Definition the version of the CM4 application
  - Sigfox_PushButton_DualCore/CM4/Sigfox/App/sgfx_eeprom_if.h                  eeprom interface to the upper module.
  - Sigfox_PushButton_DualCore/CM4/Sigfox/Target/se_nvm.h                       header to emulated SE nvm data
  - Sigfox_PushButton_DualCore/Common/Board/board_resources.h                   Header for driver at.c module
  - Sigfox_PushButton_DualCore/Common/Board/stm32wlxx_nucleo_conf.h             STM32WLxx_Nucleo board configuration file.
  - Sigfox_PushButton_DualCore/Common/MbMux/features_info.h                     Feature list and parameters TypeDefinitions
  - Sigfox_PushButton_DualCore/Common/MbMux/mbmux_table.h                       Maps the IPCC channels to memory buffers
  - Sigfox_PushButton_DualCore/Common/MbMux/msg_id.h                            MBMUX message ID enumeration
  - Sigfox_PushButton_DualCore/Common/MbMux/sigfox_info.h                       To give info to the application about Sigfox configuration
  - Sigfox_PushButton_DualCore/Common/System/sys_debug.h                        Configuration of the debug.c instances

  - Sigfox_PushButton_DualCore/CM0PLUS/Core/Src/ca_low_level.c                  This file contains the low level implementations of the Cryptographic API (CA) module.
  - Sigfox_PushButton_DualCore/CM0PLUS/Core/Src/flash_if.c                      This file contains the FLASH driver
  - Sigfox_PushButton_DualCore/CM0PLUS/Core/Src/ipcc.c                          This file provides code for the configuration
                                                                                of the IPCC instances.
  - Sigfox_PushButton_DualCore/CM0PLUS/Core/Src/ipcc_if.c                       Interface to IPCC: handles IRQs and abstract appl from Ipcc handler and ch direction
  - Sigfox_PushButton_DualCore/CM0PLUS/Core/Src/kms_low_level.c                 This file contains implementations for Key Management Services (KMS)
                                                                                module Low Level access to Flash, CRC...
  - Sigfox_PushButton_DualCore/CM0PLUS/Core/Src/lptim.c                         This file provides code for the configuration
                                                                                of the LPTIM instances.
  - Sigfox_PushButton_DualCore/CM0PLUS/Core/Src/main.c                          : Main program body
  - Sigfox_PushButton_DualCore/CM0PLUS/Core/Src/mn_lptim_if.c                   Interface between Sigfox monarch and lptim
  - Sigfox_PushButton_DualCore/CM0PLUS/Core/Src/nvms_low_level.c                This file contains definitions for Key Management Services (KMS)
                                                                                module NVM Low Level access to physical storage (Flash...)
  - Sigfox_PushButton_DualCore/CM0PLUS/Core/Src/rtc.c                           This file provides code for the configuration
                                                                                of the RTC instances.
  - Sigfox_PushButton_DualCore/CM0PLUS/Core/Src/stm32wlxx_it.c                  Interrupt Service Routines.
  - Sigfox_PushButton_DualCore/CM0PLUS/Core/Src/stm32_lpm_if.c                  Low layer function to enter/exit low power modes (stop, sleep)
  - Sigfox_PushButton_DualCore/CM0PLUS/Core/Src/subghz.c                        This file provides code for the configuration
                                                                                of the SUBGHZ instances.
  - Sigfox_PushButton_DualCore/CM0PLUS/Core/Src/sys_app.c                       Initializes HW and SW system entities (not related to the radio)
  - Sigfox_PushButton_DualCore/CM0PLUS/Core/Src/timer_if.c                      Configure RTC Alarm, Tick and Calendar manager
  - Sigfox_PushButton_DualCore/CM0PLUS/KMS/App/app_kms.c                        !!! No description found !!!
  - Sigfox_PushButton_DualCore/CM0PLUS/MbMux/features_info.c                    CM0PLUS supported features list
  - Sigfox_PushButton_DualCore/CM0PLUS/MbMux/mbmux.c                            Interface CPU2 to IPCC: multiplexer to map features to IPCC channels
  - Sigfox_PushButton_DualCore/CM0PLUS/MbMux/mbmuxif_kms.c                      Interface layer CM0PLUS Kms to MBMUX (Mailbox Multiplexer)
  - Sigfox_PushButton_DualCore/CM0PLUS/MbMux/mbmuxif_radio.c                    allows CM0PLUS applic to register and handle RADIO driver via MBMUX
  - Sigfox_PushButton_DualCore/CM0PLUS/MbMux/mbmuxif_sigfox.c                   allows CM0PLUS applic to register and handle Sigfox to MBMUX
  - Sigfox_PushButton_DualCore/CM0PLUS/MbMux/mbmuxif_sys.c                      allows CM0 applic to handle the SYSTEM MBMUX channel
  - Sigfox_PushButton_DualCore/CM0PLUS/MbMux/mbmuxif_trace.c                    Interface layer CM0PLUS Trace to MBMUX (Mailbox Multiplexer)
  - Sigfox_PushButton_DualCore/CM0PLUS/MbMux/radio_mbwrapper.c                  This file implements the CM0 side wrapper of the Radio interface
                                                                                shared between M0 and M4.
  - Sigfox_PushButton_DualCore/CM0PLUS/MbMux/sigfox_info.c                      To give info to the application about Sigfox configuration
  - Sigfox_PushButton_DualCore/CM0PLUS/MbMux/sigfox_mbwrapper.c                 This file implements the CM0 side wrapper of the sigfoxMac interface
                                                                                shared between M0 and M4.
  - Sigfox_PushButton_DualCore/CM0PLUS/Sigfox/App/app_sigfox.c                  Application of the Sigfox Middleware
  - Sigfox_PushButton_DualCore/CM0PLUS/Sigfox/App/ee.c                          Implementation of the EEPROM emulator
  - Sigfox_PushButton_DualCore/CM0PLUS/Sigfox/App/sgfx_cstimer.c                manages carrier sense timer.
  - Sigfox_PushButton_DualCore/CM0PLUS/Sigfox/App/sgfx_eeprom_if.c              eeprom interface to the sigfox component
  - Sigfox_PushButton_DualCore/CM0PLUS/Sigfox/Target/mcu_api.c                  mcu library interface
  - Sigfox_PushButton_DualCore/CM0PLUS/Sigfox/Target/mn_api.c                   monarch library interface implementation
  - Sigfox_PushButton_DualCore/CM0PLUS/Sigfox/Target/radio_board_if.c           This file provides an interface layer between MW and Radio Board
  - Sigfox_PushButton_DualCore/CM0PLUS/Sigfox/Target/rf_api.c                   rf library interface
  - Sigfox_PushButton_DualCore/CM0PLUS/Sigfox/Target/se_nvm.c                   manages SE nvm data
  - Sigfox_PushButton_DualCore/CM0PLUS/Sigfox/Target/sgfx_credentials.c         manages keys and encryption algorithm
  - Sigfox_PushButton_DualCore/CM4/Core/Src/adc.c                               This file provides code for the configuration
                                                                                of the ADC instances.
  - Sigfox_PushButton_DualCore/CM4/Core/Src/adc_if.c                            Read status related to the chip (battery level, VREF, chip temperature)
  - Sigfox_PushButton_DualCore/CM4/Core/Src/dma.c                               This file provides code for the configuration
                                                                                of all the requested memory to memory DMA transfers.
  - Sigfox_PushButton_DualCore/CM4/Core/Src/ipcc.c                              This file provides code for the configuration
                                                                                of the IPCC instances.
  - Sigfox_PushButton_DualCore/CM4/Core/Src/ipcc_if.c                           Interface to IPCC: handles IRQs and abstract appl from Ipcc handler and ch direction
  - Sigfox_PushButton_DualCore/CM4/Core/Src/main.c                              : Main program body
  - Sigfox_PushButton_DualCore/CM4/Core/Src/stm32wlxx_hal_msp.c                 This file provides code for the MSP Initialization
                                                                                and de-Initialization codes.
  - Sigfox_PushButton_DualCore/CM4/Core/Src/stm32wlxx_it.c                      Interrupt Service Routines.
  - Sigfox_PushButton_DualCore/CM4/Core/Src/stm32_lpm_if.c                      Low layer function to enter/exit low power modes (stop, sleep)
  - Sigfox_PushButton_DualCore/CM4/Core/Src/sys_app.c                           Initializes HW and SW system entities (not related to the radio)
  - Sigfox_PushButton_DualCore/CM4/Core/Src/sys_sensors.c                       Manages the sensors on the application
  - Sigfox_PushButton_DualCore/CM4/Core/Src/timer_if.c                          Configure RTC Alarm, Tick and Calendar manager
  - Sigfox_PushButton_DualCore/CM4/Core/Src/usart.c                             This file provides code for the configuration
                                                                                of the USART instances.
  - Sigfox_PushButton_DualCore/CM4/Core/Src/usart_if.c                          Configuration of UART MX driver interface for hyperterminal communication
  - Sigfox_PushButton_DualCore/CM4/MbMux/mbmux.c                                CM4 side multiplexer to map features to IPCC channels
  - Sigfox_PushButton_DualCore/CM4/MbMux/mbmuxif_kms.c                          Interface layer CM4 Kms to MBMUX (Mailbox Multiplexer)
  - Sigfox_PushButton_DualCore/CM4/MbMux/mbmuxif_radio.c                        allows CM4 applic to register and handle RADIO driver via MBMUX
  - Sigfox_PushButton_DualCore/CM4/MbMux/mbmuxif_sigfox.c                       allows CM4 applic to register and handle SigfoxWAN via MBMUX
  - Sigfox_PushButton_DualCore/CM4/MbMux/mbmuxif_sys.c                          allows CM4 applic to handle the SYSTEM MBMUX channel.
  - Sigfox_PushButton_DualCore/CM4/MbMux/mbmuxif_trace.c                        allows CM4 applic to receive by CM0 TRACE via MBMUX
  - Sigfox_PushButton_DualCore/CM4/MbMux/radio_mbwrapper.c                      This file implements the CM4 side wrapper of the Radio interface
                                                                                shared between M0 and M4.
  - Sigfox_PushButton_DualCore/CM4/MbMux/sigfox_mbwrapper.c                     This file implements the CM4 side wrapper of the Sigfox interface
                                                                                shared between M0 and M4.
  - Sigfox_PushButton_DualCore/CM4/MbMux/system_mbwrapper.c                     allows CM4 applic to handle the SYSTEM MBMUX channel.
  - Sigfox_PushButton_DualCore/CM4/Sigfox/App/app_sigfox.c                      Application of the Sigfox Middleware
  - Sigfox_PushButton_DualCore/CM4/Sigfox/App/sgfx_app.c                        provides code for the application of the sigfox Middleware
  - Sigfox_PushButton_DualCore/CM4/Sigfox/App/sgfx_eeprom_if.c                  eeprom interface to the sigfox component
  - Sigfox_PushButton_DualCore/Common/Board/board_resources.c                   Source file
  - Sigfox_PushButton_DualCore/Common/System/system_stm32wlxx.c                 CMSIS Cortex Device Peripheral Access Layer System Source File
  - Sigfox_PushButton_DualCore/Common/System/sys_debug.c                        Enables 4 debug pins for internal signals RealTime debugging


@par Hardware and Software environment 

  - This example runs on the STM32WLxx Nucleo board.

  - STM32WLxx Nucleo board Set-up    
    - Connect the Nucleo board to your PC with a USB cable type A to micro-B 
      to ST-LINK connector.
    - Please ensure that the ST-LINK connector jumpers are fitted.

  - Configure the software via the configuration files:
    - CM0PLUS (Mw and radio drivers config) 
        - sys_conf.h, radio_conf.h, mw_log_conf.h, radio_board_if.h, main.h, etc
    - CM4 (Sigfox appli)
        - app_sigfox.h, nucleo_conf.h, main.h, etc
    - Careful: 
        - STM32WLxx Nucleo requires IS_TCXO_SUPPORTED=1

  -Set Up:

             --------------------------  V    V  --------------------------
             |    Sigfox Object       |  |    |  |   Sigfox  Network      |
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
  - Open a Terminal, connected the Sigfox Object
  - UART Config = 9600, 8b, 1 stopbit, no parity, no flow control
  - Terminal Config: Select 'CR+LF' for Transmit New-Line and switch 'Local echo' on
  - Push Button 1 (it will send a sigfox message, Blue LED blinking)

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