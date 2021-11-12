
#ifndef __SHT31_H__
#define __SHT31_H__

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>
#include <stdbool.h>

/*!
 * SHT31 I2C address
 */
#define SHT31_I2C_ADDRESS                           0x44

#define SHT31_MEAS_HIGHREP_STRETCH                  0x2C06
#define SHT31_MEAS_MEDREP_STRETCH                   0x2C0D
#define SHT31_MEAS_LOWREP_STRETCH                   0x2C10

#define SHT31_MEAS_HIGHREP                          0x2400
#define SHT31_MEAS_MEDREP                           0x240B
#define SHT31_MEAS_LOWREP                           0x2416

#define SHT31_MEAS_PERIODIC_10MPS_HIGHREP           0x2737
#define SHT31_MEAS_PERIODIC_10MPS_MEDREP            0x2721
#define SHT31_MEAS_PERIODIC_10MPS_LOWREP            0x272A

#define SHT31_MEAS_PERIODIC_4MPS_HIGHREP            0x2334
#define SHT31_MEAS_PERIODIC_4MPS_MEDREP             0x2322
#define SHT31_MEAS_PERIODIC_4MPS_LOWREP             0x2329

#define SHT31_MEAS_PERIODIC_2MPS_HIGHREP            0x2236
#define SHT31_MEAS_PERIODIC_2MPS_MEDREP             0x2220
#define SHT31_MEAS_PERIODIC_2MPS_LOWREP             0x222B

#define SHT31_MEAS_PERIODIC_1MPS_HIGHREP            0x2130
#define SHT31_MEAS_PERIODIC_1MPS_MEDREP             0x2126
#define SHT31_MEAS_PERIODIC_1MPS_LOWREP             0x212D

#define SHT31_MEAS_PERIODIC_05MPS_HIGHREP           0x2032
#define SHT31_MEAS_PERIODIC_05MPS_MEDREP            0x2024
#define SHT31_MEAS_PERIODIC_05MPS_LOWREP            0x202F

#define SHT31_FETCH_DATA                            0xE000

#define SHT31_READSTATUS                            0xF32D
#define SHT31_CLEARSTATUS                           0x3041
#define SHT31_SOFTRESET                             0x30A2
#define SHT31_HEATEREN                              0x306D 
#define SHT31_HEATERDIS                             0x3066

bool SHT31Test( void );
void SHT31Init( void );
void getAirTemperatureAndHumidity( uint32_t *temp, uint32_t *humi );

#ifdef __cplusplus
}
#endif

#endif
