#ifndef D_A_E_OT_H
#define D_A_E_OT_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class daE_OT_c
 * @brief ???
 * 
 * @details 
 * 
 */
class daE_OT_c : public fopEn_enemy_c {
    /* 8073A314 */ void draw();
    /* 8073A454 */ void setBck(int, u8, f32, f32);
    /* 8073A4F8 */ void setActionMode(int, int);
    /* 8073A510 */ void damage_check();
    /* 8073A7B0 */ void checkWaterSurface();
    /* 8073A838 */ void setWaterEffect();
    /* 8073A99C */ void setEggBreakEffect();
    /* 8073AA40 */ void setDeathLightEffect();
    /* 8073AB38 */ void setEggStay();
    /* 8073AC14 */ void executeEgg();
    /* 8073AF70 */ void executeBorn();
    /* 8073B0D0 */ void executeAttack();
    /* 8073B428 */ void executePanic();
    /* 8073B854 */ void executeDamage();
    /* 8073BB9C */ void action();
    /* 8073BD78 */ void mtx_set();
    /* 8073BE10 */ void cc_set();
    /* 8073BF84 */ void execute();
    /* 8073C058 */ void _delete();
    /* 8073C0EC */ void CreateHeap();
    /* 8073C31C */ void create();
private:
    /* 0x5ac */ u8 field_0x5ac[0xb98 - 0x5ac];
};
STATIC_ASSERT(sizeof(daE_OT_c) == 0xb98);

class daE_OT_HIO_c {
    /* 8073A2CC */ daE_OT_HIO_c();
    /* 8073C9B0 */ ~daE_OT_HIO_c();
};


#endif /* D_A_E_OT_H */