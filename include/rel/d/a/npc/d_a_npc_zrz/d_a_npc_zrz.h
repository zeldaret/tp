#ifndef D_A_NPC_ZRZ_H
#define D_A_NPC_ZRZ_H

#include "d/a/d_a_npc.h"

class daGraveStone_c;
class daObjZraRock_c;

/**
 * @ingroup actors-npcs
 * @class daNpc_zrZ_c
 * @brief Rutela
 *
 * @details The ghost of the Zora queen.
 *
 */
class daNpc_zrZ_c : public daNpcF_c {
public:
    typedef BOOL (daNpc_zrZ_c::*ActionFn)(void*);
    typedef BOOL (daNpc_zrZ_c::*EventFn)(int);

    /* 80B93DCC */ daNpc_zrZ_c();
    /* 80B94014 */ ~daNpc_zrZ_c();
    /* 80B9423C */ cPhs__Step create();
    /* 80B9453C */ int CreateHeap();
    /* 80B949F4 */ int Delete();
    /* 80B94A28 */ int Execute();
    /* 80B94A48 */ int Draw();
    /* 80B94B34 */ int draw(BOOL, BOOL, f32, _GXColorS10*, BOOL);
    /* 80B94E18 */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 80B950F4 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80B95114 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80B95244 */ void setParam();
    /* 80B953CC */ BOOL main();
    /* 80B95598 */ BOOL ctrlBtk();
    /* 80B956B4 */ void setAttnPos();
    /* 80B95BB8 */ void setMtx();
    /* 80B95C6C */ bool setExpressionAnm(int, bool);
    /* 80B95DD0 */ bool setExpressionBtp(int);
    /* 80B95F10 */ void setExpression(int, f32);
    /* 80B95F3C */ void setMotionAnm(int, f32);
    /* 80B9612C */ void setMotion(int, f32, int);
    /* 80B96170 */ BOOL drawDbgInfo();
    /* 80B96178 */ void drawOtherMdls();
    /* 80B9617C */ u8 getTypeFromParam();
    /*  inline  */ u8 getPathNoFromParam() { return (fopAcM_GetParam(this) >> 8) & 0xff; }
    /*  inline  */ u8 getDemoMode() { return (fopAcM_GetParam(this) >> 0x10) & 0xf; }
    /* 80B961B4 */ BOOL isDelete();
    /* 80B96268 */ void reset();
    /* 80B9652C */ void playExpression();
    /* 80B96618 */ void playMotion();
    /* 80B96740 */ BOOL chkAction(ActionFn);
    /* 80B9676C */ BOOL setAction(ActionFn);
    /* 80B96814 */ BOOL selectAction();
    /* 80B968E0 */ void doNormalAction(BOOL);
    /* 80B969F4 */ BOOL doEvent();
    /* 80B96DF0 */ BOOL setSkipZev(int, int);
    /* 80B96E7C */ void setLookMode(int);
    /* 80B96EA0 */ void lookat();
    /* 80B97128 */ void setExpressionTalkAfter();
    /* 80B97160 */ void lightReady();
    /* 80B971BC */ void setLightPos();
    /* 80B9723C */ void lightPowerCalc(int);
    /* 80B972EC */ void lightColorProc();
    /* 80B974BC */ BOOL ECut_helpPrince(int);
    /* 80B97B78 */ BOOL ECut_comeHere(int);
    /* 80B97D7C */ BOOL ECut_restoreLink(int);
    /* 80B97EB4 */ BOOL ECut_clothesGet(int);
    /* 80B98540 */ BOOL ECut_getAfter(int);
    /* 80B9877C */ BOOL ECut_sealRelease(int);
    /* 80B98ACC */ BOOL ECut_srSkip(int);
    /* 80B98C34 */ void pullbackPlayer(f32);
    /* 80B98D04 */ BOOL wait(void*);
    /* 80B98F84 */ BOOL comeHere(void*);
    /* 80B998BC */ BOOL comeHere2(void*);
    /* 80B9A0EC */ BOOL talk(void*);
    /* 80B9A29C */ BOOL test(void*);
    /* 80B9A380 */ void himoCalc();
    /* 80B9AF7C */ void adjustShapeAngle();

private:
    /* 0x0B48 */ Z2Creature mCreatureSound;
    /* 0x0BD8 */ daNpcF_MatAnm_c* mpMatAnm;
    /* 0x0BDC */ mDoExt_invisibleModel mInvisibleModel;
    /* 0x0BE4 */ daNpcF_Lookat_c mLookat;
    /* 0x0C80 */ daNpcF_ActorMngr_c mActorMngr[2];
    /* 0x0C90 */ daNpcF_Path_c mPath;
    /* 0x12C0 */ u8 field_0x12c0[4];
    /* 0x12C4 */ dCcD_Cyl mCcCyl;
    /* 0x1400 */ ActionFn mpNextActionFn;
    /* 0x140C */ ActionFn mpActionFn;
    /* 0x1418 */ request_of_phase_process_class mPhase[2];
    /* 0x1428 */ u8 field_0x1428[8];
    /* 0x1430 */ u32 mItemID;
    /* 0x1434 */ int field_0x1434;
    /* 0x1438 */ int field_0x1438;
    /* 0x143C */ int field_0x143c;
    /* 0x1440 */ int field_0x1440;
    /* 0x1444 */ int mFlowID;
    /* 0x1448 */ s16 mLookMode;
    /* 0x144A */ u16 mMode;
    /* 0x144C */ u8 mType;
    /* 0x144D */ bool mIsLeading;
    /* 0x144E */ u8 mDemoMode;
    /* 0x144F */ bool mIsMoving;
    /* 0x1450 */ f32 mSpeed;
    /* 0x1454 */ u8 mSwitch1;
    /* 0x1455 */ u8 mSwitch2;
    /* 0x1456 */ u8 mSwitch3;
    /* 0x1458 */ csXyz mMoveAngle;
    /* 0x1460 */ int mModulationParam;
    /* 0x1464 */ f32 mModulationOffset;
    /* 0x1468 */ LIGHT_INFLUENCE mLight;
    /* 0x1488 */ f32 mAllcolRatio;
    /* 0x148C */ int mLightEffectFrame;
    /* 0x1490 */ bool mUseLightEffect;
    /* 0x1491 */ bool mClothesObtained;
    /* 0x1494 */ daGraveStone_c* mpGravestoneActor;
    /* 0x1498 */ fopAc_ac_c* mpClothActor;
    /* 0x149C */ daObjZraRock_c* mpRockActor;
    /* 0x14A0 */ cXyz mLimbCalcPos;
    /* 0x14AC */ cXyz mLimbCalcRelPos;
    /* 0x14B8 */ csXyz mLimbAngle;
    /* 0x14C0 */ BOOL mMusicSet;
    /* 0x14C4 */ bool mSealReleased;

