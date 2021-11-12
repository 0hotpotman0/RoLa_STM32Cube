
#ifndef __CRC16_CCITT_H__
#define __CRC16_CCITT_H__

#include <stdint.h>
#include <stdbool.h>

#define CRC16_CCITT_NUMS    2

uint16_t GetCrc16(uint8_t *buf, uint16_t len);
bool Crc16Check(uint8_t *buf, uint16_t len);

#endif
