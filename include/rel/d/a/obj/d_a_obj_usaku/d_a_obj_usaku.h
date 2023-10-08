#ifndef D_A_OBJ_USAKU_H
#define D_A_OBJ_USAKU_H

#include "f_op/f_op_actor_mng.h"

class dBgW;

class obj_usaku_class : public fopAc_ac_c {
public:
    /* 0x568 */ request_of_phase_process_class mPhase;
    /* 0x570 */ u8 field_0x570;
    /* 0x574 */ J3DModel* mpModel;
    /* 0x578 */ u8 field_0x578[0x580 - 0x578];
    /* 0x580 */ Mtx mBgMtx;
    /* 0x5B0 */ dBgW* mpBgW;
};

#endif /* D_A_OBJ_USAKU_H */
