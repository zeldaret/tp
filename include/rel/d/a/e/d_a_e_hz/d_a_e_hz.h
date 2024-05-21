#ifndef D_A_E_HZ_H
#define D_A_E_HZ_H
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class daE_HZ_c
 * @brief Tile Worm
 * 
 * @details 
 * 
 */
class daE_HZ_c : public fopEn_enemy_c {
    /* 806EA690 */ void setBck(int, u8, f32, f32);
    /* 806EA734 */ void checkBck(int);
    /* 806EA790 */ void draw();
    /* 806EAADC */ void setActionMode(int);
    /* 806EAB68 */ void checkHideStart();
    /* 806EAEDC */ void checkAttackStart();
    /* 806EB05C */ void checkArrowCharge();
    /* 806EB0A4 */ void setTgSetBit(int);
    /* 806EB0FC */ void isWait();
    /* 806EB13C */ void checkFall();
    /* 806EB2E8 */ void setCloseSmokeEffect();
    /* 806EB3EC */ void executeWait();
    /* 806EB7B0 */ void getHideSpeed();
    /* 806EB818 */ void executeHide();
    /* 806EBD44 */ void executeAttack();
    /* 806EC068 */ void initBackWalk();
    /* 806EC348 */ void executeAway();
    /* 806ECAEC */ void setWindEnd();
    /* 806ECB64 */ void executeWind();
    /* 806ED5B0 */ void executeChance();
    /* 806ED6C8 */ void initRollDamage();
    /* 806ED7A8 */ void doRollDamage();
    /* 806ED8A4 */ void executeDamage();
    /* 806EDAA8 */ void executeDeath();
    /* 806EDDCC */ void setWindChanceEnd();
    /* 806EDDE8 */ void executeWindChance();
    /* 806EE120 */ void executeWindWalk();
    /* 806EE2A4 */ void setWaterEffect();
    /* 806EE3BC */ void executeWaterDeath();
    /* 806EE820 */ void executeDeathWait();
    /* 806EE978 */ void damage_check();
    /* 806EEE10 */ void checkWaterSurface();
    /* 806EEEE4 */ void action();
    /* 806EF144 */ void mtx_set();
    /* 806EF2C8 */ void cc_set();
    /* 806EF46C */ void execute();
    /* 806EF6B4 */ void _delete();
    /* 806EF770 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 806EF880 */ void JointCallBack(J3DJoint*, int);
    /* 806EF8CC */ void CreateHeap();
    /* 806EFB54 */ void setInitPos();
    /* 806EFC18 */ void create();
private:
    /* 0x5ac */ u8 field_0x5ac[0x1238 - 0x5ac];
};
STATIC_ASSERT(sizeof(daE_HZ_c) == 0x1238);

class daE_HZ_HIO_c {
    /* 806EA60C */ daE_HZ_HIO_c();
    /* 806F0368 */ ~daE_HZ_HIO_c();
};


#endif /* D_A_E_HZ_H */
