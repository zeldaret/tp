// at some point: we should split this up into various OS/... headers. but not yet, since barely any
// files include this atm.

#ifndef __OS_H__
#define __OS_H__

#include "dolphin/types.h"

/* TODO: more structs, and get rid of the ones that are faked! */

#define OS_MESSAGE_NON_BLOCKING 0
#define OS_MESSAGE_BLOCKING 1

struct OSMutex {
    u8 unk[24];
};

struct OSMutexLink {
    struct OSMutex* prev;
    struct OSMutex* next;
};

struct OSMutexQueue {
    struct OSMutex* prev;
    struct OSMutex* next;
};

struct OSThread {
    u8 unk[792];
};

typedef void (*OSSwitchThreadCallback)(OSThread* from, OSThread* to);

struct OSThreadLink {
    struct OSThread* prev;
    struct OSThread* next;
};

struct OSThreadQueue {
    struct OSThread* head;
    struct OSThread* tail;
};

struct OSCond {
    struct OSThreadQueue queue;
};

typedef void* OSMessage;

struct OSMessageQueue {
    struct OSThreadQueue sending_queue;
    struct OSThreadQueue receiving_queue;
    void** message_array;
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
    SOUND_MODE_MONO = 0,
    SOUND_MODE_STEREO = 1,

    __SOUND_MODE_FORCE_ENUM_U32 = 0xffffffff,
} OSSoundMode;

extern "C" {
s32 OSEnableScheduler(void);
s32 OSDisableScheduler(void);
s32 OSCheckActiveThreads(void);
OSThread* OSGetCurrentThread(void);

s32 OSSuspendThread(OSThread* thread);
s32 OSSetThreadPriority(OSThread* thread, u32 pri);
s32 OSGetThreadPriority(OSThread* thread);
s32 OSCreateThread(OSThread* thread, void* (*func)(void*), void* param, void* stack, u32 stackSize,
                   int param_6, int param_7);
void OSCancelThread(OSThread* thread);
void OSDetachThread(OSThread* thread);
s32 OSResumeThread(OSThread* thread);
void OSExitThread(void* exit_val);
bool OSIsThreadSuspended(OSThread* thread);
bool OSIsThreadTerminated(OSThread* thread);
OSSwitchThreadCallback OSSetSwitchThreadCallback(OSSwitchThreadCallback* callback);

void OSInitMessageQueue(OSMessageQueue* queue, OSMessage* messages, int message_count);
BOOL OSReceiveMessage(OSMessageQueue* queue, OSMessage message, int flags);
void OSSendMessage(OSMessageQueue* queue, OSMessage message, int flags);

s32 OSGetConsoleType(void);
s32 OSGetResetCode(void);

OSSoundMode OSGetSoundMode(void);
void OSSetSoundMode(OSSoundMode mode);

void OSReportInit(void);
void OSAttention(char* msg, ...);
void OSPanic(char* file, s32 line, char* fmt, ...);
void OSReport(char* fmt, ...);
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
void OSVAttention(char*, /*__gnuc_va_list*/ void*);

void OSTicksToCalendarTime(OSTime ticks, OSCalendarTime* out_time);
OSTime OSGetTime(void);
OSTick OSGetTick(void);

u32 OSGetArenaLo();
u32 OSGetArenaHi();
u32 OSInitAlloc(u32 low, u32 high, int param_3);
void OSSetArenaLo(u32 param_1);
void OSSetArenaHi(u32 param_1);
void OSAllocFromArenaLo(u32 size, int alignment);

// void OSCancelAlarm(OSAlarm *alarm);

void OSInitMutex(OSMutex* mutex);
void OSLockMutex(OSMutex* mutex);
void OSTryLockMutex(OSMutex* mutex);
void OSUnlockMutex(OSMutex* mutex);

s32 OSDisableInterrupts();
s32 OSEnableInterrupts();
s32 OSRestoreInterrupts(s32 level);

void OSResetSystem(s32 param_1, u32 param_2, s32 param_3);

void OSSetSaveRegion(void* start, void* end);

void LCDisable(void);
};

#endif