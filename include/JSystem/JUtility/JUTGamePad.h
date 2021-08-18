#ifndef JUTGAMEPAD_H
#define JUTGAMEPAD_H

#include "JSystem/JKernel/JKRDisposer.h"
#include "JSystem/JSupport/JSUList.h"
#include "dolphin/os/OS.h"
#include "dolphin/pad/Pad.h"
#include "dolphin/types.h"

typedef void (*callbackFn)(int, void*);

namespace CButton {
enum {
    DPAD_LEFT = 0x0001,
    DPAD_RIGHT = 0x0002,
    DPAD_DOWN = 0x0004,
    DPAD_UP = 0x0008,
    Z = 0x0010,
    R = 0x0020,
    L = 0x0040,
    A = 0x0100,
    B = 0x0200,
    X = 0x0400,
    Y = 0x0800,
    START = 0x1000,
};
}

struct JUTGamePad : public JKRDisposer {
public:
    // TODO: fix types
    // static JSUList<JUTGamePad> mPadList;
    static u8 mPadList[12];
    static PADStatus mPadStatus[4];
    static u8 mPadButton[192];
    static u8 mPadMStick[64];
    static u8 mPadSStick[64];
    static u32 sStickMode;
    static u32 sClampMode;
    static u8 mPadAssign[4];
    static u8 sSuppressPadReset[4];
    static s32 sAnalogMode;
    static u32 sRumbleSupported;

    enum EStickMode {};
    enum EWhichStick {};
    // typedef u32 EPadPort;
    enum EPadPort { Port_1 = 0, Port_2 = 0, Port_3 = 0, Port_4 = 0 };
    JUTGamePad(JUTGamePad::EPadPort port);
    virtual ~JUTGamePad();

    void initList();
    static s32 init();
    void clear();
    void read();
    void assign();
    void checkResetCallback(OSTime unk);  // todo: weird arg
    void update();
    void stopPatternedRumble() { this->rumble.stopPatternedRumble(this->pad_port); }
    static void checkResetSwitch();
    static void clearForReset();
    static JUTGamePad* getGamePad(int pad_index);
    static bool recalibrate(/*PADMask*/ u32 pad_mask);

    struct CButton {
        CButton();
        void clear();
        u32 update(PADStatus const*, u32 unk);
        void setRepeat(u32 unk0, u32 unk1, u32 unk2);

        u32 mButtonFlags;

        u32 mPressedButtonFlags;
        u32 mReleasedButtonFlags;

        u8 mAnalogARaw;
        u8 mAnalogBRaw;
        u8 mTriggerLeftRaw;
        u8 mTriggerRightRaw;
        f32 mTriggerLeft;
        f32 mTriggerRight;

        u32 field_0x18;  // padding?
        u32 field_0x1c;
        u32 field_0x20;
        u32 field_0x24;
        u32 field_0x28;
        u32 field_0x2c;
    };

    struct C3ButtonReset {
        // TODO: fix types
        static u32 sResetPattern;
        static u32 sResetMaskPattern;
        static callbackFn sCallback;
        static void* sCallbackArg;
        static OSTime sThreshold;
        static s32 sResetOccurredPort;
    };

    struct CStick {
        static f32 sPressPoint;
        static f32 sReleasePoint;

        CStick();
        void clear();
        void clear(JUTGamePad* pad);
        u32 update(s8 unk0, s8 unk1, JUTGamePad::EStickMode mode, JUTGamePad::EWhichStick stick,
                   u32 unk2);
        u32 getButton(u32 unk);

        float mPosX;
        float mPosY;
        float mValue;
        s16 mAngle;
        s8 field_0xe;
        s8 field_0xf;
    };

    struct CRumble {
        static PADMask sChannelMask[4];
        static bool mStatus[4];
        static PADMask mEnabled;

        enum ERumble {
            VAL_0 = 0,
            VAL_1 = 1,
            VAL_2 = 2,
        };

        void clear();
        void clear(JUTGamePad* pad);
        static void startMotor(int channel);
        static void stopMotor(int channel, bool stop);
        void update(s16 unk0);
        void triggerPatternedRumble(u32 unk0);
        void startPatternedRumble(void* unk0, ERumble rumble, u32 unk1);
        void stopPatternedRumble(s16 pad_port);
        void stopPatternedRumbleAtThePeriod();
        static void setEnabled(/*PADMask*/ u32 pad_mask);

        u32 field_0x0;
        u32 field_0x4;
        u8* field_0x8;
        u32 field_0xc;
        u8* field_0x10;
    };

    CButton buttons;
    CStick control_stick;
    CStick c_stick;
    CRumble rumble;
    s16 pad_port;
    s8 error_value;
    u8 pad0;
    JSUPtrLink ptr_link;
    u8 unk0[8];
    u8 field_0x98;
    u8 unk1[3];
    u8 reset_flag;
    u8 pad1[3];
    OSTime reset_time;
    u8 field_0xa8;

    friend class CRumble;
};

struct JUTGamePadLongPress {
    // TODO: fix type
    // static JSUList<JUTGamePadLongPress> sPatternList;
    static u8 sPatternList[12];
    void checkCallback(int unk0, u32 unk2);

    u8 unk0[17];
    bool field_0x11;  // bool?
    u8 unk1[10];
    u32 field_0x1c;
    u8 unk2[28];
    u8 field_0x3c;
    u8 unk3[11];
    bool field_0x48[4];  // bool[4]?
    void (*callback)(s32, JUTGamePadLongPress*, s32);
    s32 field_0x50;
};

#endif /* JUTGAMEPAD_H */
