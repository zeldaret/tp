#ifndef D_A_NPC_THE_H
#define D_A_NPC_THE_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpcThe_c
 * @brief Telma
 *
 * @details
 *
 */
class daNpcThe_c : public daNpcF_c {
public:
    typedef BOOL (daNpcThe_c::*ActionFn)(void*);
    typedef BOOL (daNpcThe_c::*EventFn)(int);

    enum Type {
        /* 0 */ TYPE_BAR,
        /* 1 */ TYPE_1,
        /* 2 */ TYPE_KAKARIKO,
    };

    enum Animation {
        /* 0x00 */ ANM_NONE,
        /* 0x01 */ ANM_F_TALK_A,
        /* 0x02 */ ANM_F_SMILE,
        /* 0x03 */ ANM_F_CHUCKLE,
        /* 0x04 */ ANM_F_TALK_B,
        /* 0x05 */ ANM_F_TALK_C,
        /* 0x06 */ ANM_F_LAUGH,
        /* 0x07 */ ANM_F_TALK_R,
        /* 0x08 */ ANM_FH_SMILE,
        /* 0x09 */ ANM_FH_CHUCKLE,
        /* 0x0A */ ANM_FH_TALK_B,
        /* 0x0B */ ANM_FH_TALK_C,
        /* 0x0C */ ANM_FH_LAUGH,
        /* 0x0D */ ANM_FH_TALK_R,
        /* 0x0E */ ANM_WAIT_A,
        /* 0x0F */ ANM_WAIT_LOOKING,
        /* 0x10 */ ANM_TO_WAIT_B,
        /* 0x11 */ ANM_WAIT_B,
        /* 0x12 */ ANM_WAIT_LOOKUP,
        /* 0x13 */ ANM_TALK_R,
        /* 0x14 */ ANM_TALKING_R,
        /* 0x15 */ ANM_LOOK_A,
        /* 0x16 */ ANM_LOOK,
        /* 0x17 */ ANM_KUNE_WAIT_A,
        /* 0x18 */ ANM_KUNE_TALK,
        /* 0x19 */ ANM_KUNE_WAIT_B,
        /* 0x1A */ ANM_KUNE_SHISHI,
    };

    enum Expression {
        /* 0x0 */ EXPR_TALK_A,
        /* 0x1 */ EXPR_SMILE,
        /* 0x2 */ EXPR_CHUCKLE,
        /* 0x3 */ EXPR_TALK_B,
        /* 0x4 */ EXPR_TALK_C,
        /* 0x5 */ EXPR_LAUGH,
        /* 0x6 */ EXPR_TALK_R,
        /* 0x7 */ EXPR_H_TALK_R,
        /* 0x8 */ EXPR_H_SMILE,
        /* 0x9 */ EXPR_H_CHUCKLE,
        /* 0xA */ EXPR_H_TALK_B,
        /* 0xB */ EXPR_H_TALK_C,
        /* 0xC */ EXPR_H_LAUGH,
        /* 0xD */ EXPR_NONE,
    };

    enum Motion {
        /* 0x0 */ MOT_WAIT_A,
        /* 0x1 */ MOT_LOOK_A,
        /* 0x2 */ MOT_TO_WAIT_B,
        /* 0x3 */ MOT_WAIT_LOOKUP,
        /* 0x4 */ MOT_KUNE_TALK,
        /* 0x5 */ MOT_KUNE_WAIT_A,
        /* 0x6 */ MOT_KUNE_SHISHI,
        /* 0x7 */ MOT_WAIT_B,
        /* 0x8 */ MOT_KUNE_WAIT_B,
        /* 0x9 */ MOT_TALK_R,
        /* 0xA */ MOT_LOOK,
    };

