#ifndef D_A_E_BG_H
#define D_A_E_BG_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daE_BG_c : public fopEn_enemy_c {
    /* 8068585C */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 80685948 */ void JointCallBack(J3DJoint*, int);
    /* 80685994 */ void draw();
    /* 80685B70 */ void setBck(int, u8, f32, f32);
    /* 80685C14 */ void setActionMode(int, int);
    /* 80685C2C */ void damage_check();
    /* 80685DBC */ void setSparkEffect();
    /* 80685F04 */ void search_esa();
    /* 80685F88 */ void executeBorn();
    /* 80686210 */ void executeSwim();
    /* 80686C90 */ void executeAttack();
    /* 80687B38 */ void executeDamage();
    /* 80687CD8 */ void setBombCarry(int);
    /* 80687DEC */ void executeBomb();
    /* 80687FC4 */ void executeBirth();
    /* 8068838C */ void executeHook();
    /* 806883D0 */ void executeEat();
    /* 80689168 */ void action();
    /* 80689544 */ void mtx_set();
    /* 8068966C */ void cc_set();
    /* 806897EC */ void execute();
    /* 80689978 */ void _delete();
    /* 80689A0C */ void CreateHeap();
    /* 80689C38 */ void create();
private:
    /* 0x5ac */ u8 field_0x5ac[0xbbc - 0x5ac];
};
STATIC_ASSERT(sizeof(daE_BG_c) == 0xbbc);

class daE_BG_HIO_c {
    /* 8068580C */ daE_BG_HIO_c();
    /* 8068A19C */ ~daE_BG_HIO_c();
};


#endif /* D_A_E_BG_H */
