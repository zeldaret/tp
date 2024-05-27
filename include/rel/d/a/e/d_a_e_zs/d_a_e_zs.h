#ifndef D_A_E_ZS_H
#define D_A_E_ZS_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class daE_ZS_c
 * @brief Staltroop
 * 
 * @details 
 * 
 */
class daE_ZS_c : public fopEn_enemy_c {
    /* 808330DC */ void draw();
    /* 808331E4 */ void setBck(int, u8, f32, f32);
    /* 80833290 */ void setActionMode(int, int);
    /* 8083329C */ void damage_check();
    /* 80833698 */ void mBossHandCheck();
    /* 80833964 */ void executeAppear();
    /* 80833D30 */ void executeWait();
    /* 80833F1C */ void executeDamage();
    /* 80834108 */ void executeDrive();
    /* 808342C8 */ void action();
    /* 80834478 */ void mtx_set();
    /* 80834518 */ void cc_set();
    /* 80834650 */ void execute();
    /* 808346E4 */ void _delete();
    /* 80834778 */ void CreateHeap();
    /* 80834884 */ void create();

private:
    /* 0x5ac */ u8 field_0x5ac[0xa3c - 0x5ac];
};
STATIC_ASSERT(sizeof(daE_ZS_c) == 0xa3c);

class daE_ZS_HIO_c {
    /* 808330AC */ daE_ZS_HIO_c();
    /* 80834DDC */ ~daE_ZS_HIO_c();
};


#endif /* D_A_E_ZS_H */
