// at some point: we should split this up into various OS/... headers. but not
// yet, since barely any files include this atm.

#ifndef OS_H_
#define OS_H_

#include "Runtime.PPCEABI.H/__va_arg.h"
#include "dolphin/types.h"

#include "Runtime.PPCEABI.H/__va_arg.h"
#include "dolphin/os/OSError.h"
#include "dolphin/os/OSLink.h"

#define OS_BUS_CLOCK (*(u32*)0x800000F8)
#define OS_CORE_CLOCK (*(u32*)0x800000FC)
#define OS_TIMER_CLOCK (OS_BUS_CLOCK / 4)

/* TODO: more structs, and get rid of the ones that are faked! */

#define OS_MESSAGE_NON_BLOCKING 0
#define OS_MESSAGE_BLOCKING 1

struct OSThread;
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

struct OSContext {
    u32 gpr[32];
    u32 cr;
    u32 lr;
    u32 ctr;
    u32 xer;
    double fpr[32];
    u32 padding_1;
    u32 fpscr;
    u32 srr0;
    u32 srr1;
    u16 mode;
    u16 state;
    u32 gqr[8];
    u32 padding_2;
    double ps[32];
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
} OSSoundMode;

typedef u16 OSThreadState;
#define OS_THREAD_STATE_UNINITIALIZED 0
#define OS_THREAD_STATE_READY 1
#define OS_THREAD_STATE_RUNNING 2
#define OS_THREAD_STATE_WAITING 4
#define OS_THREAD_STATE_DEAD 8

struct OSThread {
    OSContext context;
    OSThreadState state;
    u16 attributes;
    s32 suspend_count;
    u32 effective_priority;
    u32 base_priority;
    void* exit_value;
    OSThreadQueue* queue;
    OSThreadLink link;
    OSThreadQueue join_queue;
    OSMutex* mutex;
    OSMutexQueue owned_mutexes;
    OSThreadLink active_threads_link;
    u8* stack_base;
    u8* stack_end;
    u8* error_code;
    void* data[2];
};

struct OSAlarm;
struct OSAlarmLink {
    /* 0x0 */ OSAlarm* prev;
    /* 0x4 */ OSAlarm* next;
};

typedef void (*OSAlarmHandler)(OSAlarm*, OSContext*);

struct OSAlarm {
    /* 0x00 */ OSAlarmHandler handler;
    /* 0x04 */ u32 tag;
    /* 0x08 */ OSTime fire_time;
    /* 0x10 */ OSAlarmLink link;
    /* 0x18 */ OSTime period_time;
    /* 0x20 */ OSTime start_time;
};  // Size: 0x28

