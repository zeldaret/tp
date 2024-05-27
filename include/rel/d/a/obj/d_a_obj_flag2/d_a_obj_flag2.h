#ifndef D_A_OBJ_FLAG2_H
#define D_A_OBJ_FLAG2_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjFlag2_c
 * @brief Flag 2
 *
 * @details
 *
 */
class daObjFlag2_c : public fopAc_ac_c {
public:
    /* 80BED22C */ void create_init();
    /* 80BED368 */ void initBaseMtx();
    /* 80BED3B8 */ void initCollision();
    /* 80BED44C */ void setCollision();
    /* 80BED480 */ void createHeap();
    /* 80BED6A0 */ void create();
    /* 80BED7A4 */ daObjFlag2_c();
    /* 80BEDCE0 */ void draw();
    /* 80BEDEE0 */ ~daObjFlag2_c();

    static u8 const M_attr[20];

private:
    /* 0x568 */ u8 field_0x568[0x10c0 - 0x568];
};
STATIC_ASSERT(sizeof(daObjFlag2_c) == 0x10c0);

class FlagCloth_c {
public:
    /* 80BEC658 */ void initFlagPos(cXyz*, fopAc_ac_c*);
    /* 80BEC7CC */ void calcFlagFactor(cXyz*, cXyz*, cXyz*, int);
    /* 80BEC928 */ void calcFlagFactorSub(cXyz*, cXyz*, cXyz*, f32);
    /* 80BECAE0 */ void calcFlagNormal(cXyz*, int);
    /* 80BECC34 */ void calcFlagNormalBack();
    /* 80BECC78 */ void initCcSphere(fopAc_ac_c*);
    /* 80BECCE4 */ void setCcSphere();
    /* 80BECD98 */ void execute();
    /* 80BECF30 */ void draw();
    /* 80BED9C4 */ ~FlagCloth_c();
    /* 80BEE0B8 */ void getTargetPos();
};


#endif /* D_A_OBJ_FLAG2_H */
