#ifndef JSYSTEM_JUTILITY_JUT_GAME_PAD
#define JSYSTEM_JUTILITY_JUT_GAME_PAD 

#include "global.h"

class CButton {
    u32 button_flags;
    u8 unk_0x4[4];
    u8 unk_0x8[4];
    u8 analog_a;
    u8 analog_b;
    u8 trigger_left;
    u8 trigger_right;
    f32 analog_left;
    f32 analog_right;
    u8 unk_0x18[0x18];
}; // Size: 0x30

class CStick {
    f32 stick_x;
    f32 stick_y;
    f32 length_from_neutral;
    u16 angle;
    u8 padding[2];
}; // Size: 0x10

class CRumble {
    u8 unk_0x0[0x14];
}; // Size: 0x14

class JUTGamePad {
    public:
    /* 0x0000 */ u8 unk_0x0[0x18];
    /* 0x0018 */ CButton buttons;
    /* 0x0048 */ CStick control_stick;
    /* 0x0058 */ CStick c_stick;
    /* 0x0068 */ CRumble rumble;
    /* 0x007C */ s16 pad_port;
    /* 0x007E */ s8 error_value;
    /* 0x007F */ u8 padding_1;
    /* 0x0080 */ JSUPtrLink ptr_link;
    /* 0x0090 */ u8 unk_0x90[0xC];
    /* 0x009C */ u8 reset_flag;
    /* 0x009D */ u8 padding_2[3];
    /* 0x00A0 */ OSTime reset_time;
    /* 0x00A8 */ u8 unk_0xA8[0x8];
}; // Size: 0xB0

#endif