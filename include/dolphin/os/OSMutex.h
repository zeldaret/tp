#ifndef OSMUTEX_H
#define OSMUTEX_H

#include "dolphin/types.h"
#include "dolphin/os/OSThread.h"

#ifdef __cplusplus
extern "C" {
#endif

void OSInitMutex(struct OSMutex* mutex);
void OSLockMutex(struct OSMutex* mutex);
void OSUnlockMutex(struct OSMutex* mutex);
void __OSUnlockAllMutex(struct OSThread* thread);
s32 OSTryLockMutex(struct OSMutex* mutex);
void OSInitCond(struct OSCond* cond);
void OSWaitCond(struct OSCond* cond, struct OSMutex* mutex);
void OSSignalCond(struct OSCond* cond);
s32 __OSCheckMutex(struct OSThread* thread);
BOOL __OSCheckDeadLock(struct OSThread* thread);
BOOL __OSCheckMutexes(struct OSThread* thread);

#ifdef __cplusplus
};
#endif

#endif /* OSMUTEX_H */
