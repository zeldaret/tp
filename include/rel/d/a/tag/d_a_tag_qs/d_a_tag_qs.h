#ifndef D_A_TAG_QS_H
#define D_A_TAG_QS_H

#include "f_op/f_op_actor.h"
#include "f_op/f_op_actor_mng.h"
#include "d/cc/d_cc_d.h"

class daTagQs_c : public fopAc_ac_c {
public:
    /* 80D5DE78 */ ~daTagQs_c();
    /* 80D5DFB0 */ int create();
    /* 80D5E1FC */ f32 getPower();
    /* 80D5E220 */ f32 getSafeArea();
    /* 80D5E244 */ f32 getPower80();
    /* 80D5E268 */ f32 getCenterPower();
    /* 80D5E28C */ f32 calcPower(f32, f32);
    /* 80D5E9F8 */ int execute();
    /* 80D5EBF8 */ int draw();

    u8 getType() { return fopAcM_GetParamBit(this, 0, 1); }
    int getSwNo() { return fopAcM_GetParamBit(this, 1, 8); }

    /* 0x568 */ f32 field_0x568;
    /* 0x56C */ f32 field_0x56c;
    /* 0x570 */ int field_0x570;
    /* 0x574 */ int field_0x574;
    /* 0x578 */ dCcD_Cyl mCyl;
    /* 0x6B4 */ dCcD_Stts mStts;
};

#endif /* D_A_TAG_QS_H */
