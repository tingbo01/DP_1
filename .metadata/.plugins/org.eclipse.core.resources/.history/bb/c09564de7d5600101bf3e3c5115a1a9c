/*
 * objectDictionary.c
 *
 *  Created on: Jun 28, 2025
 *      Author: 刘廷波
 */


//#include "objectDictionary.h"
//#include "301/CO_driver.h"
//
///* 对象字典条目数量 */
//const uint16_t OD_ENTRY_COUNT = 10;  // 根据实际条目数调整
//
///* 对象字典定义 */
//const OD_entry_t OD[OD_ENTRY_COUNT] = {
//    /* 0x60xx: 电机控制对象 */
//    OD_ENTRY(0x6040, 0x00, OD_accessReadWrite, OD_TYPE_UNSIGNED16, 0x6060), /* 控制字 */
//    OD_ENTRY(0x6060, 0x00, OD_accessReadWrite, OD_TYPE_INTEGER8, 0x08),      /* 运行模式：速度模式 */
//    OD_ENTRY(0x6064, 0x00, OD_accessReadOnly, OD_TYPE_INTEGER32, 0),        /* 实际速度 */
//    OD_ENTRY(0x606C, 0x00, OD_accessReadWrite, OD_TYPE_INTEGER32, 0),       /* 目标速度 */
//    OD_ENTRY(0x6077, 0x00, OD_accessReadWrite, OD_TYPE_UNSIGNED16, 1000),   /* 最大转矩限制 */
//
//    /* 0x30xx: 自定义差速控制对象 */
//    OD_ENTRY(0x3000, 0x01, OD_accessReadWrite, OD_TYPE_INTEGER32, 0),        /* 线速度 (0.001 m/s) */
//    OD_ENTRY(0x3000, 0x02, OD_accessReadWrite, OD_TYPE_INTEGER32, 0),        /* 角速度 (0.001 rad/s) */
//
//    // ...其他条目...
//
//    /* PDO映射配置示例 */
//    OD_ENTRY(0x1600, 0x01, OD_accessReadWrite, OD_TYPE_UNSIGNED32, 0x60400010), // RPDO1映射控制字
//    OD_ENTRY(0x1600, 0x02, OD_accessReadWrite, OD_TYPE_UNSIGNED32, 0x606C0020)  // RPDO1映射目标速度
//};
//// 文件末尾添加
//const uint16_t OD_SIZE = sizeof(OD) / sizeof(OD[0]);

#include "objectDictionary.h"
#include "CO_ODinterface.h"  // 确保包含头文件

// 添加完整的结构体定义
struct OD_extension_t {
    uint8_t flagsPDO[4];    // PDO标志位数组 (每bit对应一个子索引)
    uint16_t timestamp;     // 最后更新时间戳
    // 可根据需要添加其他成员
    // 例如：uint32_t customData;
};

// 对象字典条目定义
const OD_entry_t OD[] = {
    // 设备类型 (1000h)
    {
        .index = 0x1000,
        .subIndex = 0x00,
        .attribute = ODA_R | ODA_TPDO,
        .dataLength = sizeof(uint32_t),
        .data = &OD_RAM.x1000_deviceType,
        .extension = NULL
    },

    // 错误寄存器 (1001h)
    {
        .index = 0x1001,
        .subIndex = 0x00,
        .attribute = ODA_R | ODA_TPDO,
        .dataLength = sizeof(uint8_t),
        .data = &OD_RAM.x1001_errorRegister,
        .extension = NULL
    },

    // 制造商状态寄存器 (1002h)
    {
        .index = 0x1002,
        .subIndex = 0x00,
        .attribute = ODA_R,
        .dataLength = sizeof(uint32_t),
        .data = &OD_RAM.x1002_manufacturerStatusRegister,
        .extension = NULL
    },

    // 预定义错误字段 (1003h)
    {
        .index = 0x1003,
        .subIndex = 0x00,
        .attribute = ODA_R | ODA_TPDO,
        .dataLength = sizeof(uint8_t),
        .data = &OD_RAM.x1003_preDefinedErrorField[0],
        .extension = NULL
    },

    // 伺服控制模式 (6060h) - 关键项
    {
        .index = 0x6060,
        .subIndex = 0x00,
        .attribute = ODA_RW | ODA_RPDO | ODA_TPDO,
        .dataLength = sizeof(int8_t),
        .data = &OD_RAM.x6060_modesOfOperation,
        .extension = (void*)&(OD_extension_t){  // 初始化扩展结构
            .flagsPDO = {0},
            .timestamp = 0
        }
    },

    // 控制字 (6040h) - 关键项
    {
        .index = 0x6040,
        .subIndex = 0x00,
        .attribute = ODA_RW | ODA_RPDO | ODA_TPDO,
        .dataLength = sizeof(uint16_t),
        .data = &OD_RAM.x6040_controlWord,
        .extension = (void*)&(OD_extension_t){
            .flagsPDO = {0},
            .timestamp = 0
        }
    },

    // 目标速度 (60FFh) - 轮廓速度模式关键项
    {
        .index = 0x60FF,
        .subIndex = 0x00,
        .attribute = ODA_RW | ODA_RPDO,
        .dataLength = sizeof(int32_t),
        .data = &OD_RAM.x60FF_targetVelocity,
        .extension = (void*)&(OD_extension_t){
            .flagsPDO = {0},
            .timestamp = 0
        }
    },

    // 添加其他必要的对象字典条目...

    // 数组结束标记
    {0, 0, 0, 0, NULL, NULL}
};

// 对象字典大小定义
const uint16_t OD_SIZE = sizeof(OD) / sizeof(OD[0]);

// 对象字典访问函数
ODR_t OD_readOriginal(OD_stream_t *stream, void *buf, size_t count, size_t *countRead) {
    // 实现读取逻辑
    const OD_entry_t *entry = stream->entry;
    if (entry->dataLength < count) {
        count = entry->dataLength;
    }

    memcpy(buf, entry->data, count);
    *countRead = count;
    return ODR_OK;
}

ODR_t OD_writeOriginal(OD_stream_t *stream, const void *buf, size_t count, size_t *countWritten) {
    // 实现写入逻辑
    const OD_entry_t *entry = stream->entry;
    if (entry->dataLength < count) {
        count = entry->dataLength;
    }

    memcpy(entry->data, buf, count);
    *countWritten = count;

    // 特殊处理关键项
    if (entry->index == 0x6060) { // 模式变更
        handleModeChange(*(int8_t*)entry->data);
    }
    else if (entry->index == 0x6040) { // 控制字变更
        handleControlWordChange(*(uint16_t*)entry->data);
    }

    return ODR_OK;
}

// 处理模式变更的辅助函数
static void handleModeChange(int8_t mode) {
    switch (mode) {
        case 3: // 轮廓速度模式
            configureVelocityMode();
            break;
        case 1: // 轮廓位置模式
            configurePositionMode();
            break;
        case 4: // 轮廓转矩模式
            configureTorqueMode();
            break;
        default:
            // 不支持的模态
            logUnsupportedMode(mode);
            break;
    }
}

// 处理控制字变更的辅助函数
static void handleControlWordChange(uint16_t cw) {
    // 检查是否启用驱动
    if ((cw & 0x000F) == 0x000F) {
        enableDrive();
    }
    // 检查是否故障复位
    else if ((cw & 0x0080) && (cw & 0x000F) == 0x0000) {
        resetFault();
    }
}
