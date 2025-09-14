#ifndef D_A_OBJ_SWPUSH5_H
#define D_A_OBJ_SWPUSH5_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_movebg_actor.h"

/**
 * @ingroup actors-objects
 * @class daObjSw5_c
 * @brief Push Switch 5
 *
 * @details Mutli-purpose heavy switch actor. (Iron Boots switch)
 *
 */
class daObjSw5_c : public dBgS_MoveBgActor {
public:
    /* 8059B804 */ void initBaseMtx();
    /* 8059B88C */ void setBaseMtx();
    /* 8059BB1C */ int create();
    /* 8059BC70 */ void setting_ride_flag();
    /* 8059BD24 */ BOOL checkPushable();
    /* 8059BD2C */ void event_proc_call();
    /* 8059BE18 */ void actionPauseNoneInit();
    /* 8059BE24 */ void actionPauseNone();
    /* 8059BE28 */ void actionPauseOrderInit();
    /* 8059BE80 */ void actionPauseOrder();
    /* 8059BEB4 */ void actionPauseInit();
    /* 8059BEE0 */ void actionPause();
    /* 8059BF48 */ void actionWait();
    /* 8059BF4C */ void actionOrder();
    /* 8059BF50 */ void actionEvent();
    /* 8059BF54 */ void calc_top_pos();
    /* 8059BFE4 */ void mode_proc_call();
    /* 8059C0A0 */ void modeWaitLowerInit();
    /* 8059C0C8 */ void modeWaitLower();
    /* 8059C23C */ void modeLowerInit();
    /* 8059C2D0 */ void modeLower();
    /* 8059C364 */ void modeWaitUpperInit();
    /* 8059C370 */ void modeWaitUpper();
    /* 8059C3C4 */ void modeUpperInit();
    /* 8059C454 */ void modeUpper();

    /* 8059BA1C */ virtual int CreateHeap();
    /* 8059B920 */ virtual int Create();
    /* 8059BBD4 */ virtual int Execute(Mtx**);
    /* 8059C4BC */ virtual int Draw();
    /* 8059C560 */ virtual int Delete();

    u8 getSwNo() { return fopAcM_GetParamBit(this, 0, 8); }
    u8 getSwNo2() { return 0xFF; }

    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ J3DModel* mpModel;
    /* 0x5AC */ u8 mUnkRideTimer;
    /* 0x5AD */ u8 field_0x5ad;
    /* 0x5AE */ u8 field_0x5ae;
    /* 0x5AF */ u8 field_0x5af;
    /* 0x5B0 */ u8 field_0x5b0;
    /* 0x5B1 */ u8 field_0x5b1;
    /* 0x5B2 */ u8 mIsPlayerRideHvy;
    /* 0x5B3 */ u8 mIsPlayerRideHvyPrev;
    /* 0x5B4 */ int mCounter;
    /* 0x5B8 */ dBgW* mpBgW2;
    /* 0x5BC */ Mtx mMtx;
    /* 0x5EC */ u8 field_0x5EC[0x5EE - 0x5EC];
    /* 0x5EE */ u8 mMode;
    /* 0x5EF */ u8 mAction;
    /* 0x5F0 */ u8 mPauseTimer;
    /* 0x5F4 */ f32 mTopPos;
    /* 0x5F8 */ f32 field_0x5f8;
    /* 0x5FC */ f32 field_0x5fc;
};

STATIC_ASSERT(sizeof(daObjSw5_c) == 0x600);


#endif /* D_A_OBJ_SWPUSH5_H */
