#ifndef D_A_VRBOX2_H
#define D_A_VRBOX2_H

#include "f_op/f_op_actor_mng.h"

class vrbox2_class : public fopAc_ac_c {
public:
public:
    /* 0x568 */ u8 field_0x568[0x56C - 0x568];
    /* 0x56C */ J3DModel* mpKumoModel;
    /* 0x570 */ u8 field_0x570[0x574 - 0x570];
    /* 0x574 */ J3DModel* model2;
    /* 0x578 */ J3DModel* model2_und;
    /* 0x57C */ u8 field_0x57C[0x580 - 0x57C];
    /* 0x580 */ mDoExt_btkAnm mSunBtk;
    /* 0x598 */ J3DModel* mpKasumimModel;
    /* 0x59C */ u8 field_0x59C[0x5A0 - 0x59C];
};


#endif /* D_A_VRBOX2_H */
