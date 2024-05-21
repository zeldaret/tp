#ifndef D_A_E_HP_H
#define D_A_E_HP_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daE_HP_c : public fopEn_enemy_c {
    /* 806E5E30 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 806E5ED0 */ void JointCallBack(J3DJoint*, int);
    /* 806E5F1C */ void LampCtrlJoint(J3DJoint*, J3DModel*);
    /* 806E5FCC */ void LampJointCallBack(J3DJoint*, int);
    /* 806E6018 */ void draw();
    /* 806E6514 */ void setBck(int, u8, f32, f32);
    /* 806E65C0 */ void setActionMode(int, int);
    /* 806E65CC */ void mChkDistance(f32);
    /* 806E673C */ void damage_check();
    /* 806E6948 */ void executeWait();
    /* 806E6C74 */ void executeMove();
    /* 806E6ED8 */ void executeRetMove();
    /* 806E7228 */ void executeAttack();
    /* 806E7574 */ void executeDamage();
    /* 806E77C0 */ void executeDown();
    /* 806E7E94 */ void executeDead();
    /* 806E814C */ void action();
    /* 806E89C0 */ void mtx_set();
    /* 806E8DE0 */ void cc_set();
    /* 806E8FEC */ void execute();
    /* 806E9198 */ void _delete();
    /* 806E9240 */ void CreateHeap();
    /* 806E951C */ void create();
    /* 806E9900 */ daE_HP_c();
private:
    /* 0x5ac */ u8 field_0x5ac[0xdfc - 0x5ac];
};
STATIC_ASSERT(sizeof(daE_HP_c) == 0xdfc);

class daE_HP_HIO_c {
    /* 806E5DEC */ daE_HP_HIO_c();
    /* 806E9D38 */ ~daE_HP_HIO_c();
};


#endif /* D_A_E_HP_H */
