#ifndef D_D_LIB_H
#define D_D_LIB_H

#include "SSystem/SComponent/c_xyz.h"
#include "dolphin/mtx/quat.h"
#include "dolphin/os/OSTime.h"

class fopAc_ac_c;

class JKRAramArchive;
u32 dLib_getExpandSizeFromAramArchive(JKRAramArchive* arc, char const* resName);
BOOL dLib_checkActorInRectangle(fopAc_ac_c* param_0, fopAc_ac_c* param_1, cXyz const* param_2,
                                cXyz const* param_3);

class STControl {
public:
    STControl() {
        setWaitParm(15, 15, 0, 0, 0.9f, 0.5f, 0, 0x2000);
        init();
    }

    enum EStickDir {
        TRIG_LEFT = 1,
        TRIG_RIGHT,
        TRIG_UP = 4,
        TRIG_UP_LEFT,
        TRIG_UP_RIGHT,
        TRIG_DOWN = 8,
        TRIG_DOWN_LEFT,
        TRIG_DOWN_RIGHT,
    };

    /* 80032044 */ STControl(s16 delayY, s16 delayX, s16 param_2, s16 param_3, f32 threshold,
                             f32 param_5, s16 param_6, s16 param_7);
    /* 80032088 */ void setWaitParm(s16, s16, s16, s16, f32, f32, s16, s16);
    /* 800320AC */ void init();
    /* 800320FC */ void Xinit();
    /* 8003212C */ void Yinit();
    /* 8003215C */ virtual f32 getValueStick();
    /* 8003216C */ virtual s16 getAngleStick();
    /* 8003219C */ u8 checkTrigger();
    /* 8003242C */ bool checkLeftTrigger();
    /* 800324A8 */ bool checkRightTrigger();
    /* 80032524 */ bool checkUpTrigger();
    /* 800325A0 */ bool checkDownTrigger();

    void setFirstWaitTime(s16 time) { mFirstWaitTime = time; }

    /* 0x04 */ f32 mThreshold;
    /* 0x08 */ f32 field_0x08;
    /* 0x0C */ u8 mDirectionTrig;
    /* 0x0D */ u8 field_0x0d;
    /* 0x0E */ s16 field_0x0e;
    /* 0x10 */ s16 field_0x10;
    /* 0x12 */ s16 mRepeatDelayY;
    /* 0x14 */ s16 mRepeatDelayX;
    /* 0x16 */ s16 field_0x16;
    /* 0x18 */ s16 mXwaitTimer;
    /* 0x1A */ s16 mYwaitTimer;
    /* 0x1C */ s16 field_0x1c;
    /* 0x1E */ s16 field_0x1e;
    /* 0x20 */ s16 field_0x20;
    /* 0x22 */ s16 field_0x22;
    /* 0x24 */ s16 field_0x24;
    /* 0x26 */ s16 field_0x26;
    /* 0x28 */ s16 mFirstWaitTime;
    /* 0x2A */ s16 field_0x2a;
    /* 0x2C */ s16 field_0x2c;
};  // Size = 0x30

struct CSTControl : public STControl {
    CSTControl(s16 param_0, s16 param_1, s16 param_2, s16 param_3, f32 param_4, f32 param_5,
               s16 param_6, s16 param_7)
        : STControl(param_0, param_1, param_2, param_3, param_4, param_5, param_6, param_7) {}

    virtual f32 getValueStick();
    virtual s16 getAngleStick();
};

struct dLib_time_c {
    /* 80032804 */ static OSTime getTime();
    /* 80032880 */ static void stopTime();
    /* 800328BC */ static void startTime();

    static OSTime m_diffTime;
    static OSTime m_stopTime;
    static bool m_timeStopped;
};

extern Quaternion ZeroQuat;

#endif /* D_D_LIB_H */
