#ifndef PPC_GENERIC_TARGIMPL_H
#define PPC_GENERIC_TARGIMPL_H

#include "dolphin/types.h"

void TRKSwapAndGo();
void TRKTargetSetStopped(s32);

typedef struct TRKState {
    /* 0x00 */ u32 field_0x00[35];
    /* 0x8C */ u32 msr;
    /* 0x90 */ u32 field_0x90[2];
    /* 0x98 */ u32 target;
    /* 0x9C */ u32 field_0x9C;
    /* 0xA0 */ void* inputPendingPtr;
} TRKState;
TRKState gTRKState;

typedef struct TRKCPUState {
    /* 0x00 */ u32 field_0x00[32];
    /* 0x80 */ u32 pc;
    /* 0x84 */ u32 field_0x84[235];
} TRKCPUState;
TRKCPUState gTRKCPUState;

#endif /* PPC_GENERIC_TARGIMPL_H */
