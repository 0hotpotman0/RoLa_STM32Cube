
#include "main.h"
#include "i2c_if.h"

extern I2C_HandleTypeDef hi2c2;

void SYS_I2C_Init( void )
{
    MX_I2C2_Init( );
}

void SYS_I2C_DeInit( void )
{
    MX_I2C2_DeInit( );
}

bool SYS_I2C_Test( uint8_t addr )
{
    if( HAL_I2C_IsDeviceReady( &hi2c2, addr << 1, 1, 5 ) == HAL_OK ) return true;
    else return false;
}

void SYS_I2C_Reset_Bus( void )
{
    __HAL_RCC_I2C2_CLK_DISABLE( );
    __HAL_RCC_I2C2_CLK_ENABLE( );
    __HAL_RCC_I2C2_FORCE_RESET( );
    __HAL_RCC_I2C2_RELEASE_RESET( );
  
    MX_I2C2_Init( );
}

bool SYS_I2C_Write_Buffer( uint8_t addr, uint8_t *buffer, uint16_t size )
{
    bool status = false;
    status = ( HAL_I2C_Master_Transmit( &hi2c2, addr, buffer, size, 2000 ) == HAL_OK ) ? true : false;
    return status;
}

bool SYS_I2C_Read_Buffer( uint8_t addr, uint8_t *buffer, uint16_t size )
{
    bool status = false;
    status = ( HAL_I2C_Master_Receive( &hi2c2, addr, buffer, size, 2000 ) == HAL_OK ) ? true : false;
    return status;
}
