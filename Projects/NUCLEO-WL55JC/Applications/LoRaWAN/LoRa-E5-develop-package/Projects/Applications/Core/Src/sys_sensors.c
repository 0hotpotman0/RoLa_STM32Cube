
#include "sht31.h"
#include "sys_app.h"
#include "sys_sensors.h"

static uint8_t sensorBuffer[SENSOR_DATA_BUFFER_LEN] = { 0 }; // 
static sensor_data_t sensorData[SENSOR_DATA_ITEM_MAX_NUM] = { 0 }; // 
static int16_t sensorDataTotal = 0;
static int16_t sensorDataLen = 0;

void SYS_Sensor_Init( void )
{
    int8_t i = 0;
    
    i = 8;
    while( i-- )
    {
        if( SHT31Test( ))
        {
            SHT31Init( );
            APP_LOG( TS_OFF, VLEVEL_M, "SHT31 OK\r\n" );
            break;
        }
    }
}

void SYS_Sensor_Update_Data( void )
{
    int8_t i = 0;
    uint32_t temp = 0, humi = 0;
    
    i = 3;
    while( i-- )
    {
       if( SHT31Test( ))
        {
            getAirTemperatureAndHumidity( &temp, &humi );
            
            sensorData[sensorDataTotal].channel = 1; // sensor data use value 1
            sensorData[sensorDataTotal].id = DATA_ID_TEMP;
            sensorData[sensorDataTotal].data = temp;
            sensorDataTotal ++;
            
            sensorData[sensorDataTotal].channel = 1; // sensor data use value 1
            sensorData[sensorDataTotal].id = DATA_ID_HUMI;
            sensorData[sensorDataTotal].data = humi;
            sensorDataTotal ++;
            
            break;
        }
        else
        {
            sensorData[sensorDataTotal].channel = 1; // sensor data use value 1
            sensorData[sensorDataTotal].id = DATA_ID_TEMP;
            sensorData[sensorDataTotal].data = MESSAGE_ERRNO_VALUE;
            sensorDataTotal ++;
            
            sensorData[sensorDataTotal].channel = 1; // sensor data use value 1
            sensorData[sensorDataTotal].id = DATA_ID_HUMI;
            sensorData[sensorDataTotal].data = MESSAGE_ERRNO_VALUE;
            sensorDataTotal ++;
        }
    }
}

uint16_t SYS_Sensor_Get_Length( void )
{
    if( sensorDataLen == 0)
    {
        for( uint8_t i = 0; i < sensorDataTotal; i ++ )
        {
            sensorBuffer[i * SENSOR_DATA_FRAME_LEN] = sensorData[i].channel;
            sensorBuffer[i * SENSOR_DATA_FRAME_LEN + 1] = sensorData[i].id & 0xff;
            sensorBuffer[i * SENSOR_DATA_FRAME_LEN + 2] = ( sensorData[i].id  >> 8 ) & 0xff;
            sensorBuffer[i * SENSOR_DATA_FRAME_LEN + 3] = sensorData[i].data & 0xff;
            sensorBuffer[i * SENSOR_DATA_FRAME_LEN + 4] = ( sensorData[i].data >> 8 ) & 0xff;
            sensorBuffer[i * SENSOR_DATA_FRAME_LEN + 5] = ( sensorData[i].data >> 16 ) & 0xff;
            sensorBuffer[i * SENSOR_DATA_FRAME_LEN + 6] = ( sensorData[i].data >> 24 ) & 0xff;
            sensorDataLen += SENSOR_DATA_FRAME_LEN;
        }
    } 

    return sensorDataLen;
}

void SYS_Sensor_Get_Buffer( uint8_t *to, uint16_t len )
{
    int16_t temp = sensorDataTotal * SENSOR_DATA_FRAME_LEN - sensorDataLen;
    
    if( sensorDataLen < len ) len = sensorDataLen;
    
    for( uint16_t i = 0; i < len; i ++ )
    {
        to[i] = sensorBuffer[i + temp];
    }
}

void SYS_Sensor_Clean_Buffer( uint16_t len )
{
    if( sensorDataLen < len ) len = sensorDataLen;
    
    sensorDataLen -= len;
    
    if( sensorDataLen <= 0 )
    {
        for( uint16_t i = 0; i < SENSOR_DATA_BUFFER_LEN; i++ ) sensorBuffer[i] = 0;
        
        for( uint16_t i = 0; i < sensorDataTotal; i++ )
        {
            
            sensorData[i].channel = 0;
            sensorData[i].id = 0;
            sensorData[i].data = 0;
        }
        
        sensorDataTotal = 0;
    }
}
