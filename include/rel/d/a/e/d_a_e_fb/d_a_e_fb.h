#ifndef D_A_E_FB_H
#define D_A_E_FB_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daE_FB_c : public fopEn_enemy_c {
    /* 806B6520 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 806B65C0 */ void JointCallBack(J3DJoint*, int);
    /* 806B660C */ void draw();
    /* 806B67E0 */ void setBck(int, u8, f32, f32);
    /* 806B688C */ void setActionMode(int, int);
    /* 806B6898 */ void damage_check();
    /* 806B6D20 */ void mBgLineCheck();
    /* 806B6DF4 */ void search_check();
    /* 806B6F40 */ void executeWait();
    /* 806B70FC */ void executeAttack();
    /* 806B78A0 */ void executeDamage();
    /* 806B7B88 */ void executeBullet();
    /* 806B7DDC */ void action();
    /* 806B80A4 */ void mtx_set();
    /* 806B811C */ void cc_set();
    /* 806B82B4 */ void normal_eff_set();
    /* 806B83F0 */ void dead_eff_set();
    /* 806B8518 */ void execute();
    /* 806B85C8 */ void _delete();
    /* 806B8678 */ void CreateHeap();
    /* 806B88E0 */ void create();
    /* 806B8C1C */ daE_FB_c();
private:
    /* 0x5ac */ u8 field_0x5ac[0xce8 - 0x5ac];
};
STATIC_ASSERT(sizeof(daE_FB_c) == 0xce8);

class daE_FB_HIO_c {
    /* 806B64AC */ daE_FB_HIO_c();
    /* 806B8EE4 */ ~daE_FB_HIO_c();
};


#endif /* D_A_E_FB_H */
