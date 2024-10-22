#ifndef D_A_OBJ_FMOBJ_H
#define D_A_OBJ_FMOBJ_H

#include "f_op/f_op_actor_mng.h"

class dBgW;

/**
 * @ingroup actors-objects
 * @class obj_fmobj_class
 * @brief Fyrus Object?
 *
 * @details
 *
 */
class obj_fmobj_class : public fopAc_ac_c {
public:
    /* 0x568 */ request_of_phase_process_class mPhase;
    /* 0x570 */ u8 field_0x570;
    /* 0x574 */ J3DModel* mpModel;
    /* 0x578 */ s16 field_0x578;
    /* 0x57A */ u8 field_0x57A[0x57E - 0x57A];
    /* 0x57E */ s16 field_0x57e[2];
    /* 0x582 */ u8 field_0x582[0x588 - 0x582];
    /* 0x588 */ Mtx mBgMtx;
    /* 0x5B8 */ dBgW* mpBgW;
};

#endif /* D_A_OBJ_FMOBJ_H */
