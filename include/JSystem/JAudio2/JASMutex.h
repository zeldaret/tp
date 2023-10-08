#ifndef JASMUTEX_H
#define JASMUTEX_H

#include "dolphin/os/OSMutex.h"

struct JASMutexLock {
    JASMutexLock(OSMutex* mutex) {
        mMutex = mutex;
        OSLockMutex(mMutex);
    }
    ~JASMutexLock() { OSUnlockMutex(mMutex); }

    /* 0x0 */ OSMutex* mMutex;
};

#endif
