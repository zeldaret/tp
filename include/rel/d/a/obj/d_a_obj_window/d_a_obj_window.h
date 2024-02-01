#ifndef D_A_OBJ_WINDOW_H
#define D_A_OBJ_WINDOW_H

#include "SSystem/SComponent/c_phase.h"
#include "f_op/f_op_actor_mng.h"
#include "d/bg/d_bg_s_movebg_actor.h"
#include "d/cc/d_cc_d.h"

class daObjWindow_c : public dBgS_MoveBgActor {
public:
    /* 80D38758 */ void initBaseMtx();
    /* 80D387B8 */ void setBaseMtx();
    /* 80D38840 */ int Create();
    /* 80D388F0 */ int CreateHeap();
    /* 80D38A68 */ cPhs__Step create1st();
    /* 80D38B04 */ int Execute(Mtx**);
    /* 80D38F28 */ int Draw();
    /* 80D39000 */ int Delete();

    u8 getType() { return fopAcM_GetParamBit(this, 0, 8); }
    u8 getLightInf() { return fopAcM_GetParamBit(this, 8, 8); }

    /* 0x5A0 */ request_of_phase_process_class mPhaseReq;
    /* 0x5A8 */ J3DModel* mpModel;
    /* 0x5AC */ mDoExt_bckAnm* mpBckAnm;
    /* 0x5B0 */ u8 mType;
    /* 0x5B4 */ dCcD_Stts mStts;
    /* 0x5F0 */ dCcD_Cyl mCyl;
};

STATIC_ASSERT(sizeof(daObjWindow_c) == 0x72C);

#endif /* D_A_OBJ_WINDOW_H */
