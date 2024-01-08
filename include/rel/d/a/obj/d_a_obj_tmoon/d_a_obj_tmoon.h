#ifndef D_A_OBJ_TMOON_H
#define D_A_OBJ_TMOON_H

#include "d/com/d_com_inf_game.h"
#include "f_op/f_op_actor_mng.h"

class daObjTMoon_c : public fopAc_ac_c {
public:
    /* 80D12BB8 */ void initBaseMtx();
    /* 80D12BF4 */ void setBaseMtx();
    /* 80D12C48 */ int Create();
    /* 80D12C9C */ int CreateHeap();
    /* 80D12D0C */ int create();
    /* 80D12DC0 */ int execute();
    /* 80D12EB4 */ int draw();
    /* 80D12EDC */ int _delete();

    u32 getEventBit1() { return fopAcM_GetParamBit(this, 0, 10); }
    u32 getEventBit2() { return fopAcM_GetParamBit(this, 10, 10); }

    /* 0x568 */ request_of_phase_process_class mPhaseReq;
    /* 0x570 */ J3DModel* mpModel;
    /* 0x574 */ u16 field_0x574;
    /* 0x576 */ u16 field_0x576;
};  // Size: 0x578

#endif /* D_A_OBJ_TMOON_H */
