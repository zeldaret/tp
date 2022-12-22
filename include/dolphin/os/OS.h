#ifndef OS_H_
#define OS_H_

#include "Runtime.PPCEABI.H/__va_arg.h"
#include "dolphin/dvd/dvd.h"

#include "dolphin/os/OSAlarm.h"
#include "dolphin/os/OSAlloc.h"
#include "dolphin/os/OSArena.h"
#include "dolphin/os/OSAudioSystem.h"
#include "dolphin/os/OSCache.h"
#include "dolphin/os/OSContext.h"
#include "dolphin/os/OSError.h"
#include "dolphin/os/OSExec.h"
#include "dolphin/os/OSFont.h"
#include "dolphin/os/OSInterrupt.h"
#include "dolphin/os/OSLink.h"
#include "dolphin/os/OSMemory.h"
#include "dolphin/os/OSMessage.h"
#include "dolphin/os/OSMutex.h"
#include "dolphin/os/OSReboot.h"
#include "dolphin/os/OSReset.h"
#include "dolphin/os/OSResetSW.h"
#include "dolphin/os/OSRtc.h"
#include "dolphin/os/OSSync.h"
#include "dolphin/os/OSThread.h"
#include "dolphin/os/OSTime.h"

#ifdef __cplusplus
extern "C" {
#endif

#define OS_BUS_CLOCK (*(u32*)0x800000F8)
#define OS_CORE_CLOCK (*(u32*)0x800000FC)
#define OS_TIMER_CLOCK (OS_BUS_CLOCK / 4)
#define OS_TIMER_CLOCK_MS (OS_TIMER_CLOCK / 1000)

#define OS_MESSAGE_NON_BLOCKING 0
#define OS_MESSAGE_BLOCKING 1

volatile u16 __OSDeviceCode : 0x800030E6;

volatile u32 OS_PI_INTR_CAUSE : 0xCC003000;
volatile u32 OS_PI_INTR_MASK : 0xCC003004;

volatile u16 OS_MI_INTR_MASK : 0xCC00401C;

volatile u16 OS_DSP_DMA_ADDR_HI : 0xCC005030;
volatile u16 OS_DSP_DMA_ADDR_LO : 0xCC005032;
volatile u16 OS_DSP_INTR_MASK : 0xCC00500A;

volatile u16 OS_ARAM_DMA_ADDR_HI : 0xCC005020;
volatile u16 OS_ARAM_DMA_ADDR_LO : 0xCC005022;

BOOL OSIsThreadSuspended(OSThread* thread);

u32 OSGetConsoleType(void);

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
void OSVReport(char* format, va_list list);
void OSVAttention(char* fmt, va_list args);
void OSReportInit(void);

void OSReportInit__Fv(void);  // needed for inline asm

u8* OSGetStackPointer(void);
void __OSFPRInit(void);
static void InquiryCallback(u32 param_0, DVDCommandBlock* param_1);
void OSInit(void);
static void OSExceptionInit(void);
void __OSDBIntegrator(void);
void __OSDBJump(void);

typedef void (*OSExceptionHandler)(OSException, OSContext*);
OSExceptionHandler __OSSetExceptionHandler(__OSException exception, OSExceptionHandler handler);
OSExceptionHandler __OSGetExceptionHandler(__OSException exception);
static void OSExceptionVector(void);
void __DBVECTOR();
void __OSEVSetNumber();
void __OSEVEnd();
static void OSDefaultExceptionHandler(__OSException exception, OSContext* context);
void __OSPSInit(void);
void __OSGetDIConfig(void);
void OSRegisterVersion(char* version);
void OSSwitchFiberEx(u32, u32, u32, u32, u32, u32);

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

inline void i_OSInitFastCast(void) {
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

typedef struct OSBootInfo {
    /* 0x00 */ DVDDiskID disk_info;
    /* 0x20 */ u32 boot_code;
    /* 0x24 */ u32 version;
    /* 0x28 */ u32 memory_size;
    /* 0x2C */ u32 console_type;
    /* 0x30 */ void* arena_lo;
    /* 0x34 */ void* arena_hi;
    /* 0x38 */ void* fst_location;
    /* 0x3C */ u32 fst_max_length;
} OSBootInfo;

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

#ifdef __cplusplus
};
#endif

#endif
