
#include "i2c_if.h"
#include "sht31.h"

static uint8_t SHT31I2cDeviceAddr = 0;
static bool SHT31Initialized = false;

static uint32_t temperature = 0;
static uint32_t humidity = 0;

static uint8_t crc8( const uint8_t *data, int len );
static bool SHT31WriteBuffer( uint8_t *data, uint8_t size );
static bool SHT31ReadBuffer( uint8_t *data, uint8_t size );
static void SHT31SetDeviceAddr( uint8_t addr );
static uint8_t SHT31GetDeviceAddr( void );
static void SHT31WriteCommand( uint16_t cmd );
static void SHT31Reset( void );
static void getTemperatureAndHumidity( void );

static uint8_t crc8( const uint8_t *data, int len )
{
    const uint8_t POLYNOMIAL = 0x31;
    uint8_t crc = 0xFF;

    for(int j = len; j; --j)
    {
        crc ^= *data++;

        for(int i = 8; i; --i)
        {
            crc = (crc & 0x80) ? (crc << 1) ^ POLYNOMIAL : (crc << 1);
        }
    }
    
    return crc; 
}

static void SHT31SetDeviceAddr( uint8_t addr )
{
    SHT31I2cDeviceAddr = addr;
}

static uint8_t SHT31GetDeviceAddr( void )
{
    return SHT31I2cDeviceAddr;
}

static bool SHT31WriteBuffer( uint8_t *data, uint8_t size )
{  
    return SYS_I2C_Write_Buffer( SHT31I2cDeviceAddr << 1, data, size );
}

static bool SHT31ReadBuffer( uint8_t *data, uint8_t size )
{    
    return SYS_I2C_Read_Buffer( SHT31I2cDeviceAddr << 1, data, size );
}

static void SHT31WriteCommand( uint16_t cmd ) 
{
    uint8_t buffer[2] = {0, };
    
    buffer[0] = cmd >> 8;
    buffer[1] = cmd & 0xff;
    
    SHT31WriteBuffer( buffer, 2 );
}

static void SHT31Reset( void )
{
    SHT31WriteCommand( SHT31_SOFTRESET );
}

static void getTemperatureAndHumidity( void )
{
    uint8_t readbuffer[6] = { 0, };
    uint16_t ST = 0, SRH = 0;
    int64_t temp = 0, humi = 0;
    
    SHT31WriteCommand( SHT31_FETCH_DATA );
    SHT31ReadBuffer( readbuffer, 6 );
    
    ST = readbuffer[0];
    ST <<= 8;
    ST |= readbuffer[1];

    if(readbuffer[2] != crc8( readbuffer, 2 )) return false;

    SRH = readbuffer[3];
    SRH <<= 8;
    SRH |= readbuffer[4];

    if(readbuffer[5] != crc8( readbuffer + 3, 2 )) return false;

    temp = (int64_t)ST * 175 * 1000 / 0xffff - 45 * 1000;
    humi = (int64_t)SRH * 100 * 1000 / 0xffff;
    temperature = temp / 10 * 10;
    humidity = humi / 10 * 10;
}

bool SHT31Test( void )
{
    return SYS_I2C_Test( SHT31_I2C_ADDRESS );
}

void SHT31Init( void )
{
    SHT31SetDeviceAddr( SHT31_I2C_ADDRESS );
    SHT31Reset( );
    HAL_Delay( 1 ); // it needs to wait 1ms after soft reset 
    SHT31WriteCommand( SHT31_MEAS_PERIODIC_10MPS_HIGHREP );
}

void getAirTemperatureAndHumidity( uint32_t *temp, uint32_t *humi )
{
    getTemperatureAndHumidity( );
    if( temp ) *temp = temperature;
    if( humi ) *humi = humidity;
}
