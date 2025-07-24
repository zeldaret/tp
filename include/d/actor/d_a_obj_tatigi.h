#ifndef D_A_OBJ_TATIGI_H
#define D_A_OBJ_TATIGI_H

#include "d/d_cc_d.h"
#include "f_op/f_op_actor_mng.h"

struct tg_ss {
public:
    /* 0x000 */ J3DModel* mModel;
    /* 0x004 */ cXyz mPos;
    /* 0x010 */ cXyz mScale;
    /* 0x01C */ s16 mAngle;
    /* 0x01E */ s16 field_0x1e;
    /* 0x020 */ dCcD_Cyl mCyl;
    /* 0x15C */ s8 mActive;
};

/**
 * @ingroup actors-objects
 * @class obj_tatigi_class
 * @brief ???
 *
 * @details
 *
 */
class obj_tatigi_class{
public:
    /* 0x0000 */ fopAc_ac_c mBase;
    /* 0x0568 */ request_of_phase_process_class mPhase;
    /* 0x0570 */ u8 field_0x570;
    /* 0x0571 */ u8 field_0x571;
    /* 0x0572 */ u8 field_0x572;
    /* 0x0574 */ s16 field_0x574;
    /* 0x0576 */ s16 field_0x576;
    /* 0x0578 */ int field_0x578;
    /* 0x057C */ tg_ss mTgs[16];
    /* 0x1B7C */ int mTgNum;
    /* 0x1B80 */ dCcD_Stts mStts;
    /* 0x1BBC */ u8 field_0x1bbc;
    /* 0x1BBD */ bool mModelLoaded;
};

STATIC_ASSERT(sizeof(obj_tatigi_class) == 0x1bc0);


#endif /* D_A_OBJ_TATIGI_H */
