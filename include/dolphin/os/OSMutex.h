#ifndef OSMUTEX_H
#define OSMUTEX_H

#include "dolphin/os/OSThread.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct OSMutex {
    /* 0x00 */ OSThreadQueue queue;
    /* 0x08 */ OSThread* thread;
    /* 0x0C */ s32 count;
    /* 0x10 */ OSMutexLink link;
} OSMutex;  // Size: 0x18

typedef struct OSCond {
    OSThreadQueue queue;
} OSCond;

void OSInitMutex(OSMutex* mutex);
void OSLockMutex(OSMutex* mutex);
void OSUnlockMutex(OSMutex* mutex);
s32 OSTryLockMutex(OSMutex* mutex);
void OSInitCond(OSCond* cond);
void OSWaitCond(OSCond* cond, OSMutex* mutex);
void OSSignalCond(OSCond* cond);

void __OSUnlockAllMutex(OSThread* thread);
s32 __OSCheckMutex(OSThread* thread);
BOOL __OSCheckDeadLock(OSThread* thread);
BOOL __OSCheckMutexes(OSThread* thread);

#ifdef __cplusplus
};
#endif

#endif /* OSMUTEX_H */
