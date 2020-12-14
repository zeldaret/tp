#include "global.h"
#include "JSystem/JUtility/JUTGamePad/JUTGamePad.h"



struct interface_of_controller_pad {
    float stick_x;
    float stick_y;
    float length_from_neutral;
    u16 controlStick_angle;
    u8 field_0xe;
    u8 field_0xf;
    float cStick_x;
    float cStick_y;
    float cStick_length_from_neutral;
    u16 cStick_angle;
    u8 field_0x1e;
    u8 field_0x1f;
    float analog_a;
    float analog_b;
    float trigger_left;
    float trigger_right;
    u32 button_flags;
    u32 field_0x34;
    s8 error_value;
    u8 field_0x39;
    u8 field_0x3a;
    char field_0x3b;
    u8 field_0x3c;
};

struct cpadInfo{
    interface_of_controller_pad interface;
    cpadInfo* unk1;
    u8 p1[191];
};

struct ResetData {
    u32 field_0x0;
    u32 field_0x4;
    u32 field_0x8;
    s32 pad_index;
    u8 field_0x10;
    u8 field_0x11;
    u8 field_0x12;
    u8 field_0x13;
    u8 field_0x14;
    u8 field_0x15;
    u8 field_0x16;
    u8 field_0x17;
};



struct mDoCPd_c
{
    void create();
    void read();
    static void convert(interface_of_controller_pad* controllerInteface, JUTGamePad* gamePad);
    static void LRlockCheck(interface_of_controller_pad* controllerInterface);
    void recalibrate(void);

    JUTGamePad* gamePad;
};

void PADSetAnalogMode(unsigned int mode);