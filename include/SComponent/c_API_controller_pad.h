#ifndef __C_API_CONTROLLER_PAD__
#define __C_API_CONTROLLER_PAD__

#include "global.h"

struct interface_of_controller_pad {
    f32 mMainStickPosX;
    f32 mMainStickPosY;
    f32 mMainStickValue;
    s16 mMainStickAngle;
    u8 field_0xe;
    u8 field_0xf;
    f32 mCStickPosX;
    f32 mCStickPosY;
    f32 mCStickValue;
    s16 mCStickAngle;
    u8 field_0x1e;
    u8 field_0x1f;
    f32 mAnalogA;
    f32 mAnalogB;
    f32 mTriggerLeft;
    f32 mTriggerRight;
    u32 mButtonFlags;
    u32 mPressedButtonFlags;
    s8 mGamepadErrorFlags;
    u8 field_0x39;
    u8 field_0x3a;
    u8 field_0x3b;
    u8 field_0x3c;
    u8 field_0x3d;
    u8 field_0x3e;
    u8 field_0x3f;
};

void cAPICPad_recalibrate(void);

#endif