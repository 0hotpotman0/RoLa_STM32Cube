
#ifndef __I2C_IF_H__
#define __I2C_IF_H__

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>
#include <stdbool.h>

bool SYS_I2C_Test( uint8_t addr );
void SYS_I2C_Reset_Bus( void );
bool SYS_I2C_Write_Buffer( uint8_t addr, uint8_t *buffer, uint16_t size );
bool SYS_I2C_Read_Buffer( uint8_t addr, uint8_t *buffer, uint16_t size );

#ifdef __cplusplus
}
#endif

#endif
