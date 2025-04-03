#ifndef D_A_OBJ_IHASI_H
#define D_A_OBJ_IHASI_H

#include "SSystem/SComponent/c_phase.h"

#include "d/d_bg_w.h"
#include "f_op/f_op_actor.h"

/**
 * @ingroup actors-objects
 * @class obj_ihasi_class
 * @brief Ice Bridge?
 *
 * @details
 *
 */
class obj_ihasi_class : public fopAc_ac_c {
public:
    /* 0x568 */ request_of_phase_process_class mPhaseReq;
    /* 0x570 */ J3DModel* mpModel1;
    /* 0x574 */ J3DModel* mpModel2;
    /* 0x578 */ mDoExt_btkAnm* mpBtkAnm;
    /* 0x57C */ s16 mShort1;
    /* 0x57E */ s16 mFlag1;
    /* 0x580 */ u8 field_0x580[2];
    /* 0x582 */ s16 mArr[2];
    /* 0x586 */ s8 mFlag2;
    /* 0x588 */ Mtx mMtx;
    /* 0x5B8 */ dBgW* mpBgW;
    /* 0x5BC */ u8 field_0x5bc[8];
};

STATIC_ASSERT(sizeof(obj_ihasi_class) == 0x5c4);

#endif /* D_A_OBJ_IHASI_H */
