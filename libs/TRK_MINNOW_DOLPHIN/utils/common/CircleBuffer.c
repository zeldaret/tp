// Translation Unit: utils/common/CircleBuffer

#include "TRK_MINNOW_DOLPHIN/utils/common/CircleBuffer.h"
#include "TRK_MINNOW_DOLPHIN/utils/gc/MWCriticalSection_gc.h"
#include "dolphin/types.h"

/* 803726A0-803727A8 36CFE0 0108+00 0/0 2/2 0/0 .text            CircleBufferReadBytes */
s32 CircleBufferReadBytes(CircleBuffer* buf, u32 param_2, u32 param_3) {
    int temp;
    if (param_3 > buf->readBuf) {
        return -1;
    } else {
        MWEnterCriticalSection(&buf->criticalSection);
        temp = buf->field_0xc - (buf->field_0x0 - buf->field_0x8);
        if (param_3 < temp) {
            memcpy(param_2, buf->field_0x0, param_3);
            buf->field_0x0 += param_3;
        } else {
            memcpy(param_2, buf->field_0x0, temp);
            memcpy(param_2 + temp, buf->field_0x8, param_3 - temp);
            buf->field_0x0 = buf->field_0x8 + param_3 - temp;
        }

        if (buf->field_0xc == (buf->field_0x0 - buf->field_0x8)) {
            buf->field_0x0 = buf->field_0x8;
        }

        buf->field_0x14 += param_3;
        buf->readBuf -= param_3;
        MWExitCriticalSection(&buf->criticalSection);
        return 0;
    }
}

/* 803727A8-803728B0 36D0E8 0108+00 0/0 4/4 0/0 .text            CircleBufferWriteBytes */
s32 CircleBufferWriteBytes(CircleBuffer* buf, s32 param_2, u32 param_3) {
    s32 temp;

    if (param_3 > buf->field_0x14) {
        return -1;
    } else {
        MWEnterCriticalSection(&buf->criticalSection);
        temp = buf->field_0xc - (buf->field_0x4 - buf->field_0x8);
        if (temp >= param_3) {
            memcpy(buf->field_0x4, param_2, param_3);
            buf->field_0x4 += param_3;
        } else {
            memcpy(buf->field_0x4, param_2, temp);
            memcpy(buf->field_0x8, param_2 + temp, param_3 - temp);
            buf->field_0x4 = buf->field_0x8 + param_3 - temp;
        }

        if (buf->field_0xc == (buf->field_0x4 - buf->field_0x8)) {
            buf->field_0x4 = buf->field_0x8;
        }

        buf->field_0x14 -= param_3;
        buf->readBuf += param_3;
        MWExitCriticalSection(&buf->criticalSection);
        return 0;
    }
}

/* 803728B0-80372900 36D1F0 0050+00 0/0 2/2 0/0 .text            CircleBufferInitialize */
void CircleBufferInitialize(CircleBuffer* buf, s32 param_2, s32 param_3) {
    buf->field_0x8 = param_2;
    buf->field_0xc = param_3;
    buf->field_0x0 = buf->field_0x8;
    buf->field_0x4 = buf->field_0x8;
    buf->readBuf = 0;
    buf->field_0x14 = buf->field_0xc;
    MWInitializeCriticalSection(&buf->criticalSection);
}

/* 80372900-80372908 36D240 0008+00 0/0 2/2 0/0 .text            CBGetBytesAvailableForRead */
s32 CBGetBytesAvailableForRead(CircleBuffer* buf) {
    return buf->readBuf;
}
