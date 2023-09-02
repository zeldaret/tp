#ifndef JASCRITICALSECTION_H
#define JASCRITICALSECTION_H

#include "dolphin/os/OSInterrupt.h"

class JASCriticalSection {
public:
    JASCriticalSection() { mInterruptState = OSDisableInterrupts(); };
    ~JASCriticalSection() { OSRestoreInterrupts(mInterruptState); };

private:
    u32 mInterruptState;
};

#endif /* JASCRITICALSECTION_H */
