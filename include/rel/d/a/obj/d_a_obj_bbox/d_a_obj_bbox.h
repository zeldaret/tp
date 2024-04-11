#ifndef D_A_OBJ_BBOX_H
#define D_A_OBJ_BBOX_H

#include "d/bg/d_bg_s_movebg_actor.h"
#include "d/cc/d_cc_d.h"
#include "f_op/f_op_actor_mng.h"

class daObjBBox_c : public dBgS_MoveBgActor {
public:
    /* 80BACD38 */ void initBaseMtx();
    /* 80BACD74 */ void setBaseMtx();
    /* 80BACDD8 */ int Create();
    /* 80BACE50 */ int CreateHeap();
    /* 80BACEC0 */ int create1st();
    /* 80BAD0C0 */ int Execute(Mtx**);
    /* 80BAD234 */ int Draw();
    /* 80BAD2D8 */ int Delete();

    u32 getSwNo() { return fopAcM_GetParamBit(this, 0, 8); }

private:
    /* 0x5A0 */ request_of_phase_process_class mPhaseReq;
    /* 0x5A8 */ J3DModel* mpModel;
    /* 0x5AC */ dCcD_Stts mStts;
    /* 0x5E8 */ dCcD_Cyl mCyl;
};  // Size: 0x724

#endif /* D_A_OBJ_BBOX_H */