extern "C" {
s32 OSEnableScheduler(void);
s32 OSDisableScheduler(void);
s32 OSCheckActiveThreads(void);
OSThread* OSGetCurrentThread(void);

s32 OSSuspendThread(OSThread* thread);
s32 OSSetThreadPriority(OSThread* thread, u32 pri);
s32 OSGetThreadPriority(OSThread* thread);
s32 OSCreateThread(OSThread* thread, void* func, void* param, void* stack, u32 stackSize,
                   int param_6, int param_7);
void OSCancelThread(OSThread* thread);
void OSDetachThread(OSThread* thread);
s32 OSResumeThread(OSThread* thread);
void OSExitThread(void* exit_val);
bool OSIsThreadSuspended(OSThread* thread);
BOOL OSIsThreadTerminated(OSThread* thread);
OSSwitchThreadCallback OSSetSwitchThreadCallback(OSSwitchThreadCallback callback);

void OSInitMessageQueue(OSMessageQueue* queue, OSMessage* messages, int message_count);
BOOL OSReceiveMessage(OSMessageQueue* queue, OSMessage* message, int flags);
BOOL OSSendMessage(OSMessageQueue* queue, OSMessage message, int flags);
BOOL OSJamMessage(OSMessageQueue* queue, OSMessage message, int flags);

s32 OSGetConsoleType(void);
u32 OSGetResetCode(void);

u32 OSGetSoundMode(void);
void OSSetSoundMode(OSSoundMode mode);

void OSAttention(const char* msg, ...);
void OSPanic(const char* file, s32 line, const char* fmt, ...);
void OSReport(const char* fmt, ...);
void OSReport_Error(const char* fmt, ...);
void OSReport_FatalError(const char* fmt, ...);
void OSReport_System(const char* fmt, ...);
void OSReport_Warning(const char* fmt, ...);
void OSReportDisable(void);
void OSReportEnable(void);
void OSReportForceEnableOff(void);
void OSReportForceEnableOn(void);
void OSVReport(const char* format, va_list list);

void OSTicksToCalendarTime(OSTime ticks, OSCalendarTime* out_time);
OSTime OSGetTime(void);
OSTick OSGetTick(void);

u32 OSGetArenaLo();
u32 OSGetArenaHi();
u32 OSInitAlloc(u32 low, u32 high, int param_3);
void OSSetArenaLo(u32 param_1);
void OSSetArenaHi(u32 param_1);
void* OSAllocFromArenaLo(u32 size, int alignment);

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

void OSReportInit__Fv(void);  // needed for inline asm

u8* OSGetStackPointer(void);

void OSCreateAlarm(OSAlarm*);
void OSCancelAlarm(OSAlarm*);
void OSSetAlarm(OSAlarm*, OSTime, OSAlarmHandler);

inline s16 __OSf32tos16(register f32 inF) {
    register s16 out;
    u32 tmp;
    register u32* tmpPtr = &tmp;
    // clang-format off
    asm {
        psq_st inF, 0(tmpPtr), 0x1, 5
        lha out, 0(tmpPtr)
    }
    // clang-format on

    return out;
}

inline void OSf32tos16(f32* f, s16* out) {
    *out = __OSf32tos16(*f);
}

inline u8 __OSf32tou8(register f32 inF) {
    register u8 out;
    u32 tmp;
    register u32* tmpPtr = &tmp;
    // clang-format off
    asm {
        psq_st inF, 0(tmpPtr), 0x1, 2
        lbz out, 0(tmpPtr)
    }
    // clang-format on

    return out;
}

inline void OSf32tou8(f32* f, u8* out) {
    *out = __OSf32tou8(*f);
}

inline void OSInitFastCast(void) {
    // clang-format off
    asm {
        li r3, 4
        oris r3, r3, 4
        mtspr 0x392, r3
        li r3, 5
        oris r3, r3, 5
        mtspr 0x393, r3
        li r3, 6
        oris r3, r3, 6
        mtspr 0x394, r3
        li r3, 7
        oris r3, r3, 7
        mtspr 0x395, r3
    }
    // clang-format on
}

};  // extern "C"

void OSSwitchFiberEx(u32, u32, u32, u32, u32, u32);

void OSVAttention(const char* fmt, va_list args);

void OSReportInit(void);

#include "dolphin/dvd/dvd.h"