    /* 80AF76CC */ daNpcThe_c();
    /* 80AF78E0 */ ~daNpcThe_c();
    /*  inline  */ inline BOOL CreateHeap();
    /* 80AF7AE0 */ BOOL ctrlJoint(J3DJoint*, J3DModel*);
    /* 80AF7CB0 */ static BOOL createHeapCallBack(fopAc_ac_c*);
    /* 80AF8114 */ static BOOL ctrlJointCallBack(J3DJoint*, int);
    /* 80AF8160 */ bool setExpressionAnm(int, bool);
    /* 80AF841C */ bool setExpressionBtp(int);
    /* 80AF8564 */ void setMotionAnm(int, f32);
    /* 80AF8744 */ BOOL wait(void*);
    /* 80AF8B0C */ void setMotion(int, f32, int);
    /* 80AF8B50 */ void setExpression(int, f32);
    /* 80AF8B7C */ BOOL waitTW(void*);
    /* 80AF8CC4 */ BOOL talk(void*);
    /* 80AF912C */ BOOL test(void*);
    /* 80AF923C */ BOOL EvCut_TwResistance(int);
    /* 80AF9244 */ BOOL EvCut_Introduction(int);
    /* 80AF9358 */ cPhs__Step create();
    /* 80AF9748 */ void reset();
    /*  inline  */ inline int Draw();
    /* 80AF99F4 */ void setParam();
    /* 80AF9CF0 */ BOOL main();
    /* 80AF9F94 */ void playMotion();
    /* 80AFA338 */ void playExpression();
    /*  inline  */ inline void setExpressionTalkAfter();
    /* 80AFA6CC */ BOOL doEvent();
    /* 80AFADEC */ BOOL ctrlBtk();
    /* 80AFAEC8 */ void setAttnPos();
    /* 80AFB1C4 */ void lookat();
    /* 80AFB488 */ BOOL drawDbgInfo();
    /* 80AFBD9C */ void adjustShapeAngle();

    u8 getTypeFromParam() {
        switch (fopAcM_GetParam(this) & 0xff) {
        case 0:
            return TYPE_BAR;
        case 1:
            return TYPE_1;
        case 2:
            return TYPE_KAKARIKO;
        default:
            return TYPE_BAR;
        }
    }

    bool isDelete() {
        if (mType == TYPE_BAR || mType == TYPE_1 || mType == TYPE_KAKARIKO) {
            return false;
        } else {
            return true;
        }
    }

    void setLookMode(int i_lookMode) {
        if (i_lookMode >= 0 && i_lookMode < 6 && i_lookMode != mLookMode) {
            mLookMode = i_lookMode;
        }
    }

    bool isSneaking() {
        if (!strcmp(dComIfGp_getStartStageName(), "R_SP116") && dComIfGp_getStartStageRoomNo() == 5
                                                    && dComIfG_play_c::getLayerNo(0) == 2) {
            return true;
        }
        return false;
    }

    bool chkAction(ActionFn action) {
        return mpActionFn == action;
    }

    BOOL setAction(ActionFn action) {
        if (mpActionFn != NULL) {
            mMode = 3;
            (this->*mpActionFn)(NULL);
        }
        if (action != NULL) {
            mpActionFn = action;
            mMode = 0;
            (this->*mpActionFn)(NULL);
        }
        return true;
    }

    void doNormalAction() {
        mOrderEvtNo = 0;
        if (mpNextActionFn != NULL) {
            if (mpNextActionFn == mpActionFn) {
                (this->*mpActionFn)(NULL);
            } else {
                ActionFn action = mpNextActionFn;
                setAction(action);
            }
        }
    }

private:
    /* 0xB48 */ Z2Creature mSound;
    /* 0xBD8 */ daNpcF_MatAnm_c* mpMatAnm;
    /* 0xBDC */ daNpcF_Lookat_c mLookat;
    /* 0xC78 */ daNpcF_ActorMngr_c mActorMngr[3];
    /* 0xC90 */ u8 field_0xc90[4];
    /* 0xC94 */ dCcD_Cyl mColCyl;
    /* 0xDD0 */ ActionFn mpNextActionFn;
    /* 0xDDC */ ActionFn mpActionFn;
    /* 0xDE8 */ request_of_phase_process_class mPhase[2];
    /* 0xDF8 */ u8 field_0xdf8[8];
    /* 0xE00 */ u32 mItemID;
    /* 0xE04 */ u32 field_0xe04;
    /* 0xE08 */ u32 field_0xe08;
    /* 0xE0C */ u32 field_0xe0c;
    /* 0xE10 */ u32 field_0xe10;
    /* 0xE14 */ int mFlowID;
    /* 0xE18 */ s16 mLookMode;
    /* 0xE1A */ u16 mMode;
    /* 0xE1C */ bool field_0xe1c;
    /* 0xE1D */ bool field_0xe1d;
    /* 0xE1E */ u8 mType;

    static char* mEvtCutNameList[4];
    static EventFn mEvtCutList[4];
};

STATIC_ASSERT(sizeof(daNpcThe_c) == 0xE20);

class daNpcThe_Param_c {
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
    };

    /* 80AFBDA0 */ virtual ~daNpcThe_Param_c() {}

    static daNpcThe_Param_c::param const m;
};

STATIC_ASSERT(sizeof(daNpcThe_Param_c::param) == 0x6C);

#endif /* D_A_NPC_THE_H */
