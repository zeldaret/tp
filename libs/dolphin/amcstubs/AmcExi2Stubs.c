/**
 * AmcExi2Stubs.c
 * Description:
 */

#include "amcstubs/AmcExi2Stubs.h"

/* 80372CFC-80372D00 36D63C 0004+00 0/0 1/1 0/0 .text            EXI2_Init */
void EXI2_Init(vu8**, AmcEXICallback) {}

/* 80372D00-80372D04 36D640 0004+00 0/0 1/1 0/0 .text            EXI2_EnableInterrupts */
void EXI2_EnableInterrupts(void) {}

/* 80372D04-80372D0C 36D644 0008+00 0/0 2/2 0/0 .text            EXI2_Poll */
int EXI2_Poll(void) {
    return 0;
}

/* 80372D0C-80372D14 36D64C 0008+00 0/0 2/2 0/0 .text            EXI2_ReadN */
AmcExiError EXI2_ReadN(void*, u32) {
    return 0;
}

/* 80372D14-80372D1C 36D654 0008+00 0/0 1/1 0/0 .text            EXI2_WriteN */
AmcExiError EXI2_WriteN(const void*, u32) {
    return 0;
}

/* 80372D1C-80372D20 36D65C 0004+00 0/0 1/1 0/0 .text            EXI2_Reserve */
void EXI2_Reserve(void) {}

/* 80372D20-80372D24 36D660 0004+00 0/0 1/1 0/0 .text            EXI2_Unreserve */
void EXI2_Unreserve(void) {}

/* 80372D24-80372D2C 36D664 0008+00 0/0 1/1 0/0 .text            AMC_IsStub */
BOOL AMC_IsStub(void) {
    return TRUE;
}
