#ifndef D_A_OBJ_RSTAIR_H
#define D_A_OBJ_RSTAIR_H

#include "d/d_bg_s_movebg_actor.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjRotStair_c
 * @brief Rail Staircase
 *
 * @details
 *
 */
class daObjRotStair_c : public dBgS_MoveBgActor {
public:
    typedef void (daObjRotStair_c::*actionFunc)();
    typedef void (daObjRotStair_c::*modeFunc)();

    enum Mode {
        MODE_WAIT,
        MODE_ROTATE,
    };

    enum Action {
        ACTION_WAIT,
        ACTION_ORDER_EVENT,
        ACTION_EVENT,
        ACTION_DEAD,
    };

    /* 80CC1558 */ void initBaseMtx();
    /* 80CC1614 */ void setBaseMtx();
    /* 80CC16B0 */ int Create();
    /* 80CC17F0 */ int CreateHeap();
    /* 80CC1A28 */ int create1st();
    /* 80CC1AF0 */ int Execute(Mtx**);
    /* 80CC1BA4 */ void move_proc_call();
    /* 80CC1C30 */ void init_modeWait();
    /* 80CC1CF0 */ void modeWait();
    /* 80CC1DF8 */ void init_modeRotate();
    /* 80CC1EC8 */ void modeRotate();
    /* 80CC2024 */ void event_proc_call();
    /* 80CC20E0 */ void actionWait();
    /* 80CC2158 */ void actionOrderEvent();
    /* 80CC21C0 */ void actionEvent();
    /* 80CC221C */ void actionDead();
    /* 80CC2220 */ int checkChangeSw();
    /* 80CC22A0 */ void offSwitch(int);
    /* 80CC2310 */ void onWaterModel();
    /* 80CC2364 */ void offWaterModel();
    /* 80CC23C4 */ int Draw();
    /* 80CC25C0 */ int Delete();

    u8 getSwNo() { return mSwNo; }
    u8 getSwNo2() { return (mSwNo >> 8) & 0xff; }
    u8 getSwNo3() { return fopAcM_GetParamBit(this, 8, 8); }
    u8 getEventID() { return fopAcM_GetParamBit(this, 0, 8); }
    void setAction(u8 action) { mAction = action; }

private:
    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ J3DModel* mModel;
    /* 0x5AC */ J3DModel* mWaterModels[2];
    /* 0x5B4 */ mDoExt_btkAnm* mBtks[2];
    /* 0x5BC */ bool mWaterModelOn;
    /* 0x5C0 */ dBgW* mWaterBgw;
    /* 0x5C4 */ int field_0x5c4;
    /* 0x5C8 */ s16 field_0x5c8;
    /* 0x5CA */ u16 mSwNo;
    /* 0x5CC */ u8 mInit;
    /* 0x5CD */ u8 mMode;
    /* 0x5CE */ s16 mAdditionalRotY;
    /* 0x5D0 */ s16 mAngleStep;
    /* 0x5D2 */ s16 mStepTarget;
    /* 0x5D4 */ s16 mTargetAngle;
    /* 0x5D6 */ u8 mIsSw[4];
    /* 0x5DA */ s16 field_0x5da;
    /* 0x5DC */ s16 field_0x5dc;
    /* 0x5DE */ s16 mEventId;
    /* 0x5E0 */ u8 mMapToolId;
    /* 0x5E1 */ u8 mAction;
    /* 0x5E2 */ bool field_0x5e2;
    /* 0x5E3 */ s8 field_0x5e3;
};

STATIC_ASSERT(sizeof(daObjRotStair_c) == 0x5e4);


#endif /* D_A_OBJ_RSTAIR_H */
