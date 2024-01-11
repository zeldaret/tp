// Translation Unit: utils/common/CircleBuffer

#include "TRK_MINNOW_DOLPHIN/utils/common/CircleBuffer.h"
#include "dolphin/types.h"

/* 803726A0-803727A8 36CFE0 0108+00 0/0 2/2 0/0 .text            CircleBufferReadBytes */
s32 CircleBufferReadBytes(CircleBuffer* cb, u8* buf, u32 size) {
    int temp;

    if (size > cb->mBytesToRead) {
        return -1;
    }
    MWEnterCriticalSection(&cb->mCriticalSection);
    temp = cb->field_0xc - (cb->field_0x0 - cb->field_0x8);
    if (size < temp) {
        memcpy(buf, cb->field_0x0, size);
        cb->field_0x0 += size;
    } else {
        memcpy(buf, cb->field_0x0, temp);
        memcpy(buf + temp, cb->field_0x8, size - temp);
        cb->field_0x0 = cb->field_0x8 + size - temp;
    }

    if (cb->field_0xc == (cb->field_0x0 - cb->field_0x8)) {
        cb->field_0x0 = cb->field_0x8;
    }

    cb->mBytesToWrite += size;
    cb->mBytesToRead -= size;
    MWExitCriticalSection(&cb->mCriticalSection);
    return 0;
}

/* 803727A8-803728B0 36D0E8 0108+00 0/0 4/4 0/0 .text            CircleBufferWriteBytes */
s32 CircleBufferWriteBytes(CircleBuffer* cb, u8* buf, u32 size) {
    s32 temp;

    if (size > cb->mBytesToWrite) {
        return -1;
    }
    MWEnterCriticalSection(&cb->mCriticalSection);
    temp = cb->field_0xc - (cb->field_0x4 - cb->field_0x8);
    if (temp >= size) {
        memcpy(cb->field_0x4, buf, size);
        cb->field_0x4 += size;
    } else {
        memcpy(cb->field_0x4, buf, temp);
        memcpy(cb->field_0x8, buf + temp, size - temp);
        cb->field_0x4 = cb->field_0x8 + size - temp;
    }

    if (cb->field_0xc == (cb->field_0x4 - cb->field_0x8)) {
        cb->field_0x4 = cb->field_0x8;
    }

    cb->mBytesToWrite -= size;
    cb->mBytesToRead += size;
    MWExitCriticalSection(&cb->mCriticalSection);
    return 0;
}

/* 803728B0-80372900 36D1F0 0050+00 0/0 2/2 0/0 .text            CircleBufferInitialize */
void CircleBufferInitialize(CircleBuffer* cb, u8* buf, s32 size) {
    cb->field_0x8 = buf;
    cb->field_0xc = size;
    cb->field_0x0 = cb->field_0x8;
    cb->field_0x4 = cb->field_0x8;
    cb->mBytesToRead = 0;
    cb->mBytesToWrite = cb->field_0xc;
    MWInitializeCriticalSection(&cb->mCriticalSection);
}

/* 80372900-80372908 36D240 0008+00 0/0 2/2 0/0 .text            CBGetBytesAvailableForRead */
u32 CBGetBytesAvailableForRead(CircleBuffer* cb) {
    return cb->mBytesToRead;
}
