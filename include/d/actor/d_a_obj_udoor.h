#ifndef D_A_OBJ_UDOOR_H
#define D_A_OBJ_UDOOR_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_cc_d.h"
#include "d/d_bg_w.h"

/**
 * @ingroup actors-objects
 * @class obj_udoor_class
 * @brief Stable Door
 *
 * @details
 *
 */
class obj_udoor_class : public fopAc_ac_c {
public:
    /* 0x568 */ request_of_phase_process_class mPhase;
    /* 0x570 */ u8 field_0x570;
    /* 0x571 */ u8 field_0x571[0x574 - 0x571];
    /* 0x574 */ J3DModel* mpModel;
    /* 0x578 */ u32 field_0x578;
    /* 0x57c */ s16 field_0x57c;
    /* 0x57e */ s16 field_0x57e;
    /* 0x580 */ f32 field_0x580;
    /* 0x584 */ u8 field_0x584[0x588 - 0x584];
    /* 0x588 */ Mtx mBgMtx;
    /* 0x5b8 */ dBgW* mpBgW;
    /* 0x5bc */ dCcD_Stts mCcStts;
    /* 0x5f8 */ dCcD_Sph mCcSph;
    /* 0x730 */ u8 field_0x730[0x754 - 0x730];
};

STATIC_ASSERT(sizeof(obj_udoor_class) == 0x754);


#endif /* D_A_OBJ_UDOOR_H */
