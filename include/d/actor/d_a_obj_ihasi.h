#ifndef D_A_OBJ_IHASI_H
#define D_A_OBJ_IHASI_H

#include "SSystem/SComponent/c_phase.h"

#include "f_op/f_op_actor.h"
#include "d/d_bg_w.h"

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
    /* 0x568 */ request_of_phase_process_class mPhase;
    /* 0x570 */ J3DModel* mpModel1;
    /* 0x574 */ J3DModel* mpModel2;
    /* 0x574 */ mDoExt_btkAnm* mpBtkAnm;
    /* 0x574 */ short mCount;
    /* 0x574 */ short mFlag1;
    /* 0x574 */ bool mFlag2;
    /* 0x574 */ bool mUnk3;
    /* 0x574 */ short mArr[2];
    /* 0x574 */ s8 mFlag3;
    /* 0x574 */ u8 mUnk4;
    /* 0x574 */ Mtx mMtx;
    /* 0x574 */ dBgW* mpBgW;
    /* 0x574 */ u8 mUnk2[8];
};

STATIC_ASSERT(sizeof(obj_ihasi_class) == 0x5c4);


#endif /* D_A_OBJ_IHASI_H */
