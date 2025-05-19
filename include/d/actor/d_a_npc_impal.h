#ifndef D_A_NPC_IMPAL_H
#define D_A_NPC_IMPAL_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpcImpal_c
 * @brief Impaz
 *
 * @details
 *
 */
class daNpcImpal_c : public daNpcF_c {
public:
    typedef int (daNpcImpal_c::*cutFunc)(int);
    typedef bool (daNpcImpal_c::*actionFunc)(void*);
    typedef BOOL (daNpcImpal_c::*EventFn)(int);

    enum Animation {
        /* 0x00 */ ANM_0,
        /* 0x01 */ ANM_1,
        /* 0x02 */ ANM_2,
        /* 0x03 */ ANM_3,
        /* 0x04 */ ANM_4,
        /* 0x05 */ ANM_5,
        /* 0x06 */ ANM_6,
        /* 0x07 */ ANM_7,
        /* 0x08 */ ANM_8,
        /* 0x09 */ ANM_9,
        /* 0x10 */ ANM_10,
        /* 0x11 */ ANM_11,
        /* 0x12 */ ANM_12,
    };

    enum Expression {
        /* 0x0 */ EXPR_0,
        /* 0x1 */ EXPR_1,
        /* 0x2 */ EXPR_2,
        /* 0x3 */ EXPR_3,
        /* 0x4 */ EXPR_4,
        /* 0x5 */ EXPR_5,
        /* 0x6 */ EXPR_6,
        /* 0x7 */ EXPR_7,
    };

    enum Motion {
        /* 0x00 */ MOT_0,
        /* 0x01 */ MOT_1,
        /* 0x02 */ MOT_2,
        /* 0x03 */ MOT_3,
        /* 0x04 */ MOT_4,
        /* 0x05 */ MOT_5,
        /* 0x06 */ MOT_6,
    };

    /* 80A079EC */ daNpcImpal_c();
    /* 80A07C00 */ ~daNpcImpal_c();
    /* 80A07DC4 */ int Create();
    /* 80A080F8 */ BOOL CreateHeap();
    /* 80A08524 */ int Delete();
    /* 80A08558 */ int Execute();
    /* 80A0857C */ int Draw();
    /* 80A085EC */ bool ctrlJoint(J3DJoint*, J3DModel*);
    /* 80A087BC */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80A087DC */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80A08828 */ bool setExpressionAnm(int, bool);
    /* 80A08A68 */ bool setExpressionBtp(int);
    /* 80A08B48 */ void setMotionAnm(int, f32);
    /* 80A08CBC */ void reset();
    /* 80A08EB8 */ inline bool setAction(daNpcImpal_c::actionFunc);
    /* 80A090E8 */ bool wait(void*);
    /* 80A099B4 */ void setMotion(int, f32, BOOL);
    /* 80A099F8 */ void setExpression(int, f32);
    /* 80A09A24 */ bool talk(void*);
    /* 80A09F4C */ bool demo(void*);
    /* 80A0A1E0 */ BOOL EvCut_ImpalAppear1(int);
    /* 80A0A680 */ BOOL EvCut_ImpalAppear2(int);
    /* 80A0A950 */ BOOL EvCut_CopyRod(int);
    /* 80A0ADF8 */ void setParam();
    /* 80A0AEA8 */ BOOL main();
    /* 80A0B380 */ BOOL ctrlBtk();
    /* 80A0B45C */ void setAttnPos();
    /* 80A0B76C */ void lookat();
    /* 80A0B94C */ BOOL drawDbgInfo();

    s16 getMessageNo() { return shape_angle.x; }
    u8 getSwitchNo() { return (fopAcM_GetParam(this) >> 8) & 0xFF; }
    inline void playExpression();
    inline void playMotion();
    inline s16 step(s16, int);
    inline void setExpressionTalkAfter();
    inline BOOL chkFindPlayer();
    inline void setLookMode(int i_lookMode);
    inline void deleteObstacle();

    static EventFn mEvtSeqList[4];

private:
    /* 0xB48 */ Z2Creature mCreatureSound;
    /* 0xBD8 */ daNpcF_MatAnm_c* mpMatAnm;
    /* 0xBDC */ daNpcF_Lookat_c mLookat;
    /* 0xC78 */ daNpcF_ActorMngr_c mActorMngr[1];
    /* 0xC80 */ fopAc_ac_c* mpTalkPartner;
    /* 0xC84 */ dCcD_Cyl mCyl;
    /* 0xDC0 */ actionFunc mpActionFn;
    /* 0xDCC */ request_of_phase_process_class mPhase[1];
    /* 0xDD4 */ u32 mItemPartnerId;
    /* 0xDD8 */ u32 field_0xdd8;
    /* 0xDDC */ u32 field_0xddc;
    /* 0xDE0 */ s16 mFlowID;
    /* 0xDE2 */ s16 field_de2;
    /* 0xDE4 */ s16 mLookMode;
    /* 0xDE6 */ u16 mMode;
    /* 0xDE8 */ u8 field_0xde8;
    /* 0xDE9 */ u8 field_0xde9;
};

STATIC_ASSERT(sizeof(daNpcImpal_c) == 0xdec);

struct daNpc_Impal_HIOParam {
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

class daNpcImpal_Param_c {
public:
    /* 80A0C204 */ virtual ~daNpcImpal_Param_c() {}

    static daNpc_Impal_HIOParam const m;
};

#endif /* D_A_NPC_IMPAL_H */
