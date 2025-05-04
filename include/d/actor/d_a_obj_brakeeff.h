#ifndef D_A_OBJ_BRAKEEFF_H
#define D_A_OBJ_BRAKEEFF_H

#include "f_op/f_op_actor_mng.h"
#include "SSystem/SComponent/c_phase.h"
#include "d/d_cc_d.h"
#include "mtx.h"

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
    /* 0x570 */ char mEffectType;
    //alignment bytes /* 0x571 */ u8 padding_0x571[3];
    /* 0x574 */ J3DModel* mpModel;
    /* 0x578 */ mDoExt_brkAnm* mpBrk;
    /* 0x57C */ short mMiscTimer1;
    /* 0x57E */ short mMiscTimer2;
    /* 0x580 */ short mMiscTimer3;
    /* 0x582 */ short mMiscTimer4;
    /* 0x584 */ short mMiscShort1;
    /* 0x586 */ short mMiscShort2;
    /* 0x588 */ dCcD_Stts mDCcD_Stts;
    /* 0x5C4 */ dCcD_Sph mDCcD_Sph;
    /* 0x6FC */ u32 mParticleIds[2];
    //alignment bytes /* 0x704 */ u8 padding_0x704[4];
    /* 0x708 */ Mtx mStoredMatrix;
    /* 0x738 */ dBgW* mpDBgW;

    void obj_brakeeff_1();
    void action();
};

//STATIC_ASSERT(sizeof(obj_brakeeff_class) == 0x73c);

#endif /* D_A_OBJ_BRAKEEFF_H */
