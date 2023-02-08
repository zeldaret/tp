#ifndef A_OBJ_D_A_OBJ_SS_BASE_H
#define A_OBJ_D_A_OBJ_SS_BASE_H

#include "f_op/f_op_actor_mng.h"

class daObj_SSBase_c : public fopAc_ac_c {
public:
    /* 8015E3F8 */ daObj_SSBase_c();

    /* 8015E450 */ virtual ~daObj_SSBase_c();
    /* 8015E4C8 */ virtual void setSoldOut();
    /* 8015E4B0 */ virtual u32 getProcessID();

private:
    /* 0x56C */ void* mpParentPtr;
    /* 0x570 */ u16 field_0x570;
    /* 0x572 */ u16 mFlowNodeNum;
    /* 0x574 */ u16 mValueNum;
};

#endif /* A_OBJ_D_A_OBJ_SS_BASE_H */
