/*
 * globals.h
 *
 *  Created on: Jun 28, 2025
 *      Author: 刘廷波
 */

#ifndef GLOBALS_H
#define GLOBALS_H

#include "objectDictionary.h"
#include "301/CO_driver.h"   // 确保包含 OD_entry_t 的定义

// 使用正确的类型
extern const OD_entry_t OD[];

// 使用条件编译防止宏重复定义
#ifndef OD_ENTRY
#define OD_ENTRY(index, subIndex) \
    {index, subIndex, 0, NULL, 0}
#endif


/* 函数声明 */
OD_entry_t* getODEntry(uint16_t index, uint8_t subIndex);

#endif /* GLOBALS_H */
