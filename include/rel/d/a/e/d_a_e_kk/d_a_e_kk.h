#ifndef D_A_E_KK_H
#define D_A_E_KK_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class daE_KK_c
 * @brief Chilfos
 * 
 * @details 
 * 
 */
class daE_KK_c : public fopEn_enemy_c {
    /* 806FA75C */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 806FA7FC */ void JointCallBack(J3DJoint*, int);
    /* 806FA848 */ void draw();
    /* 806FAA68 */ void setBck(int, u8, f32, f32);
    /* 806FAB14 */ void setWeaponBck(int, u8, f32, f32);
    /* 806FABC0 */ void mCutTypeCheck(int);
    /* 806FAC80 */ void setActionMode(int, int);
    /* 806FAC8C */ void damage_check();
    /* 806FB2EC */ void nextActionCheck();
    /* 806FB4F4 */ void way_gake_check();
    /* 806FB6C0 */ void mDeadEffSet(cXyz&);
    /* 806FB7D8 */ void executeWait();
    /* 806FB908 */ void executeIcicleWait();
    /* 806FBB1C */ void executeWalk();
    /* 806FBE98 */ void executeSpearThrow();
    /* 806FC370 */ void executeBackWalk();
    /* 806FC75C */ void executeYoroke();
    /* 806FC8F4 */ void executeGuard();
    /* 806FCA28 */ void executeDamage();
    /* 806FCC34 */ void executeAttack();
    /* 806FD068 */ void executeDead();
    /* 806FD294 */ void executeWeaponMove();
    /* 806FD930 */ void action();
    /* 806FDD0C */ void mtx_set();
    /* 806FDF0C */ void weapon_mtx_set();
    /* 806FE0B8 */ void cc_set();
    /* 806FE2A8 */ void execute();
    /* 806FE3E0 */ void _delete();
    /* 806FE480 */ void CreateHeap();
    /* 806FE6B8 */ void create();
private:
    /* 0x5ac */ u8 field_0x5ac[0x13d4 - 0x5ac];
};
STATIC_ASSERT(sizeof(daE_KK_c) == 0x13d4);

class daE_KK_HIO_c {
    /* 806FA70C */ daE_KK_HIO_c();
    /* 806FF0F0 */ ~daE_KK_HIO_c();
};


#endif /* D_A_E_KK_H */
