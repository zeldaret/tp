#ifndef D_A_E_WW_H
#define D_A_E_WW_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class daE_WW_c
 * @brief White Wolfos
 * 
 * @details 
 * 
 */
class daE_WW_c : public fopEn_enemy_c {
    /* 807E7748 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 807E7800 */ void JointCallBack(J3DJoint*, int);
    /* 807E784C */ void setHeadAngle();
    /* 807E79D4 */ void draw();
    /* 807E7ADC */ void setBck(int, u8, f32, f32);
    /* 807E7B80 */ void checkBck(int);
    /* 807E7BDC */ void setActionMode(int, int);
    /* 807E7C20 */ void damage_check();
    /* 807E7E74 */ void setRandamNumber();
    /* 807E7FCC */ void getNearPlayerAngle();
    /* 807E804C */ void setGroundAngle();
    /* 807E830C */ void checkCreateBg(cXyz);
    /* 807E8560 */ void checkAttackWall();
    /* 807E8624 */ void setBlurEffect();
    /* 807E8700 */ void setAppearEffect();
    /* 807E8C54 */ void checkSideStep();
    /* 807E8EEC */ void createWolf(cXyz, u8);
    /* 807E905C */ void executeMaster();
    /* 807E972C */ void executeWait();
    /* 807E99B8 */ void calcJumpSpeed();
    /* 807E9C1C */ void executeAttack();
    /* 807EA474 */ void checkAttackStart();
    /* 807EA870 */ void executeChase();
    /* 807EB650 */ void executeDamage();
    /* 807EB964 */ void checkMoveOut();
    /* 807EBAE0 */ void executeMoveOut();
    /* 807EC940 */ void checkWalkStart();
    /* 807ECE58 */ void executeWalk();
    /* 807ED674 */ void eWW_posMoveF();
    /* 807ED78C */ void action();
    /* 807EDA78 */ void mtx_set();
    /* 807EDB00 */ void cc_set();
    /* 807EDCC4 */ void execute();
    /* 807EDE8C */ void calcMoveDir(s16*, s16);
    /* 807EE440 */ void _delete();
    /* 807EE4D4 */ void CreateHeap();
    /* 807EE63C */ void create();
private:
    /* 0x5ac */ u8 field_0x5ac[0xec8 - 0x5ac];
};
STATIC_ASSERT(sizeof(daE_WW_c) == 0xec8);

class daE_WW_HIO_c {
    /* 807E76EC */ daE_WW_HIO_c();
    /* 807EEEBC */ ~daE_WW_HIO_c();
};


#endif /* D_A_E_WW_H */
