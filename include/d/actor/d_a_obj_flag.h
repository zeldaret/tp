#ifndef D_A_OBJ_FLAG_H
#define D_A_OBJ_FLAG_H

#include "f_op/f_op_actor_mng.h"

class FlagJoint_c {
public:
    /* 80BEC3BC */ ~FlagJoint_c();
    /* 80BEC4E0 */ FlagJoint_c();
};

/**
 * @ingroup actors-objects
 * @class daObjFlag_c
 * @brief Flag 1
 *
 * @details
 *
 */
class daObjFlag_c : public fopAc_ac_c {
public:
    /* 80BEB778 */ void create_init();
    /* 80BEB8F0 */ void initBaseMtx();
    /* 80BEB984 */ void getJointAngle(csXyz*, int);
    /* 80BEB9AC */ void calcJointAngle();
    /* 80BEBC58 */ void calcAngleSwingZ(FlagJoint_c*, f32);
    /* 80BEBDAC */ void calcAngleSwingX(FlagJoint_c*, f32);
    /* 80BEBE64 */ void getSwingY(f32);

    static u8 const M_attr[52];

private:
    /* 0x568 */ J3DModel* mpModel1;
    /* 0x56c */ J3DModel* mpModel2;
    /* 0x570 */ u8 field_0x56c[0x580 - 0x570];
    /* 0x580 */ csXyz field_0x580;
    u8 field_0x6c[0x592 - 0x586];
    /* 0x592 */ short field_0x592;
    u8 field_0x5d6c[0x5a6 - 0x594];
    /* 0x5a6 */ short field_0x5a6;
    u8 field_02x56c[0x5ba - 0x5a8];
    /* 0x5ba */ short field_0x5ba;
    u8 field_0xs56c[0x5ce - 0x5bc];
    /* 0x5ce */ short field_0x5ce;
    /* 0x5d0 */ cXyz field_0x5d0;
    /* 0x5dc */ float field_0x5dc;
    /* 0x5e0 */ s16 field_0x5e0;
    /* 0x5e2 */ short field_0x5e2;
    /* 0x5e4 */ short field_0x5e4;
    /* 0x5e6 */ short field_0x5e6;
    /* 0x5e8 */ short field_0x5e8;
    /* 0x5ea */ u8 field_0x568[0x5ec - 0x5ea];
};

STATIC_ASSERT(sizeof(daObjFlag_c) == 0x5ec);


#endif /* D_A_OBJ_FLAG_H */
