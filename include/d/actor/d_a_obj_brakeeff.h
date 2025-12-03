#ifndef D_A_OBJ_BRAKEEFF_H
#define D_A_OBJ_BRAKEEFF_H

#include "SSystem/SComponent/c_phase.h"
#include "d/d_cc_d.h"
#include "f_op/f_op_actor.h"

class J3DModel;
class mDoExt_brkAnm;
class dBgW;

/**
 * @ingroup actors-objects
 * @class obj_brakeeff_class
 * @brief ???
 *
 * @details
 *
 */
class obj_brakeeff_class : public fopAc_ac_c {
public:
    /* 0x568 */ request_of_phase_process_class mRequestOfPhase;
    /* 0x570 */ u8 mEffectType;
    /* 0x574 */ J3DModel* mpModel;
    /* 0x578 */ mDoExt_brkAnm* mpBrk;
    /* 0x57C */ s16 mMiscTimer1;
    /* 0x57E */ s16 mMiscTimer2;
    /* 0x580 */ s16 mMiscTimer3;
    /* 0x582 */ s16 mMiscTimers[2];
    /* 0x588 */ dCcD_Stts mDCcD_Stts;
    /* 0x5C4 */ dCcD_Sph mDCcD_Sph;
    /* 0x6FC */ u32 mRuntimeParticleIds[2];
    /* 0x704 */ u8 padding_0x704[4];
    /* 0x708 */ Mtx mStoredMatrix;
    /* 0x738 */ dBgW* mpDBgW;
};

STATIC_ASSERT(sizeof(obj_brakeeff_class) == 0x73c);

#endif /* D_A_OBJ_BRAKEEFF_H */
