#ifndef JASDVDTHREAD_H
#define JASDVDTHREAD_H

#include "JSystem/JAudio2/JASTaskThread.h"
#include "dolphin/types.h"

class JASDvd {
public:
    /* 8028FEFC */ static JASTaskThread* getThreadPointer();
    /* 8028FF04 */ void createThread(s32, int, u32);

    static JASTaskThread* sThread;
};

#endif /* JASDVDTHREAD_H */
