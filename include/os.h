#ifndef __OS_H__
#define __OS_H__


/* TODO: more structs, and get rid of the ones that are faked! */

struct OSMutex {
    u8 x[24];
};

struct OSMutexLink {
    struct OSMutex * prev;
    struct OSMutex * next;
};

struct OSMutexQueue {
    struct OSMutex * prev;
    struct OSMutex * next;
};

struct OSThread {
    u8 x[792];
};

struct OSThreadLink {
    struct OSThread * prev;
    struct OSThread * next;
};

struct OSThreadQueue {
    struct OSThread * head;
    struct OSThread * tail;
};

struct OSCond {
    struct OSThreadQueue queue;
};

typedef void* OSMessage;

struct OSMessageQueue {
    struct OSThreadQueue sending_queue;
    struct OSThreadQueue receiving_queue;
    void **message_array;
    s32 num_messages;
    s32 first_index;
    s32 num_used;
};

typedef u32 OSTick;
typedef s64 OSTime;

typedef s32 OSHeapHandle;

extern "C" {
    void OSEnableScheduler(void);
    void OSDisableScheduler(void);
    void OSCheckActiveThreads(void);
    u32 OSGetSoundMode(void);
    void OSSuspendThread(void);
    void OSSetThreadPriority(void);
    void OSResumeThread(void);
    void OSCreateThread(void);
    void OSGetThreadPriority(void);
    void OSGetConsoleType(void);
    void OSGetResetCode(void);
    void OSReportInit(void);
    OSThread* OSGetCurrentThread(void);
    void OSTicksToCalendarTime(void);
    void OSGetTime(void);

    void OSAttention(char *msg);
    void OSPanic(char *file, s32 line, char* fmt, ...);
    void OSReport(char *fmt, ...);
    void OSReport_Error(char* fmt, ...);
    void OSReport_FatalError(char* fmt, ...);
    void OSReport_System(char* fmt, ...);
    void OSReport_Warning(char* fmt, ...);
    void OSReportDisable(void);
    void OSReportEnable(void);
    void OSReportForceEnableOff(void);
    void OSReportForceEnableOn(void);
    void OSReportInit(void);
    void OSSwitchFiberEx(u32, u32, u32, u32, u32, u32);
    void OSVAttention(char *, /*__gnuc_va_list*/ void*);

    u32 OSGetArenaLo();
    u32 OSGetArenaHi();
    u32 OSInitAlloc(u32 low, u32 high, int param_3);
    void OSSetArenaLo(u32 param_1);
    void OSSetArenaHi(u32 param_1);
    void OSAllocFromArenaLo(u32 size, int alignment);

    // void OSCancelAlarm(OSAlarm *alarm);

    void OSInitMutex(OSMutex *mutex);
    void OSLocKMutex(OSMutex *mutex);
    void OSTryLockMutex(OSMutex *mutex);
    void OSUnlockMutex(OSMutex *mutex);
};

#endif