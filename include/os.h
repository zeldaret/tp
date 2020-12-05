#ifndef __OS_H__
#define __OS_H__

extern "C" {
    void OSInitMutex(u8[24]);
    void OSEnableScheduler(void);
    void OSDisableScheduler(void);
    void OSCheckActiveThreads(void);
    void OSReport_Error(char*,...);
    u32 OSGetSoundMode(void);
    void OSSuspendThread(void);
    void OSSetThreadPriority(void);
    void OSResumeThread(void);
    void OSCreateThread(void);
    void OSGetThreadPriority(void);
    void OSGetConsoleType(void);
    void OSGetResetCode(void);
    void OSAllocFromArenaLo(void);
    void OSReportInit(void);
    void OSGetCurrentThread(void);
    void OSTicksToCalendarTime(void);
    void OSGetTime(void);

    u32 OSGetArenaLo();
    u32 OSGetArenaHi();
    u32 OSInitAlloc(u32 low, u32 high, int param_3);
    void OSSetArenaLo(u32 param_1);
    void OSSetArenaHi(u32 param_1);
};

#endif