/*
 * objectDictionary.h
 *
 *  Created on: Jun 28, 2025
 *      Author: 刘廷波
 */

//#ifndef OBJECTDICTIONARY_H_
//#define OBJECTDICTIONARY_H_
//
//
//
//#endif /* OBJECTDICTIONARY_H_ */

#ifndef OBJECT_DICTIONARY_H
#define OBJECT_DICTIONARY_H

#include "CO_driver.h"  // 包含CANopen驱动基础定义

#ifdef __cplusplus
extern "C" {
#endif

/* 对象字典索引宏定义 */
#define OD_INDEX_CONTROL_WORD        0x6040
#define OD_INDEX_OPERATION_MODE      0x6060
#define OD_INDEX_ACTUAL_VELOCITY     0x6064
#define OD_INDEX_TARGET_VELOCITY     0x606C
#define OD_INDEX_MAX_TORQUE          0x6077
#define OD_INDEX_DIFF_DRIVE          0x3000  // 差速控制对象索引

/* 子索引定义 */
#define OD_SUBINDEX_LINEAR_VEL       0x01
#define OD_SUBINDEX_ANGULAR_VEL      0x02

/* 数据类型定义 (确保与OD_ENTRY中类型一致) */
typedef uint16_t OD_UNSIGNED16;
typedef int8_t   OD_INTEGER8;
typedef int32_t  OD_INTEGER32;

/* 对象字典条目声明 */
extern const OD_entry_t OD[];
extern const uint16_t OD_ENTRY_COUNT;  // 对象字典条目数量

#ifdef __cplusplus
}
#endif

#endif /* OBJECT_DICTIONARY_H */
