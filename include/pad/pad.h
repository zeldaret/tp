#include "global.h"
#ifndef __PAD_H__
#define __PAD_H__


typedef enum PADMask {
    //PAD_CHAN3_BIT = (1 << 0),
    //PAD_CHAN2_BIT = (1 << 1),
    //PAD_CHAN1_BIT = (1 << 2),
    //PAD_CHAN0_BIT = (1 << 3),

    PAD_CHAN3_BIT = 0x10000000,
    PAD_CHAN2_BIT = 0x20000000,
    PAD_CHAN1_BIT = 0x40000000,
    PAD_CHAN0_BIT = 0x80000000,

    __PAD_MASK_FORCE_ENUM_U32 = 0xffffffff,
} PADMask;

typedef struct PADStatus {
    u16 button;
    s8 stick_x;
    s8 stick_y;
    s8 substick_x;
    s8 substick_y;
    u8 trigger_left;
    u8 trigger_right;
    u8 analog_a;
    u8 analog_b;
    s8 error;
} PADStatus;

extern "C" {
    u32 PADInit(void);
    void PADSetAnalogMode(unsigned int mode);
    void PADSetSpec(int spec);
    s32 PADReset(PADMask mask);
    void PADClampCircle(PADStatus* status);
    void PADClamp(PADStatus* status);
    u32 PADRead(PADStatus* status);
    void PADControlMotor(s32 channel, u32 command);
    s32 PADRecalibrate(PADMask mask);
}

#endif