#ifndef D_A_OBJ_WARP_KBRG_H
#define D_A_OBJ_WARP_KBRG_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_movebg_actor.h"
#include "d/d_msg_flow.h"

/**
 * @ingroup actors-objects
 * @class daObjWarpKBrg_c
 * @brief Kakariko Gorge Warp Bridge
 *
 * @details
 *
 */
class daObjWarpKBrg_c : public dBgS_MoveBgActor {
public:
    enum Action_e {
        ACTION_WAIT_e,
        ACTION_ORDER_EVENT_e,
        ACTION_TALK_EVENT_e,
        ACTION_WAIT_WARP_EVENT_e,
        ACTION_WARP_EVENT_e,
        ACTION_ORDER_A_TALK_EVENT_e,
        ACTION_DEAD_e,
        ACTION_WAIT2_e,
        ACTION_ORDER_EVENT2_e,
        ACTION_WARP_EVENT2_e,
        ACTION_DEAD2_e,
    };

    /* 80D26FA8 */ void initBaseMtx();
    /* 80D27008 */ void setBaseMtx();
    /* 80D276B4 */ int create1st();
    /* 80D27890 */ void event_proc_call();
    /* 80D27A38 */ void orderZHintEvent();
    /* 80D27B2C */ void actionWait();
    /* 80D27C6C */ void actionOrderEvent();
    /* 80D27E08 */ void actionWaitWarpEvent();
    /* 80D27ED0 */ void actionOrderATalkEvent();
    /* 80D28040 */ void actionTalkEvent();
    /* 80D280CC */ void actionWarpEvent();
    /* 80D28144 */ void actionDead();
    /* 80D28148 */ void actionWait2();
    /* 80D2814C */ void actionOrderEvent2();
    /* 80D281E4 */ void actionWarpEvent2();
    /* 80D28248 */ void actionDead2();
    /* 80D2824C */ void demoProc();
    /* 80D28A50 */ void calcObjPos();
    /* 80D28AE0 */ bool checkTalkDistance();
    /* 80D28B7C */ void calcMidnaWaitPos();
    /* 80D28C10 */ void setBindEffect();
    /* 80D28CDC */ void followBindEffect();
    /* 80D28D4C */ void setSrcEffect();
    /* 80D28E9C */ void setDstEffect();
    /* 80D28FEC */ void followSrcEffect();
    /* 80D290A8 */ void followDstEffect();
    /* 80D29158 */ void endSrcEffect();
    /* 80D291FC */ void endDstEffect();

    /* 80D27300 */ virtual int CreateHeap();
    /* 80D270C4 */ virtual int Create();
    /* 80D2781C */ virtual int Execute(Mtx**);
    /* 80D292A0 */ virtual int Draw();
    /* 80D29448 */ virtual int Delete();

    u8 getNameArg() { return fopAcM_GetParamBit(this, 31, 2); }
    u8 getSwbit() { return fopAcM_GetParamBit(this, 0, 8); }
    u8 getSwbit2() { return fopAcM_GetParamBit(this, 8, 8); }
    u8 getArg0() { return fopAcM_GetParamBit(this, 16, 8); }

    void setAction(u8 i_action) { mAction = i_action; }
    u16 getMsgID() { return mMsgID; }

    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ request_of_phase_process_class mEvPhase;
    /* 0x5B0 */ J3DModel* mpBridgeModel;
    /* 0x5B4 */ mDoExt_btkAnm* mpBridgeBtk;
    /* 0x5B8 */ mDoExt_bckAnm* mpBridgeBck;
    /* 0x5BC */ J3DModel* mpPortalModel;
    /* 0x5C0 */ mDoExt_btkAnm* mpPortalBtk;
    /* 0x5C4 */ mDoExt_brkAnm* mpPortalBrk;
    /* 0x5C8 */ u8 field_0x5c8;
    /* 0x5C9 */ u8 mTimer;
    /* 0x5CA */ u8 mAction;
    /* 0x5CB */ u8 mPrmInit;
    /* 0x5CC */ u16 mMsgID;
    /* 0x5CE */ s16 mEventId[2];
    /* 0x5D4 */ int mStaffId;
    /* 0x5D8 */ u8 mEventType;
    /* 0x5D9 */ u8 field_0x5d9;
    /* 0x5DC */ dMsgFlow_c mMsgFlow;
    /* 0x628 */ cXyz mMidnaWaitPos;
    /* 0x634 */ cXyz mObjPos;
    /* 0x640 */ JPABaseEmitter* mStartEfEmitterID[3];
    /* 0x64C */ JPABaseEmitter* mDisappEfEmitterID[5];
    /* 0x660 */ JPABaseEmitter* mAppEfEmitterID[6];
    /* 0x678 */ JPABaseEmitter* mEndEfEmitterID[2];
    /* 0x680 */ u8 field_0x680[0x688 - 0x680];
    /* 0x688 */ JPABaseEmitter* mBindEfEmitterID[4];
    /* 0x698 */ u16 mEffJointNo;
    /* 0x69A */ u8 field_0x69a;
    /* 0x69B */ u8 field_0x69b;
};

STATIC_ASSERT(sizeof(daObjWarpKBrg_c) == 0x69c);


#endif /* D_A_OBJ_WARP_KBRG_H */
