#include "TRK_MINNOW_DOLPHIN/utils/common/CircleBuffer.h"
#include "TRK_MINNOW_DOLPHIN/utils/common/MWTrace.h"
#include "amcstubs/AmcExi2Stubs.h"

#define DDH_ERR_NOT_INITIALIZED -0x2711
#define DDH_ERR_ALREADY_INITIALIZED -0x2715
#define DDH_ERR_READ_ERROR -0x2719

#define DDH_BUF_SIZE (0x800)

/* 80450030-80450050 07CD50 001C+04 3/3 0/0 0/0 .bss             gRecvCB */
static CircleBuffer gRecvCB;

/* 8044F830-80450030 07C550 0800+00 1/1 0/0 0/0 .bss             gRecvBuf */
static u8 gRecvBuf[DDH_BUF_SIZE];

/* 804519C0-804519C8 000EC0 0004+04 3/3 0/0 0/0 .sbss            gIsInitialized */
static BOOL gIsInitialized;

/* 80372618-803726A0 36CF58 0088+00 0/0 1/1 0/0 .text            ddh_cc_initialize */
int ddh_cc_initialize(void* inputPendingPtrRef, AmcEXICallback monitorCallback) {
    MWTRACE(1, "CALLING EXI2_Init\n");
    EXI2_Init(inputPendingPtrRef, monitorCallback);
    MWTRACE(1, "DONE CALLING EXI2_Init\n");
    CircleBufferInitialize(&gRecvCB, gRecvBuf, DDH_BUF_SIZE);
    return 0;
}

/* 80372610-80372618 36CF50 0008+00 0/0 1/1 0/0 .text            ddh_cc_shutdown */
int ddh_cc_shutdown() {
    return 0;
}

/* 803725EC-80372610 36CF2C 0024+00 0/0 1/1 0/0 .text            ddh_cc_open */
int ddh_cc_open() {
    if (gIsInitialized != 0) {
        return DDH_ERR_ALREADY_INITIALIZED;
    }

    gIsInitialized = TRUE;
    return 0;
}

/* 803725E4-803725EC 36CF24 0008+00 0/0 1/1 0/0 .text            ddh_cc_close */
int ddh_cc_close() {
    return 0;
}

/* 803724F8-803725E4 36CE38 00EC+00 0/0 1/1 0/0 .text            ddh_cc_read */
int ddh_cc_read(u8* data, int size) {
    u8 buff[DDH_BUF_SIZE];
    int originalDataSize;
    u32 result;
    int expectedDataSize;
    int poll;

    result = 0;
    if (!gIsInitialized) {
        return DDH_ERR_NOT_INITIALIZED;
    }

    MWTRACE(1, "Expected packet size : 0x%08x (%ld)\n", size, size);

    originalDataSize = expectedDataSize = size;
    while ((u32)CBGetBytesAvailableForRead(&gRecvCB) < expectedDataSize) {
        result = 0;

        poll = EXI2_Poll();
        if (poll != 0) {
            result = EXI2_ReadN(buff, poll);
            if (result == 0) {
                CircleBufferWriteBytes(&gRecvCB, buff, poll);
            }
        }
    }

    if (result == 0) {
        CircleBufferReadBytes(&gRecvCB, data, originalDataSize);
    } else {
        MWTRACE(8, "cc_read : error reading bytes from EXI2 %ld\n", result);
    }

    return result;
}

/* 80372438-803724F8 36CD78 00C0+00 0/0 1/1 0/0 .text            ddh_cc_write */
int ddh_cc_write(const u8* bytes, int length) {
    int exi2Len;
    int n_copy;
    u32 hexCopy;

    hexCopy = (u32)bytes;
    n_copy = length;

    if (gIsInitialized == FALSE) {
        MWTRACE(8, "cc not initialized\n");
        return DDH_ERR_NOT_INITIALIZED;
    }

    MWTRACE(8, "cc_write : Output data 0x%08x %ld bytes\n", bytes, length);

    while (n_copy > 0) {
        MWTRACE(1, "cc_write sending %ld bytes\n", n_copy);
        exi2Len = EXI2_WriteN((const void*)hexCopy, n_copy);
        if (exi2Len == AMC_EXI_NO_ERROR) {
            break;
        }
        hexCopy += exi2Len;
        n_copy -= exi2Len;
    }

    return 0;
}

/* 80372414-80372438 36CD54 0024+00 0/0 1/1 0/0 .text            ddh_cc_pre_continue */
int ddh_cc_pre_continue() {
    EXI2_Unreserve();
    return 0;
}

/* 803723F0-80372414 36CD30 0024+00 0/0 1/1 0/0 .text            ddh_cc_post_stop */
int ddh_cc_post_stop() {
    EXI2_Reserve();
    return 0;
}

/* 80372380-803723F0 36CCC0 0070+00 0/0 1/1 0/0 .text            ddh_cc_peek */
int ddh_cc_peek() {
    int poll;
    u8 buff[DDH_BUF_SIZE];

    poll = EXI2_Poll();
    if (poll <= 0) {
        return 0;
    }

    if (EXI2_ReadN(buff, poll) == 0) {
        CircleBufferWriteBytes(&gRecvCB, buff, poll);
    } else {
        return DDH_ERR_READ_ERROR;
    }

    return poll;
}

/* 8037235C-80372380 36CC9C 0024+00 0/0 1/1 0/0 .text            ddh_cc_initinterrupts */
int ddh_cc_initinterrupts() {
    EXI2_EnableInterrupts();
    return 0;
}
