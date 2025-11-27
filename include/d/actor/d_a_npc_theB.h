#ifndef D_A_NPC_THEB_H
#define D_A_NPC_THEB_H

#include "d/actor/d_a_npc4.h"

/**
 * @ingroup actors-npcs
 * @class daNpcTheB_c
 * @brief Telma B
 *
 * @details
 *
*/

struct daNpcTheB_HIOParam {
    /* 0x0 */ daNpcF_HIOParam common;
};

struct daNpcTheB_Param_c {
    /* 80B00D00 */ virtual ~daNpcTheB_Param_c() {}

    static daNpcTheB_HIOParam const m;
};

#if DEBUG
class daNpcTheB_HIO_c : public mDoHIO_entry_c {
public:
    daNpcTheB_HIO_c();
    void listenPropertyEvent(const JORPropertyEvent*);
    void genMessage(JORMContext*);
    
    /* 0x8 */ daNpcTheB_HIOParam m;
};
#define NPC_THEB_HIO_CLASS daNpcTheB_HIO_c
#else
#define NPC_THEB_HIO_CLASS daNpcTheB_Param_c
#endif

class daNpcTheB_c : public daNpcF_c {
public:
    typedef int (daNpcTheB_c::*actionFunc)(void*);
    typedef int (daNpcTheB_c::*cutFunc)(int);

    enum Animation {
        /* 0x0 */ ANM_NONE,
        /* 0x1 */ ANM_F_TALK_A,
        /* 0x2 */ ANM_F_TALK_B,
        /* 0x3 */ ANM_F_TALK_C,
        /* 0x4 */ ANM_F_BEND_TURN,
        /* 0x5 */ ANM_FH_TALK_B,
        /* 0x6 */ ANM_FH_TALK_C,
        /* 0x7 */ ANM_FH_BEND_WAIT,
        /* 0x8 */ ANM_SIT,
        /* 0x9 */ ANM_SIT_B,
        /* 0xA */ ANM_WHIP,
        /* 0xB */ ANM_WHIP_B,
        /* 0xC */ ANM_BEND_WAIT,
        /* 0xD */ ANM_BEND_TURN,
    };

    enum Expression {
        /* 0x0 */ EXPR_TALK_A,
        /* 0x1 */ EXPR_TALK_B,
        /* 0x2 */ EXPR_TALK_C,
        /* 0x3 */ EXPR_NONE,
    };

    enum Motion {
        /* 0x0 */ MOT_SIT,
        /* 0x1 */ MOT_SIT_B,
        /* 0x2 */ MOT_BEND_WAIT,
        /* 0x3 */ MOT_WHIP,
        /* 0x4 */ MOT_WHIP_B,
        /* 0x5 */ MOT_BEND_TURN,
    };

    enum Expression_BTP {
        /* 0x0 */ EXPR_BTP_THEB,
    };

    /* 80AFC76C */ daNpcTheB_c();
    /* 80AFC980 */ ~daNpcTheB_c();
    /* 80AFCB44 */ cPhs__Step create();
    /* 80AFCD98 */ int CreateHeap();
    /* 80AFD1FC */ int Delete();
    /* 80AFD230 */ int Execute();
    /* 80AFD250 */ int Draw();
    /* 80AFD2A8 */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 80AFD49C */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80AFD4BC */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80AFD508 */ cXyz getHandPos1(int);
    /* 80AFD5F0 */ cXyz getHandPos2(int);
    /* 80AFD6D8 */ void setHintEvent(s32, u16, int);
    /* 80AFD6F0 */ BOOL main();
    /* 80AFD938 */ void setParam();
    /* 80AFDAA4 */ BOOL ctrlBtk();
    /* 80AFDB70 */ void setAttnPos();
    /* 80AFDEC0 */ bool setExpressionAnm(int, bool);
    /* 80AFE0BC */ bool setExpressionBtp(int);
    /* 80AFE1BC */ void setMotionAnm(int, f32);
    /* 80AFE398 */ BOOL drawDbgInfo();
    /* 80AFE3A0 */ void reset();
    /* 80AFE574 */ void playExpression();
    /* 80AFE704 */ void playMotion();
    /* 80AFE920 */ void doNormalAction();
    /* 80AFEA14 */ BOOL doEvent();
    /* 80AFED24 */ void lookat();
    /* 80AFEECC */ int wait(void*);
    /* 80AFF45C */ void setMotion(int, f32, int);
    /* 80AFF4A0 */ void setExpression(int, f32);
    /* 80AFF4CC */ int talk(void*);
    /* 80AFF6AC */ int EvCut_PersonalCombatIntro(int);
    /* 80AFF888 */ int EvCut_PersonalCombatRevenge(int);
    /* 80AFFBB4 */ void EvCut_PersonalCombatAfter();
    /* 80AFFEF4 */ int EvCut_AnnulationFieldRace(int);
    /* 80AFFFE0 */ int EvCut_TheBHint(int);
    /* 80B00204 */ int EvCut_CoachGuardGameOver(int);

