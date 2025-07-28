#ifndef D_A_OBJ_VOLCBOM_H
#define D_A_OBJ_VOLCBOM_H

#include "d/d_bg_s_acch.h"
#include "d/d_bg_s_movebg_actor.h"
#include "d/d_cc_d.h"
#include "d/d_msg_flow.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjVolcBom_c
 * @brief Volcano Bomb?
 *
 * @details
 *
 */
class daObjVolcBom_c : public dBgS_MoveBgActor {
public:
    typedef void (daObjVolcBom_c::*modeFunc)();
    typedef void (daObjVolcBom_c::*actionFunc)();

    enum Mode {
        MODE_WAIT_APPEAR,
        MODE_FALL,
        MODE_WAIT_END_FALL_DEMO,
        MODE_WAIT,
    };

    enum Action {
        ACTION_WAIT,
        ACTION_ORDER_EVENT,
        ACTION_TALK_EVENT,
        ACTION_WARP_EVENT,
        ACTION_ORDER_A_TALK_EVENT,
        ACTION_DEAD,
    };

    /* 80D241E0 */ void initBaseMtx();
    /* 80D24238 */ void setBaseMtx();
    /* 80D242A8 */ int Create();
    /* 80D244E0 */ int CreateHeap();
    /* 80D248F4 */ int create1st();
    /* 80D249D0 */ int Execute(Mtx**);
    /* 80D24A2C */ void mode_proc_call();
    /* 80D24B18 */ void init_modeWaitAppear();
    /* 80D24B6C */ void modeWaitAppear();
    /* 80D24D80 */ void init_modeFall();
    /* 80D24E50 */ void modeFall();
    /* 80D25024 */ void init_modeWaitEndFallDemo();
    /* 80D25038 */ void modeWaitEndFallDemo();
    /* 80D25094 */ void init_modeWait();
    /* 80D25100 */ void modeWait();
    /* 80D25178 */ void clrDzb();
    /* 80D251CC */ void setDzb();
    /* 80D25224 */ void appear();
    /* 80D25230 */ void disappear();
    /* 80D2523C */ void setSmoke();
    /* 80D252C8 */ bool checkTalkDistance();
    /* 80D25364 */ void calcMidnaWaitPos();
    /* 80D253FC */ void setSrcEffect();
    /* 80D25528 */ void setBindEffect();
    /* 80D255F4 */ void followBindEffect();
    /* 80D25664 */ void endBindEffect();
    /* 80D256B8 */ void followSrcEffect();
    /* 80D25758 */ void endSrcEffect();
    /* 80D257E4 */ void event_proc_call();
    /* 80D25914 */ void orderZHintEvent();
    /* 80D25A08 */ void actionWait();
    /* 80D25B04 */ void actionOrderEvent();
    /* 80D25CA0 */ void actionOrderATalkEvent();
    /* 80D25DEC */ void actionTalkEvent();
    /* 80D25E78 */ void actionWarpEvent();
    /* 80D25EE4 */ void actionDead();
    /* 80D25EE8 */ void demoProc();
    /* 80D26468 */ void calcObjPos();
    /* 80D264E8 */ int Draw();
    /* 80D266FC */ int Delete();

    void startFall() { field_0x95f = 1; }
    void startSearch() { field_0x960 = 1; }
    void setAction(u8 action) { mAction = action; }
    u8 getSwbit() { return fopAcM_GetParamBit(this, 0, 8); }
    u8 getArg0() { return fopAcM_GetParamBit(this, 16, 8); }
    u16 getMsgID() { return mMsgID; }

private:
    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ J3DModel* mModel1;
    /* 0x5AC */ mDoExt_btkAnm* mBtk1;
    /* 0x5B0 */ mDoExt_brkAnm* mBrk1;
    /* 0x5B4 */ mDoExt_bckAnm* mBck1;
    /* 0x5B8 */ J3DModel* mModel2;
    /* 0x5BC */ mDoExt_btkAnm* mBtk2;
    /* 0x5C0 */ mDoExt_brkAnm* mBrk2;
    /* 0x5C4 */ JPABaseEmitter* mSmokeEmitter;
    /* 0x5C8 */ u8 mSmokeTimer;
    /* 0x5C9 */ bool field_0x5c9;
    /* 0x5CA */ u8 mAction;
    /* 0x5CB */ bool field_0x5cb;
    /* 0x5CC */ dBgS_ObjAcch mAcch;
    /* 0x7A4 */ dBgS_AcchCir mAcchCir;
    /* 0x7E4 */ dCcD_Stts mStts;
    /* 0x820 */ dCcD_Cyl mCyl;
    /* 0x95C */ u8 mDemoTimer;
    /* 0x95D */ u8 mWaitAppearState;
    /* 0x95E */ bool field_0x95e;
    /* 0x95F */ u8 field_0x95f;
    /* 0x960 */ bool field_0x960;
    /* 0x961 */ u8 mMode;
    /* 0x962 */ bool misAppearing;
    /* 0x963 */ bool mIsMsgIDInit;
    /* 0x964 */ u16 mMsgID;
    /* 0x968 */ cXyz mLightPosWorld;
    /* 0x974 */ u32 mShadowID;
    /* 0x978 */ f32 field_0x978;
    /* 0x97C */ f32 mBaseScale;
    /* 0x980 */ cXyz mWarpSEPos;
    /* 0x98C */ cXyz mWaitSEPos;
    /* 0x998 */ cXyz mMidnaWaitPos;
    /* 0x9A4 */ dMsgFlow_c mMsgFlow;
    /* 0x9F0 */ s16 mEventId;
    /* 0x9F4 */ int mStaffId;
    /* 0x9F8 */ JPABaseEmitter* mStartEmitters[3];
    /* 0xA04 */ JPABaseEmitter* mDisappearEmitters[1];
    /* 0xA08 */ JPABaseEmitter* mBindEmitters[4];
    /* 0xA18 */ u16 mEffectJntNo;
    /* 0xA1A */ bool field_0xa1a;
    /* 0xA1B */ u8 mNaviTimer;
};

STATIC_ASSERT(sizeof(daObjVolcBom_c) == 0xa1c);

#ifdef DEBUG
class daObjVolcBom_HIO_c : public mDoHIO_entry_c {
public:
    daObjVolcBom_HIO_c();
    void genMessage(JORMContext* ctx);

    /* 0x04 */ u8 field_0x04;
    /* 0x08 */ f32 field_0x08;
    /* 0x0C */ u8 field_0x0c[0x14 - 0x0c];
    /* 0x14 */ u8 field_0x14;
    /* 0x15 */ u8 field_0x15;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1c;
    /* 0x20 */ f32 field_0x20;
    /* 0x24 */ f32 field_0x24;
    /* 0x28 */ u8 field_0x28[0x34 - 0x28];
    /* 0x34 */ u8 field_0x34;
};
#endif


#endif /* D_A_OBJ_VOLCBOM_H */
