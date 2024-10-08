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
    /* 0x568 */ u8 field_0x568[0x5ec - 0x568];
};

STATIC_ASSERT(sizeof(daObjFlag_c) == 0x5ec);


#endif /* D_A_OBJ_FLAG_H */
