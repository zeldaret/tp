#ifndef JSYSTEM_JUTILITY_JUTGAMEPAD_
#define JSYSTEM_JUTILITY_JUTGAMEPAD_

#include "JSystem/JKernel/JKRDisposer/JKRDisposer.h"
#include "JSystem/JSupport/JSUList/JSUList.h"
#include "dolphin/types.h"
#include "os/OS.h"
#include "pad/pad.h"

typedef u32 EStickMode;
typedef u32 EWhichStick;

struct JUTGamePad : public JKRDisposer {
public:
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
    static bool recalibrate(PADMask pad_mask);

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

    struct CStick {
        CStick();
        void clear();
        void clear(JUTGamePad* pad);
        u32 update(s8 unk0, s8 unk1, EStickMode mode, EWhichStick stick, u32 unk2);
        u32 getButton(u32 unk);

        float mPosX;
        float mPosY;
        float mValue;
        s16 mAngle;
        s8 field_0xe;
        s8 field_0xf;
    };

    struct CRumble {
        typedef s32 ERumble;  // should probably be an enum

        void clear();
        void clear(JUTGamePad* pad);
        static void startMotor(int channel);
        static void stopMotor(int channel, bool stop);
        void update(s16 unk0);
        void triggerPatternedRumble(u32 unk0);
        void startPatternedRumble(void* unk0, ERumble rumble, u32 unk1);
        void stopPatternedRumble(s16 pad_port);
        void stopPatternedRumbleAtThePeriod();
        static void setEnabled(PADMask pad_mask);

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
    void checkCallback(s32 unk0, u32 unk2);

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

extern "C" {
// s32 JUTGamePad_NS_init(void);
bool getNumBit(u8* unk0, u32 unk1);
}

extern float lbl_80456028;                // JUTGamePad::CStick::clear() init to 0.0
extern bool lbl_804514E4[4];              // JUTGamePad::CRumble::mStatus (static?)
extern PADMask lbl_804514E8;              // JUTGamePad::CRumble::mEnabled (static?)
extern PADMask lbl_803CC5F0[4];           // JUTGamePad::CRumble::sChannelMask
extern s32 sAnalogMode;                   // JUTGamePad::sAnalogMode
extern bool lbl_804514D0;                 // JUTGamePad::mIsPadListInitialized
extern JSUList<JUTGamePad> lbl_804343E4;  // JUTGamePad::mPadList
// extern JSUPtrList lbl_804343E4; // JUTGamePad::mPadList
extern u8 lbl_804514D4[4];                   // JUTGamePad::mPadAssign
extern PADStatus lbl_804343F0[4];            // JUTGamePad::mPadStatus
extern JUTGamePad::CButton lbl_80434420[4];  // JUTGamePad::mPadButton
extern bool lbl_80451501;
extern bool lbl_80451500;
extern s32 lbl_80451504;         // JUTGamePad::C3ButtonReset::sResetOccurredPort
extern OSTime lbl_804514F8;      // JUTGamePad::C3ButtonReset::sThreshold
extern u32 lbl_804514D8;         // JUTGamePad::sSuppressPadReset
extern PADMask lbl_803CC600[4];  // JUtility::channel_mask

#endif