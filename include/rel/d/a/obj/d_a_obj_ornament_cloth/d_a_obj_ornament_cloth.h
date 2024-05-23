#ifndef D_A_OBJ_ORNAMENT_CLOTH_H
#define D_A_OBJ_ORNAMENT_CLOTH_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daObjOnCloth_c : public fopAc_ac_c {
public:
    /* 80595038 */ void create_init();
    /* 80595158 */ void initBaseMtx();
    /* 80595178 */ void setBaseMtx();
    /* 805951DC */ void setNormalClothPos();
    /* 805954B0 */ void calcJointAngle();
    /* 80595638 */ void checkPlayerMove();

    static u8 const M_attr[48];
private:
    /* 0x568 */ u8 field_0x568[0x6c8 - 0x568];
};
STATIC_ASSERT(sizeof(daObjOnCloth_c) == 0x6c8);

class ClothJoint_c {
public:
    /* 80595B9C */ ~ClothJoint_c();
    /* 80595CA8 */ ClothJoint_c();
};


#endif /* D_A_OBJ_ORNAMENT_CLOTH_H */
