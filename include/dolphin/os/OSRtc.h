#ifndef OSRTC_H
#define OSRTC_H

#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef enum OSSoundMode {
    /* 0x0 */ SOUND_MODE_MONO,
    /* 0x1 */ SOUND_MODE_STEREO,
} OSSoundMode;

static void WriteSramCallback(void);
static u8 WriteSram(u8* param_0, u32 param_1, u32 param_2);
void __OSInitSram(void);
u16* __OSLockSram(void);
u16* __OSLockSramEx(void);
static u32 UnlockSram(s32 param_0, u32 param_1);
u32 __OSUnlockSram(s32 param_0);
u32 __OSUnlockSramEx(s32 param_0);
u32 __OSSyncSram(void);
u32 OSGetSoundMode(void);
void OSSetSoundMode(OSSoundMode mode);
u32 OSGetProgressiveMode(void);
void OSSetProgressiveMode(u32 mode);
u16 OSGetWirelessID(s32 index);
void OSSetWirelessID(s32 index, u16 id);
static u16 OSGetGbsMode(void);
static void OSSetGbsMode(u16 mode);

#ifdef __cplusplus
};
#endif

#endif /* OSRTC_H */
