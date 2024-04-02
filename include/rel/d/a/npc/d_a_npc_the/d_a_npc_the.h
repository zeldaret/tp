#ifndef D_A_NPC_THE_H
#define D_A_NPC_THE_H

#include "d/a/d_a_npc.h"
#include "f_op/f_op_actor_mng.h"

// #define NONMATCHING

class daNpcThe_c : public daNpcF_c {
public:
    typedef BOOL (daNpcThe_c::*ActionFn)(void*);
    typedef BOOL (daNpcThe_c::*EventFn)(int);

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
            return 0;
        case 1:
            return 1;
        case 2:
            return 2;
        default:
            return 0;
        }
    }

    bool isDelete() {
        if (mType == 0 || mType == 1 || mType == 2) {
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
            mState = 3;
            (this->*mpActionFn)(NULL);
        }
        if (action != NULL) {
            mpActionFn = action;
            mState = 0;
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
    /* 0xE1A */ u16 mState;
    /* 0xE1C */ bool field_0xe1c;
    /* 0xE1D */ bool field_0xe1d;
    /* 0xE1E */ u8 mType;

    static char* mEvtCutNameList[4];
#ifdef NONMATCHING
    static EventFn mEvtCutList[4];
#else
    static u8 mEvtCutList[48];
#endif
};

STATIC_ASSERT(sizeof(daNpcThe_c) == 0xE20);

class daNpcThe_Param_c {
public:
    struct param {
        /* 0x00 */ f32 field_0x00;
        /* 0x04 */ f32 mGravity;
        /* 0x08 */ f32 mScale;
        /* 0x0C */ f32 field_0x0c;
        /* 0x10 */ f32 field_0x10;
        /* 0x14 */ f32 mCylH;
        /* 0x18 */ f32 mWallH;
        /* 0x1C */ f32 mWallR;
        /* 0x20 */ f32 field_0x20;
        /* 0x24 */ f32 field_0x24;
        /* 0x28 */ f32 field_0x28;
        /* 0x2C */ f32 field_0x2c;
        /* 0x30 */ f32 field_0x30;
        /* 0x34 */ f32 field_0x34;
        /* 0x38 */ f32 field_0x38;
        /* 0x3C */ f32 field_0x3c;
        /* 0x40 */ f32 mLookatScl;
        /* 0x44 */ f32 field_0x44;
        /* 0x48 */ s16 field_0x48;
        /* 0x4A */ s16 field_0x4a;
        /* 0x4C */ s16 field_0x4c;
        /* 0x4E */ s16 field_0x4e;
        /* 0x50 */ f32 field_0x50;
        /* 0x54 */ f32 field_0x54;
        /* 0x58 */ f32 field_0x58;
        /* 0x5C */ f32 field_0x5c;
        /* 0x60 */ s16 field_0x60;
        /* 0x62 */ s16 field_0x62;
        /* 0x64 */ s16 mTestExpression;
        /* 0x66 */ s16 mTestMotion;
        /* 0x68 */ s16 mTestLookMode;
        /* 0x6A */ bool mTest;
    };

    /* 80AFBDA0 */ virtual ~daNpcThe_Param_c();

    static daNpcThe_Param_c::param const m;
};

STATIC_ASSERT(sizeof(daNpcThe_Param_c::param) == 0x6C);

#endif /* D_A_NPC_THE_H */
