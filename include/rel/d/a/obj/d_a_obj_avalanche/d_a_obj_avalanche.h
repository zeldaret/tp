#ifndef D_A_OBJ_AVALANCHE_H
#define D_A_OBJ_AVALANCHE_H

#include "dolphin/types.h"
#include "d/bg/d_bg_s_movebg_actor.h"
#include "f_op/f_op_actor_mng.h"

class dBgW;

struct daObjAvalanche_c : public dBgS_MoveBgActor {
    enum Action {
        ACTION_WAIT,
        ACTION_ORDER_EVENT,
        ACTION_EVENT,
        ACTION_DEAD,
    };

    /* 80BA6ED8 */ void initBaseMtx();
    /* 80BA6F14 */ void setBaseMtx();
    /* 80BA6FC8 */ int Create();
    /* 80BA7178 */ int CreateHeap();
    /* 80BA7370 */ int create1st();
    /* 80BA73F4 */ int Execute(Mtx**);
    /* 80BA7440 */ int checkCollapse();
    /* 80BA75A4 */ int move();
    /* 80BA7618 */ void event_proc_call();
    /* 80BA76D4 */ void actionWait();
    /* 80BA773C */ void actionOrderEvent();
    /* 80BA7804 */ void actionEvent();
    /* 80BA7888 */ void actionDead();
    /* 80BA788C */ int demoProc();
    /* 80BA7A50 */ void setEffect();
    /* 80BA7AE8 */ int Draw();
    /* 80BA7BA0 */ int Delete();

    u8 getSwbit() { return fopAcM_GetParamBit(this, 0, 8); }
    u8 getEvId() { return fopAcM_GetParamBit(this, 8, 8); }
    void setAction(u8 action) { mAction = action; }

    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ J3DModel* mModel;
    /* 0x5AC */ mDoExt_bckAnm* mBckAnm;
    /* 0x5B0 */ dBgW* mpBgW2;
    /* 0x5B4 */ Mtx mMtx2;
    /* 0x5E4 */ f32 field_0x5e4;
    /* 0x5E8 */ u8 mAction;
    /* 0x5E9 */ u8 mMapToolId;
    /* 0x5EA */ u8 mTimer;
    /* 0x5EC */ int mStaffId;
    /* 0x5F0 */ s16 mEventIdx;
};


#endif /* D_A_OBJ_AVALANCHE_H */
