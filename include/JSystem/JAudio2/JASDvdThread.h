#ifndef JASDVDTHREAD_H
#define JASDVDTHREAD_H

#include "dolphin/types.h"

class JASTaskThread;

/**
 * @ingroup jsystem-jaudio
 * 
 */
class JASDvd {
public:
    /* 8028FEFC */ static JASTaskThread* getThreadPointer();
    /* 8028FF04 */ static bool createThread(s32, int, u32);

    static JASTaskThread* sThread;
};

#endif /* JASDVDTHREAD_H */
