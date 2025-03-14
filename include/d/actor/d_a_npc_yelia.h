#ifndef D_A_NPC_YELIA_H
#define D_A_NPC_YELIA_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Yelia_c
 * @brief Ilia
 *
 * @details
 *
 */
class daNpc_Yelia_c : public daNpcT_c {
public:
    /* 80B4D30C */ ~daNpc_Yelia_c();
    /* 80B4D458 */ cPhs__Step create();
    /* 80B4D754 */ int CreateHeap();
    /* 80B4DC20 */ int Delete();
    /* 80B4DC54 */ int Execute();
    /* 80B4DC74 */ int Draw();
    /* 80B4DD08 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80B4DD28 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80B4DD80 */ u8 getType();
    /* 80B4DDF8 */ BOOL isDelete();
    /* 80B4DF10 */ void reset();
    /* 80B4E068 */ void afterJntAnm(int);
    /* 80B4E0F4 */ void setParam();
    /* 80B4E2C0 */ BOOL checkChangeEvt();
    /* 80B4E5BC */ void setAfterTalkMotion();
    /* 80B4E6A0 */ void srchActors();
    /* 80B4E7C8 */ BOOL evtTalk();
    /* 80B4E868 */ BOOL evtCutProc();
    /* 80B4E930 */ void action();
    /* 80B4EA28 */ void beforeMove();
    /* 80B4EAEC */ void setAttnPos();
    /* 80B4EE4C */ void setCollision();
    /* 80B4EFA4 */ BOOL drawDbgInfo();
    /* 80B4EFAC */ BOOL selectAction();
    /* 80B4F054 */ BOOL chkAction(BOOL (daNpc_Yelia_c::*)(void*));
    /* 80B4F080 */ BOOL setAction(BOOL (daNpc_Yelia_c::*)(void*));
    /* 80B4F128 */ BOOL cutConversationAboutLoopHole(int);
    /* 80B4F3E0 */ BOOL cutTWResistance(int);
    /* 80B4F534 */ BOOL cutTakeWoodStatue(int);
    /* 80B4FDD8 */ BOOL cutClothTry(int);
    /* 80B4FE78 */ BOOL cutThankYou(int);
    /* 80B50084 */ BOOL wait(void*);
    /* 80B5080C */ BOOL horseWait(void*);
    /* 80B50A0C */ BOOL reminiscence(void*);
    /* 80B50B60 */ BOOL talk(void*);
    /* 80B52104 */ daNpc_Yelia_c(daNpcT_faceMotionAnmData_c const* i_faceMotionAnmData,
                        daNpcT_motionAnmData_c const* i_motionAnmData,
                        daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_faceMotionSequenceData,
                        int i_faceMotionStepNum,
                        daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_motionSequenceData,
                        int i_motionStepNum,
                        daNpcT_evtData_c const* i_evtData, char** i_arcNames)
                        : daNpcT_c(i_faceMotionAnmData, i_motionAnmData, i_faceMotionSequenceData,
                        i_faceMotionStepNum, i_motionSequenceData, i_motionStepNum, i_evtData,
                        i_arcNames) {}
    /* 80B521E4 */ s32 getEyeballMaterialNo() { return 1; }
    /* 80B521EC */ s32 getHeadJointNo() { return 4; }
    /* 80B521F4 */ s32 getNeckJointNo() { return 3; }
    /* 80B521FC */ s32 getBackboneJointNo() { return 1; }
    /* 80B52204 */ BOOL checkChangeJoint(int i_jointNo) { return i_jointNo == 4; }
    /* 80B52214 */ BOOL checkRemoveJoint(int i_jointNo) {return i_jointNo == 9; }
    /* 80B52224 */ BOOL chkXYItems() { return true; }

    u32 getFlowNodeNo() {
        u16 no = home.angle.x;
        if (no == 0xffff) {
            return -1;
        }
        return no;
    }

    static char* mCutNameList[6];
    static int (daNpc_Yelia_c::*mCutList[6])(int);
private:
    /* 0xE40 */ u8 field_0xe40[0xe44 - 0xe40];
    /* 0xE44 */ dCcD_Cyl mCcCyl;
    /* 0xF80 */ u8 mType;
    /* 0xF84 */ daNpcT_ActorMngr_c mActorMngr[4];
    /* 0xFA4 */ BOOL (daNpc_Yelia_c::*mpNextAction)(void*);
    /* 0xFB0 */ BOOL (daNpc_Yelia_c::*mpAction)(void*);
    /* 0xFBC */ daNpcT_Path_c mPath;
    /* 0xFE4 */ fpc_ProcID mItemId;
    /* 0xFE8 */ int mPendantTimer;
    /* 0xFEC */ u8 field_0xfec;
};

STATIC_ASSERT(sizeof(daNpc_Yelia_c) == 0xff0);

class daNpc_Yelia_Param_c {
public:
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
        /* 0x6C */ f32 field_0x6c;
        /* 0x70 */ f32 field_0x70;
        /* 0x74 */ f32 field_0x74;
        /* 0x78 */ f32 field_0x78;
        /* 0x7C */ f32 field_0x7c;
        /* 0x80 */ f32 field_0x80;
        /* 0x84 */ f32 field_0x84;
        /* 0x88 */ f32 field_0x88;
    };

    /* 80B5222C */ virtual ~daNpc_Yelia_Param_c() {}

    static param const m;
};

#endif /* D_A_NPC_YELIA_H */
