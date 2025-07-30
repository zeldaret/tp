#ifndef D_A_OBJ_THDOOR_H
#define D_A_OBJ_THDOOR_H

#include "d/d_bg_s_movebg_actor.h"
#include "d/d_cc_d.h"
#include "d/d_msg_flow.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjThDoor_c
 * @brief Telma's Bar Door
 *
 * @details
 *
 */
class daObjThDoor_c : public dBgS_MoveBgActor {
public:
    typedef void (daObjThDoor_c::*actionFunc)();

    enum Action {
        ACTION_WAIT,
        ACTION_ORDER_EVENT,
        ACTION_EVENT,
        ACTION_DEAD,
    };

    /* 80D0D618 */ void initBaseMtx();
    /* 80D0D654 */ void setBaseMtx();
    /* 80D0D6B8 */ int Create();
    /* 80D0D7F8 */ int CreateHeap();
    /* 80D0D868 */ int create1st();
    /* 80D0D8E8 */ int Execute(Mtx**);
    /* 80D0D9B4 */ void set_cyl();
    /* 80D0DAC8 */ void action();
    /* 80D0DB90 */ void event_proc_call();
    /* 80D0DC4C */ void actionWait();
    /* 80D0DCC8 */ void actionOrderEvent();
    /* 80D0DD90 */ void actionEvent();
    /* 80D0DE30 */ void actionDead();
    /* 80D0DE34 */ int demoProc();
    /* 80D0E06C */ BOOL checkArea();
    /* 80D0E150 */ int Draw();
    /* 80D0E1F4 */ int Delete();

    u8 getSwbit() { return fopAcM_GetParamBit(this, 0, 8); }
    int getMsg() { return fopAcM_GetParamBit(this, 8, 16); }
    BOOL checkDemo() { return fopAcM_GetParamBit(this, 24, 1); }
    void setAction(u8 action) { mAction = action; }

    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ J3DModel* mModel;
    /* 0x5AC */ u8 mAction;
    /* 0x5AD */ u8 mMapToolId;
    /* 0x5AE */ s16 mEventIdx;
    /* 0x5B0 */ int mStaffId;
    /* 0x5B4 */ u8 field_0x5b4;
    /* 0x5B5 */ u8 field_0x5b5;
    /* 0x5B6 */ u8 field_0x5b6;
    /* 0x5B8 */ s16 field_0x5b8;
    /* 0x5BC */ dMsgFlow_c mMsgFlow;
    /* 0x608 */ s16 field_0x608;
    /* 0x60A */ s16 field_0x60a;
    /* 0x60C */ dCcD_Stts mStts;
    /* 0x648 */ dCcD_Cyl mCyls[2];
};

STATIC_ASSERT(sizeof(daObjThDoor_c) == 0x8c0);

#ifdef DEBUG
class daObjThDoor_HIO_c : public mDoHIO_entry_c {
public:
    daObjThDoor_HIO_c();
    void genMessage(JORMContext* ctx);
};
#endif

#endif /* D_A_OBJ_THDOOR_H */
