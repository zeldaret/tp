#include "TRK_MINNOW_DOLPHIN/utils/common/CircleBuffer.h"
#include "TRK_MINNOW_DOLPHIN/utils/common/MWTrace.h"
#include <dolphin/db.h>
#include <dolphin/amc/AmcExi2Comm.h>

#define GDEV_BUF_SIZE (0x500)

/* 80450550-8045056C 07D270 001C+00 3/3 0/0 0/0 .bss             gRecvCB */
static CircleBuffer gRecvCB;

/* 80450050-80450550 07CD70 0500+00 1/1 0/0 0/0 .bss             gRecvBuf */
static u8 gRecvBuf[GDEV_BUF_SIZE];

/* 804519C8-804519D0 000EC8 0004+04 3/3 0/0 0/0 .sbss            gIsInitialized */
static BOOL gIsInitialized;

/* 80372BCC-80372C54 36D50C 0088+00 0/0 1/1 0/0 .text            gdev_cc_initialize */
int gdev_cc_initialize(void* inputPendingPtrRef, EXICallback monitorCallback) {
    MWTRACE(1, "CALLING EXI2_Init\n");
    DBInitComm(inputPendingPtrRef, (int*)monitorCallback);
    MWTRACE(1, "DONE CALLING EXI2_Init\n");
    CircleBufferInitialize(&gRecvCB, gRecvBuf, GDEV_BUF_SIZE);
    return 0;
}

/* 80372BC4-80372BCC 36D504 0008+00 0/0 1/1 0/0 .text            gdev_cc_shutdown */
int gdev_cc_shutdown() {
    return 0;
}

/* 80372BA0-80372BC4 36D4E0 0024+00 0/0 1/1 0/0 .text            gdev_cc_open */
int gdev_cc_open() {
    if (gIsInitialized != 0) {
        return -10005;
    }

    gIsInitialized = TRUE;
    return 0;
}

/* 80372B98-80372BA0 36D4D8 0008+00 0/0 1/1 0/0 .text            gdev_cc_close */
int gdev_cc_close() {
    return 0;
}

/* 80372AA4-80372B98 36D3E4 00F4+00 0/0 1/1 0/0 .text            gdev_cc_read */
int gdev_cc_read(u8* data, int size) {
    u8 buff[GDEV_BUF_SIZE];
    int p1;
    u32 retval;
    int p2;
    int poll;
    retval = 0;
    if (!gIsInitialized) {
        return -0x2711;
    }

    MWTRACE(1, "Expected packet size : 0x%08x (%ld)\n", size, size);

    p1 = size;
    p2 = size;
    while ((u32)CBGetBytesAvailableForRead(&gRecvCB) < p2) {
        retval = 0;
        poll = DBQueryData();
        if (poll != 0) {
            retval = DBRead(buff, p2);
            if (retval == 0) {
                CircleBufferWriteBytes(&gRecvCB, buff, poll);
            }
        }
    }

    if (retval == 0) {
        CircleBufferReadBytes(&gRecvCB, data, p1);
    } else {
        MWTRACE(8, "cc_read : error reading bytes from EXI2 %ld\n", retval);
    }

    return retval;
}

/* 803729E4-80372AA4 36D324 00C0+00 0/0 1/1 0/0 .text            gdev_cc_write */
int gdev_cc_write(const u8* bytes, int length) {
    int exi2Len;
    int n_copy;
    u32 hexCopy;

    hexCopy = (u32)bytes;
    n_copy = length;

    if (gIsInitialized == FALSE) {
        MWTRACE(8, "cc not initialized\n");
        return -0x2711;
    }

    MWTRACE(8, "cc_write : Output data 0x%08x %ld bytes\n", bytes, length);

    while (n_copy > 0) {
        MWTRACE(1, "cc_write sending %ld bytes\n", n_copy);
        exi2Len = DBWrite((const void*)hexCopy, n_copy);
        if (exi2Len == AMC_EXI_NO_ERROR) {
            break;
        }
        hexCopy += exi2Len;
        n_copy -= exi2Len;
    }

    return 0;
}

/* 803729C0-803729E4 36D300 0024+00 0/0 1/1 0/0 .text            gdev_cc_pre_continue */
int gdev_cc_pre_continue() {
    DBClose();
    return 0;
}

/* 8037299C-803729C0 36D2DC 0024+00 0/0 1/1 0/0 .text            gdev_cc_post_stop */
int gdev_cc_post_stop() {
    DBOpen();
    return 0;
}

/* 8037292C-8037299C 36D26C 0070+00 0/0 1/1 0/0 .text            gdev_cc_peek */
int gdev_cc_peek() {
    int poll;
    u8 buff[GDEV_BUF_SIZE];

    poll = DBQueryData();
    if (poll <= 0) {
        return 0;
    }

    if ((int)DBRead(buff, poll) == 0) {
        CircleBufferWriteBytes(&gRecvCB, buff, poll);
    } else {
        return -0x2719;
    }

    return poll;
}

/* 80372908-8037292C 36D248 0024+00 0/0 1/1 0/0 .text            gdev_cc_initinterrupts */
int gdev_cc_initinterrupts() {
    DBInitInterrupts();
    return 0;
}
