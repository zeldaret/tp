#ifndef OSRESET_H
#define OSRESET_H

#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef s32 (*OSResetFunction)(s32);

typedef struct OSResetFunctionInfo {
    /* 0x0 */ OSResetFunction func;
    /* 0x4 */ u32 priority;
    /* 0x8 */ struct OSResetFunctionInfo* next;
    /* 0xC */ struct OSResetFunctionInfo* prev;
} OSResetFunctionInfo;

void OSRegisterResetFunction(OSResetFunctionInfo* info);
BOOL __OSCallResetFunctions(s32 param_0);
static void Reset(s32 param_0);
static void KillThreads(void);
void __OSDoHotReset(s32 param_0);
void OSResetSystem(s32 reset, u32 resetCode, BOOL forceMenu);
u32 OSGetResetCode(void);

#ifdef __cplusplus
};
#endif

#endif /* OSRESET_H */
