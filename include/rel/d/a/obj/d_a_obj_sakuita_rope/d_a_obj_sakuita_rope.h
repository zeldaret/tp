#ifndef D_A_OBJ_SAKUITA_ROPE_H
#define D_A_OBJ_SAKUITA_ROPE_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjItaRope_c
 * @brief Rope Banner Fence
 *
 * @details
 *
 */
class daObjItaRope_c : public fopAc_ac_c {
public:
    /* 80CC57E4 */ void create_init();
    /* 80CC5E48 */ void initBaseMtx();
    /* 80CC5E7C */ void setBaseMtx();
    /* 80CC5ECC */ void setNormalRopePos();

    static u8 const M_attr[20];

private:
    /* 0x568 */ u8 field_0x568[0x638 - 0x568];
};

STATIC_ASSERT(sizeof(daObjItaRope_c) == 0x638);

class Sakuita_c {
public:
    /* 80CC5238 */ void setModelData(J3DModelData*);
    /* 80CC527C */ void create(cXyz*, s16, s8);
    /* 80CC5314 */ void execute(cXyz*, s16);
    /* 80CC5354 */ void draw();
    /* 80CC5390 */ void initBaseMtx();
    /* 80CC53B0 */ void setBaseMtx();
    /* 80CC5444 */ void setPlatePos(cXyz*);
    /* 80CC5720 */ void calcAngle();
    /* 80CC63E4 */ ~Sakuita_c();
    /* 80CC6420 */ Sakuita_c();
};

class RopeWork_c {
public:
    /* 80CC6424 */ ~RopeWork_c();
    /* 80CC6460 */ RopeWork_c();
};



#endif /* D_A_OBJ_SAKUITA_ROPE_H */
