#ifndef D_A_OBJ_PROP_H
#define D_A_OBJ_PROP_H

#include "d/com/d_com_inf_game.h"
#include "f_op/f_op_actor_mng.h"

class daObjProp_c : public fopAc_ac_c {
public:
    /* 80CB51F8 */ daObjProp_c();

    /* 80CB52B4 */ bool createHeap();
    /* 80CB5334 */ int create();
    /* 80CB5408 */ int Delete();
    /* 80CB543C */ int draw();
    /* 80CB54A0 */ int execute();
    /* 80CB54E4 */ void init();
    /* 80CB54F4 */ void setModelMtx();

    u32 getNameArg_0() { return fopAcM_GetParamBit(this, 0, 4); }
    u32 getArg_0() { return fopAcM_GetParamBit(this, 4, 4); }

    /* 0x568 */ request_of_phase_process_class mPhaseReq;

    /* 0x570 */ /* 80CB5234 */ virtual ~daObjProp_c();

    /* 0x574 */ J3DModel* mpModel;
    /* 0x578 */ u8 mArg;
};  // Size: 0x57C

#endif /* D_A_OBJ_PROP_H */
