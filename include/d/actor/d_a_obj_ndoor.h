#ifndef D_A_OBJ_NDOOR_H
#define D_A_OBJ_NDOOR_H

#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class obj_ndoor_class
 * @brief Cat Door?
 *
 * @details
 *
 */
class obj_ndoor_class : public fopAc_ac_c {
public:
    /* 0x568 */ request_of_phase_process_class mPhase;
    /* 0x570 */ J3DModel* mpModel;
    /* 0x574 */ s16 field_0x574;
    /* 0x576 */ s16 field_0x576;
    /* 0x578 */ s16 field_0x578;
    /* 0x57C */ f32 field_0x57c;
    /* 0x580 */ dCcD_Stts mStts;
    /* 0x5BC */ dCcD_Sph mSph;
    /* 0x6F4 */ dCcU_AtInfo mAtInfo;
};

STATIC_ASSERT(sizeof(obj_ndoor_class) == 0x718);

#endif /* D_A_OBJ_NDOOR_H */
