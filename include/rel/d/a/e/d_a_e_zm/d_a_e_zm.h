#ifndef D_A_E_ZM_H
#define D_A_E_ZM_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class daE_ZM_c
 * @brief Zant Mask
 * 
 * @details 
 * 
 */
class daE_ZM_c : public fopEn_enemy_c {
    /* 8082F9A0 */ void draw();
    /* 8082FBD4 */ void setBck(int, u8, f32, f32);
    /* 8082FC80 */ void setActionMode(int, int);
    /* 8082FC8C */ void damage_check();
    /* 808301E0 */ void mCutTypeCheck();
    /* 8083033C */ void executeSearchPoint();
    /* 80830398 */ void executeWait();
    /* 808309DC */ void executeMove();
    /* 80830AB8 */ void executeAttack();
    /* 80830E28 */ void executeDamage();
    /* 808310C4 */ void executeDead();
    /* 80831474 */ void executeBullet();
    /* 80831930 */ void action();
    /* 80831B08 */ void mtx_set();
    /* 80831B9C */ void cc_set();
    /* 80831D64 */ void execute();
    /* 80831E9C */ void _delete();
    /* 80831F4C */ void CreateHeap();
    /* 80832064 */ void create();
    
private:
    /* 0x5ac */ u8 field_0x5ac[0xc3c - 0x5ac];
};

STATIC_ASSERT(sizeof(daE_ZM_c) == 0xc3c);

class daE_ZM_HIO_c {
    /* 8082F94C */ daE_ZM_HIO_c();
    /* 80832800 */ ~daE_ZM_HIO_c();
};


#endif /* D_A_E_ZM_H */
