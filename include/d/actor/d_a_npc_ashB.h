#ifndef D_A_NPC_ASHB_H
#define D_A_NPC_ASHB_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpcAshB_c
 * @brief Ashei (Yeti Garb)
 *
 * @details
 *
 */
class daNpcAshB_c : public daNpcF_c {
public:
    typedef bool (daNpcAshB_c::*ActionFn)(void*);
    typedef BOOL (daNpcAshB_c::*EventFn)(int);

    enum Animation {
        /* 0x00 */ ANM_NONE,
        /* 0x01 */ ANM_F_TALK_A,
        /* 0x02 */ ANM_F_TALK_B,
        /* 0x03 */ ANM_F_SILENT,
        /* 0x04 */ ANM_F_COOL,
        /* 0x05 */ ANM_F_ASK,
        /* 0x06 */ ANM_F_EXPLAIN_A,
        /* 0x07 */ ANM_F_EXPLAIN_B,
        /* 0x08 */ ANM_WAIT_A,
        /* 0x09 */ ANM_WAIT_B,
        /* 0x0A */ ANM_WAIT_C,
        /* 0x0B */ ANM_STEP,
        /* 0x0C */ ANM_COOL,
        /* 0x0D */ ANM_ASK,
        /* 0x0E */ ANM_EXPLAIN_A,
        /* 0x0F */ ANM_EXPLAIN_B,
        /* 0x10 */ ANM_BOWWAIT,
        /* 0x11 */ ANM_BOWRUN,
    };

    enum Expression {
        /* 0x0 */ EXPR_TALK_A,
        /* 0x1 */ EXPR_TALK_B,
        /* 0x2 */ EXPR_SILENT,
        /* 0x3 */ EXPR_COOL,
        /* 0x4 */ EXPR_ASK,
        /* 0x5 */ EXPR_EXPLAIN_A,
        /* 0x6 */ EXPR_EXPLAIN_B,
        /* 0x7 */ EXPR_NONE,
    };

    enum Motion {
        /* 0x0 */ MOT_WAIT_A,
        /* 0x1 */ MOT_WAIT_B,
        /* 0x2 */ MOT_WAIT_C,
        /* 0x3 */ MOT_COOL,
        /* 0x4 */ MOT_ASK,
        /* 0x5 */ MOT_EXPLAIN_A,
        /* 0x6 */ MOT_EXPLAIN_B,
        /* 0x7 */ MOT_BOWWAIT,
        /* 0x8 */ MOT_BOWRUN,
        /* 0x9 */ MOT_STEP,
    };

    enum LookMode {
        /* 0 */ LOOK_NONE,
        /* 1 */ LOOK_RESET,
        /* 2 */ LOOK_PLAYER,
        /* 3 */ LOOK_PLAYER_TALK,
        /* 4 */ LOOK_ACTOR,
        /* 5 */ LOOK_ATTN,
    };

public:
    /* 8095DE4C */ daNpcAshB_c();
    /* 8095E060 */ ~daNpcAshB_c();
    /* 8095E224 */ cPhs__Step Create();
    /* 8095E4A0 */ BOOL CreateHeap();
    /* 8095E914 */ int Delete();
    /* 8095E948 */ int Execute();
    /* 8095E96C */ int Draw();
    /* 8095E9C8 */ bool ctrlJoint(J3DJoint*, J3DModel*);
    /* 8095EB94 */ static BOOL createHeapCallBack(fopAc_ac_c*);
    /* 8095EBB4 */ static BOOL ctrlJointCallBack(J3DJoint*, int);
    /* 8095EC00 */ bool setExpressionAnm(int, bool);
    /* 8095EE00 */ bool setExpressionBtp(int);
    /* 8095EEE0 */ bool setMotionAnm(int, f32);
    /* 8095F0A4 */ void reset();
    /* 8095F21C */ inline bool setAction(ActionFn i_actionFn);
    /* 8095F2C4 */ bool wait(void*);
    /* 8095FC70 */ void setMotion(int, f32, int);
    /* 8095FD34 */ void setExpression(int, f32);
    /* 8095FD9C */ bool talk(void*);
    /* 809602E0 */ bool demo(void*);
    /* 809604C8 */ BOOL EvCut_Appear(int);
    /* 80960A60 */ void setParam();
    /* 80960AE8 */ BOOL main();
    /* 80960D64 */ void playMotion();
    /* 80961188 */ BOOL ctrlBtk();
    /* 80961264 */ void setAttnPos();
    /* 80961574 */ void lookat();
    /* 80961770 */ void drawOtherMdls();
    /* 809617F8 */ BOOL drawDbgInfo();

    static EventFn mEvtSeqList[2];

    s16 getMessageNo() { return (fopAcM_GetParam(this) >> 8) & 0xFFFF;}
    inline void setExpressionTalkAfter() { setExpression(6, -1.0f); }
    inline void setLookMode(int i_lookMode);
    inline BOOL chkFindPlayer();
    inline bool step(s16, int, f32);
    inline void playExpression();

private:
    /* 0xB48 */ Z2Creature mCreatureSound;
    /* 0xBD8 */ daNpcF_MatAnm_c* mpMatAnm;
    /* 0xBDC */ J3DModel* mpModel;
    /* 0xBE0 */ daNpcF_Lookat_c mLookat;
    /* 0xC7C */ daNpcF_ActorMngr_c mActorMngr[1];
    /* 0xC84 */ fopAc_ac_c* mpTalkPartner;
    /* 0xC88 */ dCcD_Cyl mCyl;
    /* 0xDC4 */ ActionFn mpActionFn;
    /* 0xDD0 */ request_of_phase_process_class mPhase[1];
    /* 0xDD8 */ s32 mItemPartnerId;
    /* 0xDDC */ u32 field_0xddc;
    /* 0xDE0 */ u32 field_0xde0;
    /* 0xDE4 */ s16 mFlowID;
    /* 0xDE6 */ s16 mLookMode;
    /* 0xDE8 */ u16 mMode;
    /* 0xDEA */ s16 field_0xdea;
    /* 0xDEC */ u8 field_0xdec;
    /* 0xDED */ u8 field_0xded;
    /* 0xDEE */ u8 field_0xdee;

};

STATIC_ASSERT(sizeof(daNpcAshB_c) == 0xdf0);

class daNpcAshB_Param_c {
public:
    /* 80962078 */ virtual ~daNpcAshB_Param_c();

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
    };

    static param const m;
};

#endif /* D_A_NPC_ASHB_H */
