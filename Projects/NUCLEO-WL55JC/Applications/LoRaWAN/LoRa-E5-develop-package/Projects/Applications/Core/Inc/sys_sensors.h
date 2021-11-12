
#ifndef __SENSORS_H__
#define __SENSORS_H__

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>
#include <stdbool.h>

#define SENSOR_DATA_FRAME_LEN       7
#define SENSOR_DATA_ITEM_MAX_NUM    8
#define SENSOR_DATA_BUFFER_LEN      ( SENSOR_DATA_ITEM_MAX_NUM * SENSOR_DATA_FRAME_LEN )

#define DATA_ID_TEMP                0x1001
#define DATA_ID_HUMI                0x1002
#define DATA_ID_LIGHT               0x1003
#define DATA_ID_CO2                 0x1004
#define DATA_ID_PRESS               0x1005
#define DATA_ID_SOIL_TEMP           0x1006
#define DATA_ID_SOIL_MOISTURE       0x1007
#define DATA_ID_WIND_DIRECTION      0x1008
#define DATA_ID_WIND_SPEED          0x1009
#define DATA_ID_WATER_PH            0x100A
#define DATA_ID_QUANTUM             0x100B
#define DATA_ID_DO                  0x100D
#define DATA_ID_5TE_VWC             0x100E
#define DATA_ID_5TE_BEC             0x100F
#define DATA_ID_5TE_TEMP            0x1010
#define DATA_ID_RAINFALL_1H         0x1011

#define MESSAGE_ERRNO_BASE          2000000000 // 等于lorawan节点代码中的ERROR_CODE_OFFSET
#define MESSAGE_ERRNO_TIMEOUT       2000001000 // 节点跟传感器通讯超时错误码, 10进制
#define MESSAGE_ERRNO_CRC           2000002000 // 节点跟传感器通讯校验错误码, 10进制
#define MESSAGE_ERRNO_VALUE         2000003000 // 传感器数值异常错误码, 10进制
#define MESSAGE_ERRNO_SENSOR        2000257000 // 传感器自身异常(预留), 10进制

typedef struct
{
    uint8_t channel;
    uint16_t id;
    uint32_t data;
}sensor_data_t;

void SYS_Sensor_Init( void );
void SYS_Sensor_Update_Data( void );
uint16_t SYS_Sensor_Get_Length( void );
void SYS_Sensor_Get_Buffer( uint8_t *to, uint16_t len );
void SYS_Sensor_Clean_Buffer( uint16_t len );

#ifdef __cplusplus
}
#endif

#endif
