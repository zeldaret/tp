#ifndef OSTHREAD_H
#define OSTHREAD_H

#include "dolphin/os/OSContext.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef u16 OSThreadState;
#define OS_THREAD_STATE_UNINITIALIZED 0
#define OS_THREAD_STATE_READY 1
#define OS_THREAD_STATE_RUNNING 2
#define OS_THREAD_STATE_WAITING 4
#define OS_THREAD_STATE_DEAD 8

typedef struct OSThreadLink {
    struct OSThread* prev;
    struct OSThread* next;
} OSThreadLink;

typedef struct OSThreadQueue {
    /* 0x0 */ struct OSThread* head;
    /* 0x4 */ struct OSThread* tail;
} OSThreadQueue;

typedef struct OSMutexLink {
    struct OSMutex* prev;
    struct OSMutex* next;
} OSMutexLink;

typedef struct OSMutexQueue {
    struct OSMutex* prev;
    struct OSMutex* next;
} OSMutexQueue;

typedef struct OSCond {
    OSThreadQueue queue;
} OSCond;

typedef struct OSThread {
    OSContext context;
    OSThreadState state;
    u16 attributes;
    s32 suspend_count;
    s32 effective_priority;
    u32 base_priority;
    void* exit_value;
    OSThreadQueue* queue;
    OSThreadLink link;
    OSThreadQueue join_queue;
    struct OSMutex* mutex;
    OSMutexQueue owned_mutexes;
    OSThreadLink active_threads_link;
    u8* stack_base;
    u8* stack_end;
    u8* error_code;
    void* data[2];
} OSThread;

typedef void (*OSSwitchThreadCallback)(OSThread* from, OSThread* to);

OSThreadQueue OS_THREAD_QUEUE : 0x800000DC;
OSThread* OS_CURRENT_THREAD : 0x800000E4;

static void DefaultSwitchThreadCallback(OSThread* from, OSThread* to);
OSSwitchThreadCallback OSSetSwitchThreadCallback(OSSwitchThreadCallback func);
void __OSThreadInit(void);
void OSInitThreadQueue(OSThreadQueue* queue);
OSThread* OSGetCurrentThread(void);
BOOL OSIsThreadTerminated(OSThread* thread);
s32 OSDisableScheduler(void);
s32 OSEnableScheduler(void);
static void UnsetRun(OSThread* thread);
s32 __OSGetEffectivePriority(OSThread* thread);
static void SetEffectivePriority(OSThread* thread, s32 priority);
void __OSPromoteThread(OSThread* thread, s32 priority);
static void SelectThread(OSThread* thread);
void __OSReschedule(void);
void OSYieldThread(void);
BOOL OSCreateThread(OSThread* thread, void* func, void* param, void* stackBase,
                    u32 stackSize, s32 priority, u16 attribute);
void OSExitThread(void* exitValue);
void OSCancelThread(OSThread* thread);
void OSDetachThread(OSThread* thread);
s32 OSResumeThread(OSThread* thread);
s32 OSSuspendThread(OSThread* thread);
void OSSleepThread(OSThreadQueue* queue);
void OSWakeupThread(OSThreadQueue* queue);
s32 OSSetThreadPriority(OSThread* thread, s32 priority);
s32 OSGetThreadPriority(OSThread* thread);
static s32 CheckThreadQueue(OSThread* thread);
s32 OSCheckActiveThreads(void);
static void OSClearStack(u32 value);
extern u8 data_804516D0[8];

#ifdef __cplusplus
};
#endif

#endif /* OSTHREAD_H */
