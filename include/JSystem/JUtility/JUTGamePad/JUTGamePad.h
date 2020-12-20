#ifndef __JSYSTEM_JUTILITY_JUTGAMEPAD__
#define __JSYSTEM_JUTILITY_JUTGAMEPAD__

#include "dolphin/types.h"
#include "JSystem/JKernel/JKRDisposer/JKRDisposer.h"
#include "pad/pad.h"

typedef u32 EStickMode;
typedef u32 EWhichStick;

struct JUTGamePad : public JKRDisposer {
public:
    //typedef u32 EPadPort;
    enum EPadPort {
        Port_1 = 0,
        Port_2 = 0,
        Port_3 = 0,
        Port_4 = 0
    };
    JUTGamePad(JUTGamePad::EPadPort port);
    virtual ~JUTGamePad();

    void initList();
    static s32 init();
    void clear();
    void read();
    void assign();
    void checkResetCallback(s64 unk); // todo: weird arg
    void update();
    static void checkResetSwitch();
    static void clearForReset();
    static JUTGamePad* getGamePad(int pad_index);
    static bool recalibrate(PADMask pad_mask);

    struct CButton {
        CButton();
        void clear();
        u32 update(PADStatus const *, u32 unk);
        void setRepeat(u32 unk0, u32 unk1, u32 unk2);

        u32 button_flags;

        u32 field_0x4;
        u32 field_0x8;

        u8 analog_a;
        u8 analog_b;
        u8 trigger_left;
        u8 trigger_right;
        f32 analog_left;
        f32 analog_right;

        u32 field_0x18;
        u32 field_0x1c;
        u32 field_0x20;
        u32 field_0x24;
        u32 field_0x28;
        u32 field_0x2c;
    };

    struct CStick {
        CStick();
        void clear();
        void clear(JUTGamePad* pad);
        u32 update(s8 unk0, s8 unk1, EStickMode mode, EWhichStick stick, u32 unk2);
        u32 getButton(u32 unk);

        float stick_x;
        float stick_y;
        float length_from_neutral;
        u16 angle;
        s8 field_0xe;
        s8 field_0xf;
    };

    struct CRumble {
        typedef u32 ERumble; // should probably be an enum

        void clear();
        void clear(JUTGamePad* pad);
        static void startMotor(int channel);
        static void stopMotor(int channel, bool stop);
        void update(u16 unk0);
        void triggerPatternedRumble(u32 unk0);
        void startPatternedRumble(void* unk0, ERumble rumble, u32 unk1);
        void stopPatternedRumble(u16 pad_port);
        void stopPatternedRumbleAtThePeriod();
        static void setEnabled(u32 pad_mask); //symbol says it should be unsigned long

        u32 field_0x0;
        u32 field_0x4;
        u32 field_0x8;
        u32 field_0xc;
        u32 field_0x10;
    };
    struct CButton buttons;
    struct CStick control_stick;
    struct CStick c_stick;
    struct CRumble rumble;
    s16 pad_port;
    s8 error_value;

    friend class CRumble;
};

class JUTGamePadLongPress {
    bool checkCallback(s32 unk0, u32 unk2);
};

extern "C" {
// s32 JUTGamePad_NS_init(void);
u32 getNumBit(u8* unk0, u32 unk1);
}

#endif