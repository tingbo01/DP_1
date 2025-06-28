/*
 * globals.c
 *
 *  Created on: Jun 28, 2025
 *      Author: 刘廷波
 */

#include "globals.h"
#include "objectDictionary.h"

OD_entry_t* getODEntry(uint16_t index, uint8_t subIndex) {
    for (uint16_t i = 0; i < OD_ENTRY_COUNT; i++) {
        if (OD[i].index == index && OD[i].subIndex == subIndex) {
            return (OD_entry_t*)&OD[i];
        }
    }
    return NULL;  // 未找到条目
}
