#ifndef __M_DO_CONTROLLER_PAD_H_
#define __M_DO_CONTROLLER_PAD_H_

#include "JSystem/JUtility/JUTGamePad/JUTGamePad.h"
#include "global.h"

struct g_HIO_struct {
    u32 field_0x0;
    u8 field_0x4;
    u8 field_0x5;
    u8 field_0x6;
    u8 field_0x7;
    u8 field_0x8;
    u8 field_0x9;
    u8 field_0xa;
    u8 field_0xb;
    float float_global_1;
    float float_global_2;
    u8 field_0x14;
    u8 field_0x15;
    u8 field_0x16;
    u8 field_0x17;
    u8 field_0x18;
    u8 field_0x19;
    u8 field_0x1a;
    u8 field_0x1b;
    u8 field_0x1c;
    u8 field_0x1d;
    u8 field_0x1e;
    u8 field_0x1f;
    u8 field_0x20;
    u8 field_0x21;
    u8 field_0x22;
    u8 field_0x23;
    u8 field_0x24;
    u8 field_0x25;
    u8 field_0x26;
    u8 field_0x27;
    u8 field_0x28;
    u8 field_0x29;
    u8 field_0x2a;
    u8 field_0x2b;
    u8 field_0x2c;
    u8 field_0x2d;
    u8 field_0x2e;
    u8 field_0x2f;
    u8 field_0x30;
    u8 field_0x31;
    u8 field_0x32;
    u8 field_0x33;
    u8 field_0x34;
    u8 field_0x35;
    u8 field_0x36;
    u8 field_0x37;
    u8 field_0x38;
    u8 field_0x39;
    u8 field_0x3a;
    u8 field_0x3b;
    u8 field_0x3c;
    u8 field_0x3d;
    u8 field_0x3e;
    u8 field_0x3f;
    u8 field_0x40;
    u8 field_0x41;
    u8 field_0x42;
    u8 field_0x43;
};

struct interface_of_controller_pad {
    float stick_x;
    float stick_y;
    float length_from_neutral;
    s16 controlStick_angle;
    u8 field_0xe;
    u8 field_0xf;
    float cStick_x;
    float cStick_y;
    float cStick_length_from_neutral;
    s16 cStick_angle;
    u8 field_0x1e;
    u8 field_0x1f;
    float analog_a;
    float analog_b;
    float trigger_left;
    float trigger_right;
    u32 button_flags;
    u32 field_0x34;
    s8 error_value;
    bool field_0x39;
    bool field_0x3a;
    bool field_0x3b;
    bool field_0x3c;
};

struct cpadInfo {
    interface_of_controller_pad interface;
    cpadInfo* unk1;
    f32 stickValue;
    s16 stickAngle;
    u8 p2[0x8];
    f32 CstickValue;
    s16 CstickAngle;
    u8 p3[0xE2];
};

struct mDoCPd_c {
    void create();
    void read();
    static void convert(interface_of_controller_pad* controllerInteface, JUTGamePad* gamePad);
    static void LRlockCheck(interface_of_controller_pad* controllerInterface);
    void recalibrate(void);

    JUTGamePad* gamePad;
};
#endif
