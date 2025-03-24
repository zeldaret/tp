#ifndef D_A_NPC_SHOE_H
#define D_A_NPC_SHOE_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpcShoe_c
 * @brief Soal
 *
 * @details
 *
 */
class daNpcShoe_c : public daNpcF_c {
public:
    typedef bool (daNpcShoe_c::*actionFunc)(void*);

    /* 80AE794C */ daNpcShoe_c();
    /* 80AE7B60 */ ~daNpcShoe_c();
    /* 80AE7D48 */ cPhs__Step Create();
    /* 80AE7FD8 */ BOOL CreateHeap();
    /* 80AE81E8 */ int Delete();
    /* 80AE821C */ int Execute();
    /* 80AE8308 */ int Draw();
    /* 80AE840C */ bool ctrlJoint(J3DJoint*, J3DModel*);
    /* 80AE8598 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80AE85B8 */ static BOOL ctrlJointCallBack(J3DJoint*, int);
    /* 80AE8604 */ void setMotion(int, f32, BOOL);
    /* 80AE864C */ void reset();
    /* 80AE895C */ inline int setAction(actionFunc);
    /* 80AE8A04 */ bool wait(void*);
    /* 80AE8E24 */ bool fear(void*);
    /* 80AE8ED4 */ bool talk(void*);
    /* 80AE9094 */ bool demo(void*);
    /* 80AE92E8 */ void setParam();
    /* 80AE93A0 */ BOOL main();
    /* 80AE9624 */ void setAttnPos();
    /* 80AE9820 */ void lookat();
    /* 80AE9A00 */ bool setMotionAnm(int, f32);
    /* 80AE9AD0 */ BOOL drawDbgInfo();
    /* 80AEA340 */ void adjustShapeAngle();

    s16 getMessageNo() { return fopAcM_GetParam(this) >> 0x10; }

    int getTime() { return getTimeMinute() + getTimeHour() * 60; }
    int getTimeHour() {
        if (dKy_darkworld_check() != 0) {
            return dKy_getDarktime_hour();
        } else {
            return dKy_getdaytime_hour();
        }
    }
    int getTimeMinute() {
        if (dKy_darkworld_check() != 0) {
            return dKy_getDarktime_minute();
        } else {
            return dKy_getdaytime_minute();
        }
    }

    int getStartTime() { return fopAcM_GetParam(this) & 0xff; }
    int getEndTime() { return (fopAcM_GetParam(this) >> 8) & 0xff; }

    inline void setLookMode(int i_lookMode);

    inline bool chkFindPlayer();

    static u8 mEvtSeqList[12];

    enum LookMode {
        LOOK_NONE = 0,
        LOOK_RESET = 1,
        LOOK_PLAYER = 2,
        LOOK_PLAYER_TALK = 3,
    };

private:
    /* 0xB48 */ J3DModel* mpModel1;
    /* 0xB4C */ J3DModel* mpModel2;
    /* 0xB50 */ Z2CreatureCitizen mCreature;
    /* 0xBF4 */ u8 field_0xbf4[0xbf8 - 0xbf4];
    /* 0xBF8 */ daNpcF_Lookat_c mLookat;
    /* 0xC94 */ daNpcF_ActorMngr_c mActorMngr[1];
    /* 0xC9C */ u8 field_0xc9c[0xca0 - 0xc9c];
    /* 0xCA0 */ dCcD_Cyl mCcCyl;
    /* 0xDDC */ actionFunc mpActionFn;
    /* 0xDE8 */ request_of_phase_process_class mPhases[3];
    /* 0xE00 */ u32 field_0xe00;
    /* 0xE04 */ u32 field_0xe04;
    /* 0xE08 */ u32 field_0xe08;
    /* 0xE0C */ u32 field_0xe0c;
    /* 0xE10 */ s16 mLookMode;
    /* 0xE12 */ u16 mStartTime;
    /* 0xE14 */ u16 mEndTime;
    /* 0xE16 */ u16 field_0xe16;
    /* 0xE18 */ u16 mMode;
    /* 0xE1A */ u8 field_0xe1a;
    /* 0xE1B */ u8 field_0xe1b; // Probably isDaytime or isNighttime
};

STATIC_ASSERT(sizeof(daNpcShoe_c) == 0xe1c);

class daNpcShoe_Param_c {
public:
    /* 8095D5D4 */ virtual ~daNpcShoe_Param_c() {}

    struct param {
        /* 0x00 */ f32 mAttnOffsetY;
        /* 0x04 */ f32 mGravity;
        /* 0x08 */ f32 mScale;
        /* 0x0C */ f32 mShadowDepth;
        /* 0x10 */ f32 mCcWeight;
        /* 0x14 */ f32 mCylH;
        /* 0x18 */ f32 mWallH;
        /* 0x1C */ f32 mWallR;
        /* 0x20 */ f32 mBodyUpAngle;
        /* 0x24 */ f32 mBodyDownAngle;
        /* 0x28 */ f32 mBodyLeftAngle;
        /* 0x2C */ f32 mBodyRightAngle;
        /* 0x30 */ f32 mHeadUpAngle;
        /* 0x34 */ f32 mHeadDownAngle;
        /* 0x38 */ f32 mHeadLeftAngle;
        /* 0x3C */ f32 mHeadRightAngle;
        /* 0x40 */ f32 mNeckAngleScl;
        /* 0x44 */ f32 mMorfFrames;
        /* 0x48 */ s16 mSpeakDistIdx;
        /* 0x4A */ s16 mSpeakAngleIdx;
        /* 0x4C */ s16 mTalkDistIdx;
        /* 0x4E */ s16 mTalkAngleIdx;
        /* 0x50 */ f32 mAttnFovY;
        /* 0x54 */ f32 mAttnRadius;
        /* 0x58 */ f32 mAttnUpperY;
        /* 0x5C */ f32 mAttnLowerY;
        /* 0x60 */ s16 field_0x60;
        /* 0x62 */ s16 mDamageTimer;
        /* 0x64 */ s16 mTestExpression;
        /* 0x66 */ s16 mTestMotion;
        /* 0x68 */ s16 mTestLookMode;
        /* 0x6A */ bool mTest;
    };

    static param const m;
};

STATIC_ASSERT(sizeof(daNpcShoe_Param_c::param) == 0x6C);

#endif /* D_A_NPC_SHOE_H */
