#ifndef D_A_OBJ_LAUNDRY_H
#define D_A_OBJ_LAUNDRY_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjLdy_c
 * @brief Laundry
 *
 * @details
 *
 */
class daObjLdy_c : public fopAc_ac_c {
public:
    /* 80C50F98 */ void create_init();
    /* 80C51088 */ void initBaseMtx();
    /* 80C510F8 */ void setBaseMtx();
    /* 80C5116C */ void getJointAngle(csXyz*, int);
    /* 80C51194 */ void setNormalClothPos();
    /* 80C51644 */ void calcJointAngle();
    /* 80C5183C */ bool divorceParent();

    static u8 const M_attr[52];
private:
    /* 0x568 */ u8 field_0x568[0x7c8 - 0x568];
};
STATIC_ASSERT(sizeof(daObjLdy_c) == 0x7c8);

class LaundJoint_c {
public:
    /* 80C51D2C */ ~LaundJoint_c();
    /* 80C51EC0 */ LaundJoint_c();
};


#endif /* D_A_OBJ_LAUNDRY_H */
