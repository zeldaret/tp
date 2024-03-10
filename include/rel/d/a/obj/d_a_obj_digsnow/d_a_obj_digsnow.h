#ifndef D_A_OBJ_DIGSNOW_H
#define D_A_OBJ_DIGSNOW_H

#include "SSystem/SComponent/c_phase.h"
#include "d/bg/d_bg_s_movebg_actor.h"
#include "f_op/f_op_actor_mng.h"
#include "d/bg/d_bg_s_acch.h"
#include "d/cc/d_cc_d.h"

class J3DModel;

class daObjDigSnow_c : public dBgS_MoveBgActor {
public:
    enum Mode_e {
        /* 0 */ MODE_WAIT_e,
        /* 1 */ MODE_DIG_e,
        /* 2 */ MODE_END_e,
    };

    enum Action_e {
        /* 0 */ ACTION_WAIT_e,
        /* 1 */ ACTION_DIG_e,
        /* 2 */ ACTION_END_e,
    };

    /* 80BDCC58 */ void initBaseMtx();
    /* 80BDCC94 */ void setBaseMtx();
    /* 80BDCD08 */ virtual int Create();
    /* 80BDCD64 */ virtual int CreateHeap();
    /* 80BDCDD4 */ int create1st();
    /* 80BDCE84 */ virtual int Execute(Mtx**);
    /* 80BDCF00 */ void action();
    /* 80BDCFA4 */ void mode_init_wait();
    /* 80BDCFB0 */ void mode_wait();
    /* 80BDCFDC */ void mode_init_dig();
    /* 80BDD124 */ void mode_dig();
    /* 80BDD1BC */ void mode_init_end();
    /* 80BDD210 */ void mode_end();
    /* 80BDD214 */ virtual int Draw();
    /* 80BDD2B8 */ virtual int Delete();

    u8 getSwNo() { return fopAcM_GetParamBit(this, 0, 8); }
    void startDig() { mAction = ACTION_DIG_e; }
    void endDig() { mAction = ACTION_END_e; }

private:
    /* 0x5A0 */ request_of_phase_process_class mPhaseReq;
    /* 0x5A8 */ J3DModel* mpModel;
    /* 0x5AC */ dBgS_ObjAcch mAcch;
    /* 0x784 */ dBgS_AcchCir mAcchCir;
    /* 0x7C4 */ dCcD_Stts mStts;
    /* 0x800 */ dCcD_Cyl mCyl;
    /* 0x93C */ u8 mMode;
    /* 0x93D */ u8 mAction;
    /* 0x940 */ f32 mGroundHeight;
};  // Size: 0x944

STATIC_ASSERT(sizeof(daObjDigSnow_c) == 0x944);

#endif /* D_A_OBJ_DIGSNOW_H */
