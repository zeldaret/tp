#ifndef UTILS_COMMON_CIRCLEBUFFER_H
#define UTILS_COMMON_CIRCLEBUFFER_H

#include "dolphin/types.h"

typedef struct CircleBuffer {
    int field_0x0;
    int field_0x4;
    int field_0x8;
    u32 field_0xc;
    s32 readBuf;
    u32 field_0x14;
    u32 criticalSection;
} CircleBuffer;

s32 CircleBufferReadBytes(CircleBuffer*, u32, u32);
s32 CircleBufferWriteBytes(CircleBuffer* buf, s32 param_2, u32 param_3);
void CircleBufferInitialize(CircleBuffer* buf, s32 param_2, s32 param_3);
s32 CBGetBytesAvailableForRead(CircleBuffer* buf);

#endif /* UTILS_COMMON_CIRCLEBUFFER_H */
