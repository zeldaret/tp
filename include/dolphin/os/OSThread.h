#ifndef OSTHREAD_H
#define OSTHREAD_H

#include "dolphin/os/OSContext.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef u16 OSThreadState;
typedef s32 OSPriority;  //  0 highest, 31 lowest

#define OS_THREAD_STATE_UNINITIALIZED 0
#define OS_THREAD_STATE_READY 1
#define OS_THREAD_STATE_RUNNING 2
#define OS_THREAD_STATE_WAITING 4
#define OS_THREAD_STATE_DEAD 8

#define OS_THREAD_ATTR_DETACH 0x0001u

#define OS_THREAD_STACK_MAGIC 0xDEADBABE

#define OS_PRIORITY_MIN 0   // highest
#define OS_PRIORITY_MAX 31  // lowest
#define OS_PRIORITY_IDLE OS_PRIORITY_MAX

typedef struct OSThread OSThread;
typedef struct OSThreadQueue OSThreadQueue;
typedef struct OSThreadLink OSThreadLink;

typedef struct OSMutex OSMutex;
typedef struct OSMutexQueue OSMutexQueue;
typedef struct OSMutexLink OSMutexLink;
typedef struct OSCond OSCond;

struct OSThreadLink {
    OSThread* next;
    OSThread* prev;
};

struct OSThreadQueue {
    /* 0x0 */ OSThread* head;
    /* 0x4 */ OSThread* tail;
};

struct OSMutexLink {
    OSMutex* next;
    OSMutex* prev;
};

struct OSMutexQueue {
    OSMutex* head;
    OSMutex* tail;
};

struct OSThread {
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
    OSMutex* mutex;
    OSMutexQueue owned_mutexes;
    OSThreadLink active_threads_link;
    u8* stack_base;
    u32* stack_end;
    u8* error_code;
    void* data[2];
};

typedef void (*OSSwitchThreadCallback)(OSThread* from, OSThread* to);

OSThreadQueue OS_THREAD_QUEUE AT_ADDRESS(0x800000DC);
OSThread* OS_CURRENT_THREAD AT_ADDRESS(0x800000E4);

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
static OSThread* SetEffectivePriority(OSThread* thread, s32 priority);
void __OSPromoteThread(OSThread* thread, s32 priority);
static OSThread* SelectThread(BOOL yield);
void __OSReschedule(void);
void OSYieldThread(void);
BOOL OSCreateThread(OSThread* thread, void* func, void* param, void* stackBase, u32 stackSize,
                    s32 priority, u16 attribute);
void OSExitThread(void* exitValue);
void OSCancelThread(OSThread* thread);
void OSDetachThread(OSThread* thread);
s32 OSResumeThread(OSThread* thread);
s32 OSSuspendThread(OSThread* thread);
void OSSleepThread(OSThreadQueue* queue);
void OSWakeupThread(OSThreadQueue* queue);
s32 OSSetThreadPriority(OSThread* thread, s32 priority);
s32 OSGetThreadPriority(OSThread* thread);
static s32 CheckThreadQueue(OSThreadQueue* thread);
s32 OSCheckActiveThreads(void);
static void OSClearStack(u8 value);

#ifdef __cplusplus
};
#endif

#endif /* OSTHREAD_H */
