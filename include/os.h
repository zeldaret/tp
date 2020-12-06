// at some point: we should split this up into various OS/... headers. but not yet, since barely any files include this atm.

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

struct OSCalendarTime {
    s32 seconds;
    s32 minutes;
    s32 hours;
    s32 day_of_month;
    s32 month;
    s32 year;
    s32 week_day;
    s32 year_day;
    s32 milliseconds;
    s32 microseconds;
};

typedef s32 OSHeapHandle;

typedef enum OSSoundMode {
    SOUND_MODE_MONO=0,
    SOUND_MODE_STEREO=1,

    __SOUND_MODE_FORCE_ENUM_U32=0xffffffff,
} OSSoundMode;

extern "C" {
    s32 OSEnableScheduler(void);
    s32 OSDisableScheduler(void);

    s32 OSCheckActiveThreads(void);
    OSThread* OSGetCurrentThread(void);
    void OSSuspendThread(void);
    void OSSetThreadPriority(void);
    void OSResumeThread(void);
    void OSCreateThread(void);
    void OSExitThread(void *exit_val);
    void OSGetThreadPriority(void);
    s32 OSGetConsoleType(void);
    s32 OSGetResetCode(void);
    void OSReportInit(void);

    OSSoundMode OSGetSoundMode(void);
    void OSGetSoundMode(OSSoundMode mode);

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

    void OSTicksToCalendarTime(OSTime ticks, OSCalendarTime *out_time);
    OSTime OSGetTime(void);

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

    s32 OSDisableInterrupts();
    s32 OSEnableInterrupts();
    s32 OSRestoreInterrupts(s32 level);
};

#endif