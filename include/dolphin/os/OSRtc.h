#ifndef OSRTC_H
#define OSRTC_H

#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef u32 OSSoundMode;

#define OS_SOUND_MODE_MONO 0
#define OS_SOUND_MODE_STEREO 1

#define RTC_CMD_READ 0x20000000
#define RTC_CMD_WRITE 0xa0000000

#define RTC_SRAM_ADDR 0x00000100
#define RTC_SRAM_SIZE 64

#define RTC_CHAN 0
#define RTC_DEV 1
#define RTC_FREQ 3  // EXI_FREQ_8M

typedef struct SramControlBlock {
    u8 sram[RTC_SRAM_SIZE];
    u32 offset;
    BOOL enabled;
    BOOL locked;
    BOOL sync;
    void (*callback)(void);
} SramControlBlock;

typedef struct OSSram {
    u16 checkSum;
    u16 checkSumInv;
    u32 ead0;
    u32 ead1;
    u32 counterBias;
    s8 displayOffsetH;
    u8 ntd;
    u8 language;
    u8 flags;
} OSSram;

typedef struct OSSramEx {
    u8 flashID[2][12];
    u32 wirelessKeyboardID;
    u16 wirelessPadID[4];
    u8 dvdErrorCode;
    u8 _padding0;
    u8 flashIDCheckSum[2];
    u16 gbs;
    u8 _padding1[2];
} OSSramEx;

void __OSInitSram(void);
OSSram* __OSLockSram(void);
OSSramEx* __OSLockSramEx(void);
BOOL __OSUnlockSram(BOOL commit);
BOOL __OSUnlockSramEx(BOOL commit);
BOOL __OSSyncSram(void);
u32 OSGetSoundMode(void);
void OSSetSoundMode(OSSoundMode mode);
u32 OSGetProgressiveMode(void);
void OSSetProgressiveMode(u32 mode);
u16 OSGetWirelessID(s32 channel);
void OSSetWirelessID(s32 channel, u16 id);
static u16 OSGetGbsMode(void);
static void OSSetGbsMode(u16 mode);

#ifdef __cplusplus
};
#endif

#endif /* OSRTC_H */
