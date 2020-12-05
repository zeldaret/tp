#ifndef __OS_H_
#define __OS_H_

struct OSThread {
    u8 unkn[0x318];
};

struct OSMessageQueue {
    u8 unkn[0x20];
};

struct OSMutex {
    u8 unkn[24];
};

typedef void* OSMessage;
extern "C" {
    void OSInitMutex(OSMutex*);
    void OSLockMutex(OSMutex*);
    void OSUnlockMutex(OSMutex*);
    void OSEnableScheduler(void);
    void OSDisableScheduler(void);
    void OSCheckActiveThreads(void);
    void OSReport_Error(char*,...);
    u32 OSGetSoundMode(void);
    void OSSuspendThread(void);
    void OSSetThreadPriority(void);
    void OSResumeThread(void);
    void OSGetThreadPriority(void);
    void OSGetConsoleType(void);
    void OSGetResetCode(void);
    void OSAllocFromArenaLo(void);
    void OSReportInit(void);
    OSThread* OSGetCurrentThread(void);
    void OSTicksToCalendarTime(void);

    u32 OSGetArenaLo();
    u32 OSGetArenaHi();
    u32 OSInitAlloc(u32 low, u32 high, int param_3);
    void OSSetArenaLo(u32 param_1);
    void OSSetArenaHi(u32 param_1);

    void OSGetTick(void);


    void OSCreateThread(OSThread* thread, void* (*func)(void*), void* param,
                    void* stack, u32 stackSize, int param_6, int param_7);
    void OSCancelThread(OSThread* thread);
    void OSDetachThread(OSThread* thread);
    bool OSIsThreadSuspended(OSThread* thread);
    bool OSIsThreadTerminated(OSThread* thread);
    void OSInitMessageQueue(OSMessageQueue *queue, OSMessage* messages, int message_count);
    void OSSetSwitchThreadCallback(void);
    void OSReceiveMessage(OSMessageQueue *queue, OSMessage message, int flags);
    void OSSendMessage(OSMessageQueue *queue, OSMessage message, int flags);
}


#endif