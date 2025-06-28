/*
 * globals.c
 *
 *  Created on: Jun 28, 2025
 *      Author: 刘廷波
 */

#include "globals.h"
#include "objectDictionary.h" // 确保包含头文件

OD_entry_t* getODEntry(uint16_t index, uint8_t subIndex) {
    for (uint16_t i = 0; i < OD_SIZE; i++) {  // 使用全局变量OD_SIZE
        if (OD[i].index == index && OD[i].subIndex == subIndex) {
            return (OD_entry_t*)&OD[i];
        }
    }
    return NULL;
}
