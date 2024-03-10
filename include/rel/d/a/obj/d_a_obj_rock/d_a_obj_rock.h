#ifndef D_A_OBJ_ROCK_H
#define D_A_OBJ_ROCK_H

#include "SSystem/SComponent/c_phase.h"
#include "d/cc/d_cc_d.h"
#include "dolphin/types.h"
#include "f_op/f_op_actor.h"

class J3DModel;

struct rock_ss {
    /* 80CBE5A4 */ ~rock_ss();
    /* 80CBE678 */ rock_ss();

    /* 0x00 */ J3DModel* mpModel;
    /* 0x04 */ cXyz mPos;
    /* 0x10 */ cXyz mScale;
    /* 0x1C */ f32 mOffsetY;
    /* 0x20 */ s16 mRot;
    /* 0x24 */ dCcD_Sph mCollider;
    /* 0x15C */ s8 mActive;
};  // Size: 0x160

STATIC_ASSERT(sizeof(rock_ss) == 0x160);

class obj_rock_class : public fopAc_ac_c {
public:
    /* 0x568  */ request_of_phase_process_class mPhaseReq;
    /* 0x570  */ u8 field_0x570;
    /* 0x571  */ u8 field_0x571;
    /* 0x572  */ u8 field_0x572;
    /* 0x574  */ s16 field_0x574;
    /* 0x578  */ rock_ss mRocks[0x10];
    /* 0x1B78 */ s32 mCount;
    /* 0x1B7C */ dCcD_Stts mStts;
    /* 0x1BB9 */ u8 field_0x1bb8;
    /* 0x1BB9 */ bool mInitialized;
};  // Size: 0x1BBC

STATIC_ASSERT(sizeof(obj_rock_class) == 0x1BBC);

#endif /* D_A_OBJ_ROCK_H */
