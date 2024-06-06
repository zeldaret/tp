#ifndef D_A_OBJ_DMELEVATOR_H
#define D_A_OBJ_DMELEVATOR_H

#include "d/bg/d_bg_s_movebg_actor.h"
#include "d/com/d_com_inf_game.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjDmElevator_c
 * @brief Death Mountain Elevator
 *
 * @details
 *
 */
class daObjDmElevator_c : public dBgS_MoveBgActor {
public:
    /* 80BDDD38 */ void initBaseMtx();
    /* 80BDDD90 */ void setBaseMtx();
    /* 80BDDEFC */ int Create();
    /* 80BDE0A4 */ int init();
    /* 80BDE2F8 */ int CreateHeap();
    /* 80BDE448 */ int create1st();
    /* 80BDE500 */ int Execute(Mtx**);
    /* 80BDE5F8 */ void setting_ride_flag();
    /* 80BDE6FC */ void event_sw_proc_call();
    /* 80BDE7A0 */ void actionSwPauseNoneInit();
    /* 80BDE7AC */ void actionSwPauseNone();
    /* 80BDE7B0 */ void actionSwPauseOrderInit();
    /* 80BDE808 */ void actionSwPauseOrder();
    /* 80BDE83C */ void actionSwPauseInit();
    /* 80BDE868 */ void actionSwPause();
    /* 80BDE8D0 */ void calc_top_pos();
    /* 80BDE960 */ void mode_sw_proc_call();
    /* 80BDEA1C */ void modeSwWaitLowerInit();
    /* 80BDEA44 */ void modeSwWaitLower();
    /* 80BDEB88 */ void modeSwLowerInit();
    /* 80BDEC10 */ void modeSwLower();
    /* 80BDEC94 */ void modeSwWaitUpperInit();
    /* 80BDECB4 */ void modeSwWaitUpper();
    /* 80BDECE0 */ void modeSwUpperInit();
    /* 80BDED64 */ void modeSwUpper();
    /* 80BDEDE0 */ void event_proc_call();
    /* 80BDEECC */ void actionWait();
    /* 80BDEF60 */ void actionOrderEvent();
    /* 80BDF000 */ void actionEvent();
    /* 80BDF068 */ void actionStartEvent();
    /* 80BDF0A0 */ void actionMoveStart();
    /* 80BDF168 */ void actionDead();
    /* 80BDF16C */ int demoProc();
    /* 80BDF320 */ void moveInit();
    /* 80BDF3B8 */ int moveProc();
    /* 80BDF618 */ int Draw();
    /* 80BDF6DC */ int Delete();

    u32 getPathID() { return fopAcM_GetParamBit(this, 8, 8); }

private:
    /* 0x5A0 */ request_of_phase_process_class mPhaseReq;
    /* 0x5A8 */ request_of_phase_process_class mPhaseReq2;
    /* 0x5B0 */ J3DModel* mpElevatorModel;
    /* 0x5B4 */ J3DModel* mpSwitchModel;
    /* 0x5B8 */ Z2SoundObjSimple mSoundObj;
    /* 0x5D8 */ u8 field_0x5D8[0x5DC - 0x5D8];
    /* 0x5DC */ s32 field_0x5dc;
    /* 0x5E0 */ u8 field_0x5e0;
    /* 0x5E1 */ u8 field_0x5e1;
    /* 0x5E2 */ u8 field_0x5e2;
    /* 0x5E3 */ u8 field_0x5e3;
    /* 0x5E4 */ s16 field_0x5e4;
    /* 0x5E6 */ s16 field_0x5e6;
    /* 0x5E8 */ dBgW* mpBgW;
    /* 0x5EC */ Mtx mMtx;
    /* 0x61C */ cXyz mXyz;
    /* 0x628 */ u8 field_0x628;
    /* 0x629 */ u8 field_0x629;
    /* 0x62A */ u8 field_0x62a;
    /* 0x62B */ u8 field_0x62b;
    /* 0x62C */ u8 field_0x62C[0x62D - 0x62C];
    /* 0x62D */ u8 field_0x62d;
    /* 0x62E */ u8 field_0x62e;
    /* 0x62F */ u8 field_0x62f;
    /* 0x630 */ u8 field_0x630;
    /* 0x631 */ u8 field_0x631;
    /* 0x632 */ u8 field_0x632;
    /* 0x633 */ u8 field_0x633;
    /* 0x634 */ u8 field_0x634;
    /* 0x635 */ u8 field_0x635;
    /* 0x636 */ u8 field_0x636;
    /* 0x637 */ u8 field_0x637;
    /* 0x638 */ f32 field_0x638;
    /* 0x63C */ f32 field_0x63c;
    /* 0x640 */ f32 field_0x640;
};

STATIC_ASSERT(sizeof(daObjDmElevator_c) == 0x644);


#endif /* D_A_OBJ_DMELEVATOR_H */