    s16 getMessageNo() { return fopAcM_GetParam(this) & 0xFFFF; }
    void setTRMtx(MtxP mtx) { mAnm_p->getModel()->setBaseTRMtx(mtx); }
    void setGameOver() { mGameOver = 1; }
    f32 getCoachSpeed() { return fopAcM_GetSpeedF((fopAc_ac_c*)fpcM_SearchByID(parentActorID)); }
    void setAction(actionFunc action) {
        mMode = 3;

        if (mAction) {
            (this->*mAction)(NULL);
        }

        mMode = 0;
        mAction = action;

        if (mAction) {
            (this->*mAction)(NULL);
        }
    }
    BOOL chkAction(actionFunc action) { return mAction == action; }
    void setLookMode(int i_lookMode) {
        if (i_lookMode >= 0 && i_lookMode < 3 && i_lookMode != mLookMode) {
            mLookMode = i_lookMode;
        }
    }
    void setWaitAnimation();
    void setExpressionTalkAfter() {
        switch (mExpression) {
            default:
                setExpression(EXPR_NONE, -1.0f);
                break;
        }
    }

    static cutFunc mEvtSeqList[6];

private:
    /* 0xB48 */ Z2Creature mSound;
    /* 0xBD8 */ daNpcF_MatAnm_c* mpMatAnm;
    /* 0xBDC */ daNpcF_Lookat_c mLookat;
    /* 0xC78 */ daNpcF_ActorMngr_c mActorMngrs[1];
    /* 0xC80 */ NPC_THEB_HIO_CLASS* mpHIO;
    /* 0xC84 */ dCcD_Cyl mCyl;
    /* 0xDC0 */ actionFunc mNextAction;
    /* 0xDCC */ actionFunc mAction;
    /* 0xDD8 */ request_of_phase_process_class mPhase;
    /* 0xDE0 */ int field_0xde0;
    /* 0xDE4 */ int field_0xde4;
    /* 0xDE8 */ int field_0xde8;
    /* 0xDEC */ int field_0xdec;
    /* 0xDF0 */ int mRoomNo;
    /* 0xDF4 */ int mMsgNo;
    /* 0xDF8 */ int mHintMsgNo;
    /* 0xDFC */ int mTimer;
    /* 0xE00 */ s16 mLookMode;
    /* 0xE02 */ u16 mMode;
    /* 0xE04 */ u16 field_0xe04;
    /* 0xE06 */ s16 mBackboneRotX;
    /* 0xE08 */ s16 mBackboneRotY;
    /* 0xE0A */ s16 mBackboneRotZ;
    /* 0xE0C */ u8 mHintEvtFlag;
    /* 0xE0D */ u8 mGameOver;
    /* 0xE0E */ u8 mPersonalCombatAfterFlag;
    /* 0xE0F */ u8 mPersonalCombatAfterMode;
    /* 0xE10 */ u8 mPersonalCombatAfterTimer;
    /* 0xE11 */ u8 mUnkFlag;
};

STATIC_ASSERT(sizeof(daNpcTheB_c) == 0xe14);

#endif /* D_A_NPC_THEB_H */
