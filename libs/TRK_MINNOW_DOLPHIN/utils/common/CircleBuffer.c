#include "TRK_MINNOW_DOLPHIN/utils/common/CircleBuffer.h"

/* 80372900-80372908 36D240 0008+00 0/0 2/2 0/0 .text            CBGetBytesAvailableForRead */
u32 CBGetBytesAvailableForRead(CircleBuffer* cb) {
    return cb->mBytesToRead;
}

/* 803728B0-80372900 36D1F0 0050+00 0/0 2/2 0/0 .text            CircleBufferInitialize */
void CircleBufferInitialize(CircleBuffer* cb, u8* buf, s32 size) {
    cb->start_ptr = buf;
    cb->size = size;
    cb->read_ptr = cb->start_ptr;
    cb->write_ptr = cb->start_ptr;
    cb->mBytesToRead = 0;
    cb->mBytesToWrite = cb->size;
    MWInitializeCriticalSection(&cb->mCriticalSection);
}

/* 803727A8-803728B0 36D0E8 0108+00 0/0 4/4 0/0 .text            CircleBufferWriteBytes */
int CircleBufferWriteBytes(CircleBuffer* cb, u8* buf, u32 size) {
    int availSize;

    if (size > cb->mBytesToWrite) {
        return -1;
    }
    MWEnterCriticalSection(&cb->mCriticalSection);
    availSize = cb->size - (cb->write_ptr - cb->start_ptr);
    if (availSize >= size) {
        memcpy(cb->write_ptr, buf, size);
        cb->write_ptr += size;
    } else {
        memcpy(cb->write_ptr, buf, availSize);
        memcpy(cb->start_ptr, buf + availSize, size - availSize);
        cb->write_ptr = cb->start_ptr + size - availSize;
    }

    if (cb->size == (cb->write_ptr - cb->start_ptr)) {
        cb->write_ptr = cb->start_ptr;
    }

    cb->mBytesToWrite -= size;
    cb->mBytesToRead += size;
    MWExitCriticalSection(&cb->mCriticalSection);
    return 0;
}

/* 803726A0-803727A8 36CFE0 0108+00 0/0 2/2 0/0 .text            CircleBufferReadBytes */
int CircleBufferReadBytes(CircleBuffer* cb, u8* buf, u32 size) {
    int availSize;

    if (size > cb->mBytesToRead) {
        return -1;
    }
    MWEnterCriticalSection(&cb->mCriticalSection);
    availSize = cb->size - (cb->read_ptr - cb->start_ptr);
    if (size < availSize) {
        memcpy(buf, cb->read_ptr, size);
        cb->read_ptr += size;
    } else {
        memcpy(buf, cb->read_ptr, availSize);
        memcpy(buf + availSize, cb->start_ptr, size - availSize);
        cb->read_ptr = cb->start_ptr + size - availSize;
    }

    if (cb->size == (cb->read_ptr - cb->start_ptr)) {
        cb->read_ptr = cb->start_ptr;
    }

    cb->mBytesToWrite += size;
    cb->mBytesToRead -= size;
    MWExitCriticalSection(&cb->mCriticalSection);
    return 0;
}
