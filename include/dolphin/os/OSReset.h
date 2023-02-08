#ifndef OSRESET_H
#define OSRESET_H

#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

vu32 __PIRegs[12] : 0xCC003000;

#define OS_RESETCODE_RESTART 0x80000000
#define OS_RESETCODE_SYSTEM 0x40000000

#define OS_RESETCODE_EXEC 0xC0000000
#define OS_RESETCODE_NETCONFIG 0xC0010000

#define OS_RESET_TIMEOUT OSMillisecondsToTicks(1000)

#define OS_RESET_RESTART 0
#define OS_RESET_HOTRESET 1
#define OS_RESET_SHUTDOWN 2

#define OS_RESET_PRIO_SO 110
#define OS_RESET_PRIO_IP 111
#define OS_RESET_PRIO_CARD 127
#define OS_RESET_PRIO_PAD 127
#define OS_RESET_PRIO_GX 127
#define OS_RESET_PRIO_ALARM 4294967295

typedef s32 (*OSResetFunction)(s32);

typedef struct OSResetFunctionInfo {
    /* 0x0 */ OSResetFunction func;
    /* 0x4 */ u32 priority;
    /* 0x8 */ struct OSResetFunctionInfo* next;
    /* 0xC */ struct OSResetFunctionInfo* prev;
} OSResetFunctionInfo;

typedef struct OSResetQueue {
    OSResetFunctionInfo* first;
    OSResetFunctionInfo* last;
} OSResetQueue;

void OSRegisterResetFunction(OSResetFunctionInfo* info);
BOOL __OSCallResetFunctions(u32 param_0);
static void Reset(s32 param_0);
static void KillThreads(void);
void __OSDoHotReset(s32 param_0);
void OSResetSystem(int reset, u32 resetCode, BOOL forceMenu);
u32 OSGetResetCode(void);

#ifdef __cplusplus
};
#endif

#endif /* OSRESET_H */