    static char* mEvtCutNameList[8];
#ifdef NONMATCHING
    static EventFn mEvtCutList[8];
#else
    static u8 mEvtCutList[96];
#endif

    enum Animation {
        /* 0x0 */ ANM_NONE,
        /* 0x1 */ ANM_F_TALK_A,
        /* 0x2 */ ANM_WAIT_GT_A,
        /* 0x3 */ ANM_LEAD,
        /* 0x4 */ ANM_COMEON,
    };

    enum Expression {
        /* 0x0 */ EXPR_TALK_A,
        /* 0x1 */ EXPR_NONE,
    };

    enum Motion {
        /* 0x0 */ MOT_WAIT_GT_A,
        /* 0x1 */ MOT_COMEON,
        /* 0x2 */ MOT_LEAD,
    };

    enum DemoMode {
        /* 0x1 */ DEMO_WAIT = 1,
        /* 0x2 */ DEMO_COME_HERE,
        /* 0x3 */ DEMO_COME_HERE_2,
    };

    enum Event {
        /* 0x0 */ EVT_NONE,
        /* 0x1 */ EVT_HELP_PRINCE,
        /* 0x2 */ EVT_COME_HERE,
        /* 0x3 */ EVT_RESTORE_LINK,
        /* 0x4 */ EVT_CLOTHES_GET,
        /* 0x5 */ EVT_GET_AFTER,
        /* 0x6 */ EVT_SEAL_RELEASE,
        /* 0x7 */ EVT_SR_SKIP,
    };
};

STATIC_ASSERT(sizeof(daNpc_zrZ_c) == 0x14c8);

class daNpc_zrZ_Param_c {
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
        /* 0x70 */ f32 mFollowDst;
        /* 0x74 */ f32 mRestoreDst;
        /* 0x78 */ f32 mMaxSpeed;
        /* 0x7C */ f32 mClothesGetDst;
        /* 0x80 */ f32 field_0x80;
    };

    /* 80B9AF80 */ virtual ~daNpc_zrZ_Param_c() {}

    static param const m;
};

STATIC_ASSERT(sizeof(daNpc_zrZ_Param_c::param) == 0x84);

#endif /* D_A_NPC_ZRZ_H */
