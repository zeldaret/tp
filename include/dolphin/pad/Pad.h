#ifndef PAD_H
#define PAD_H

#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef enum PADMask {
    PAD_CHAN3_BIT = (1 << 28),
    PAD_CHAN2_BIT = (1 << 29),
    PAD_CHAN1_BIT = (1 << 30),
    PAD_CHAN0_BIT = (1 << 31),
} PADMask;

typedef struct PADStatus {
    /* 0x0 */ u16 button;
    /* 0x2 */ s8 stick_x;
    /* 0x3 */ s8 stick_y;
    /* 0x4 */ s8 substick_x;
    /* 0x5 */ s8 substick_y;
    /* 0x6 */ u8 trigger_left;
    /* 0x7 */ u8 trigger_right;
    /* 0x8 */ u8 analog_a;
    /* 0x9 */ u8 analog_b;
    /* 0xA */ s8 error;
} PADStatus;

u32 PADInit(void);
void PADSetAnalogMode(u32 mode);
void PADSetSpec(int spec);
BOOL PADReset(u32 mask);
void PADClampCircle(PADStatus* status);
void PADClamp(PADStatus* status);
u32 PADRead(PADStatus* status);
void PADControlMotor(s32 channel, u32 command);
BOOL PADRecalibrate(u32 mask);

#ifdef __cplusplus
};
#endif

#endif /* PAD_H */
