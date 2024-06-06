#ifndef D_A_COACH_FIRE_H
#define D_A_COACH_FIRE_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daCoachFire_c : public fopAc_ac_c {
public:
    /* 80657B78 */ void create_init();
    /* 80657C48 */ void initBaseMtx();
    /* 80657CA8 */ void setBaseMtx();
    /* 80657D2C */ void initCcSphere();

    static u8 const M_attr[16];

private:
    /* 0x568 */ u8 field_0x568[0x714 - 0x568];
};

STATIC_ASSERT(sizeof(daCoachFire_c) == 0x714);


#endif /* D_A_COACH_FIRE_H */
