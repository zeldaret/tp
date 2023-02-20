#ifndef D_A_HITOBJ_H
#define D_A_HITOBJ_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"
#include "d/com/d_com_inf_game.h"

class hitobj_class : public fopAc_ac_c {
public:
    /* 0x568 */ request_of_phase_process_class mPhase;
    /* 0x570 */ u8 field_0x570;
    /* 0x571 */ u8 field_0x571;
    /* 0x572 */ s16 field_0x572;
    /* 0x574 */ dCcD_Stts field_0x574;
    /* 0x5B0 */ dCcD_SrcSph field_0x5b0; // probably wrong
    /* 0x5F0 */ u8 field_0x608[226];
    /* 0x6D4 */ cM3dGSph field_0x6d4;

};

#endif /* D_A_HITOBJ_H */