struct GLOBAL_MEMORY {
    DVDDiskID disk;
    u32 nintendo_boot_code; /* Nintendo Standard Boot Code. */
    u32 field_0x24;         /* 	Version (set by apploader) */
    u32 memory_size;        /* Memory Size (Physical) 24MB */
    u32 field_0x2c;         /* Production Board Model */
    u32 arena_low;          /* 	Arena Low */
    u32 arena_high;         /* 	Arena High */
    u32 field_0x38;         /* 	Start of FST (varies in all games) */
    u32 field_0x3c;         /* Maximum FST Size (varies in all games) */
    u8 padding_0x40[32];
    u8 field_0x60[36]; /* Hook is PPC assembler used by Debugger.  */
    u8 padding_0x84[84];
    OSContext* field_0xd8; /* Current OSContext instance. */
    OSThread* field_0xdc;  /* OSThread pointer, previously created thread. */
    OSThread* field_0xe0;  /* OSThread pointer, most recently created thread. */
    OSThread* field_0xe4;  /* Current thread pointer. */
    u32 field_0xe8;        /* Dev Debugger Monitor Address (If present) */
    u32 field_0xec;        /* Simulated Memory Size */
    u32 field_0xf0;        /* Pointer to data read from partition's bi2.bin, set by apploader */
    u32 field_0xf4;        /* Console Bus Speed */
    u32 field_0xf8;        /* Console CPU Speed */
    u8 padding_0xfc[5892];
    u8 field_0x1800[6144]; /* Unused Exception Vector */
    u8 padding_0x3000[64];
    u32 field_0x3040[34]; /* 	__OSInterrupt table. */
    u32 field_0x30c8;     /* Pointer to the first loaded REL file. */
    u32 field_0x30cc;     /* Pointer to the last loaded REL file. */
    u32 field_0x30d0;     /* Pointer to a REL module name table, or 0. */
    u8 padding_0x30d8[4];
    u64 field_0x30d8; /* System time */
    u8 padding_0x30e0[4];
    u32 field_0x30e4; /* __OSPADButton */
    u8 padding_0x30ec[8];
    u32 field_0x30f0; /* DOL Execute Parameters */
    u8 padding_0x30f4[12];
    u32 field_0x3100; /* Physical MEM1 size */
    u32 field_0x3104; /* Simulated MEM1 size */
    u8 padding_0x3108[8];
    u32 field_0x3110; /* Heap pointer (end of usable memory by the game) */
    u8 padding_0x3114[4];
    u32 field_0x3118; /* 	Physical MEM2 size */
    u32 field_0x311c; /* Simulated MEM2 size */
    u8 padding_0x3120[16];
    u32 field_0x3130; /* IOS Heap Range (start) */
    u32 field_0x3134; /* IOS Heap Range (end) */
    u32 field_0x3138; /* Hollywood Version */
    u8 padding_0x313c[4];
    u32 field_0x3140; /* 	IOS version */
    u32 field_0x3144; /* 	IOS Build Date */
    u8 padding_0x3148[16];
    u32 field_0x3158; /* 	GDDR Vendor Code */
    u32 field_0x315c; /* During the boot process, */
    u32 field_0x3160; /* Init semaphore (1-2 main() waits for this to clear) */
    u32 field_0x3164; /* GC (MIOS) mode flag? */
    u8 padding_0x3168[24];
    u32 field_0x3180; /* 	Game ID */
    u8 field_0x3184;  /* Application type. 0x80 for disc games, 0x81 for channels. */
    u8 padding_0x3185;
    u8 field_0x3186; /* Application type 2 */
    u8 padding_0x3187;
    u32 field_0x3188; /* Minimum IOS version */
    u32 field_0x318c; /* 	Title Booted from NAND (Launch Code) */
    u32 field_0x3190; /* 	Title Booted from NAND (Return Code) */
    u32 field_0x3194; /* While reading a disc, the system menu reads the first partition table (0x20
                         bytes from 0x00040020) and stores a pointer to the data partition entry.
                         When launching the disc game, it copies the partition type to 0x3194. The
                         partition type for data partitions is 0, so typically this location always
                         has 0. */
    u32 field_0x3198; /* While reading a disc, the system menu reads the first partition table (0x20
                         bytes from 0x00040020) and stores a pointer to the data partition entry.
                         When launching the disc game, it copies the partition offset to 0x3198. */
    u32 field_0x319c; /* Set by the apploader to 0x80 for single-layer discs and 0x81 for dual-layer
                         discs (determined by whether 0x7ed40000 is the value at offset 0x30 in the
                         partition's bi2.bin; it seems that that value is 0 for single-layer discs).
                         Early titles' apploaders do not set it at all, leaving the value as 0. This
                         controls the /dev/di#0x8D_DVDLowUnencryptedRead out-of-bounds Error #001
                         read for titles that do make such a read: they try to read at 0x7ed40000
                         for dual-layer discs and 0x460a0000 for single-layer discs. */
    u8 field_0x31a0[3424];
};

#define OS_ASSERT(...)

inline void* OSPhysicalToCached(u32 offset) {
    OS_ASSERT(offset <= 0x1fffffff);
    return (void*)(offset + 0x80000000);
}

#endif
