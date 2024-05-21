#ifndef D_A_E_VT_H
#define D_A_E_VT_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daE_VA_c : public fopEn_enemy_c {
    /* 807C267C */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 807C284C */ void JointCallBack(J3DJoint*, int);
    /* 807C2898 */ void calcJointNeck();
    /* 807C2A4C */ void calcJointSleeve();
    /* 807C3264 */ void draw();
    /* 807C3818 */ void setBck(int, u8, f32, f32);
    /* 807C38BC */ void checkBck(int);
    /* 807C3918 */ void setActionMode(int, int);
    /* 807C39C4 */ void getWolfCutType();
    /* 807C3A1C */ void onSwordAtBit();
    /* 807C3A50 */ void offSwordShield();
    /* 807C3AB0 */ void setTransDamage(cXyz*);
    /* 807C3B58 */ void damage_check();
    /* 807C4844 */ void setFireEffect(int);
    /* 807C49B4 */ void setFootEffect();
    /* 807C4B54 */ void setWeponEffect();
    /* 807C4DFC */ void setBugsEffect();
    /* 807C4F10 */ void setWeponLandEffect();
    /* 807C4FCC */ void setWeponGlow();
    /* 807C50A4 */ void setWeponFlashScreen();
    /* 807C5188 */ void setMagicEffect(int);
    /* 807C5258 */ void setMagicHitEffect(int);
    /* 807C5338 */ void demo_skip(int);
    /* 807C53A8 */ void DemoSkipCallBack(void*, int);
    /* 807C53DC */ void getRopeLength(int);
    /* 807C53FC */ void calcOpRopePos();
    /* 807C5CF0 */ void onRopeCutStatus(int, int, int);
    /* 807C5DF4 */ void setVibRope(f32, f32);
    /* 807C5EAC */ void setVibTag(int, int);
    /* 807C6164 */ void calcTagAngle();
    /* 807C638C */ void calcRopeFirePos();
    /* 807C6564 */ void executeDemoOpWait();
    /* 807C67A4 */ void executeDemoOp();
    /* 807C7534 */ void executeClearWait();
    /* 807C7640 */ void executeClearChase();
    /* 807C783C */ void executeClearAttack();
    /* 807C7A8C */ void executeTransWait();
    /* 807C7C74 */ void executeTransChase();
    /* 807C7ED4 */ void executeTransAttack();
    /* 807C839C */ void executeTransBiteDamage();
    /* 807C8860 */ void executeTransDamage();
    /* 807C8A84 */ void executeTransThrough();
    /* 807C8B78 */ void executeOpaciWait();
    /* 807C915C */ void executeOpaciFly();
    /* 807C9A40 */ void executeOpaciDamage();
    /* 807C9C8C */ void executeOpaciChase();
    /* 807CA364 */ void executeOpaciAttack();
    /* 807CA73C */ void executeOpaciDown();
    /* 807CAA80 */ void executeOpaciDownDamage();
    /* 807CACE0 */ void executeOpaciFlip();
    /* 807CADB8 */ void executeOpaciFadeAway();
    /* 807CB1C4 */ void executeOpaciDeath();
    /* 807CB8CC */ void calcMagicMove();
    /* 807CBC00 */ void setAlphaType();
    /* 807CC004 */ void action();
    /* 807CC4D0 */ void mtx_set();
    /* 807CC864 */ void cc_set();
    /* 807CCD24 */ void execute();
    /* 807CCF64 */ void _delete();
    /* 807CD048 */ void CreateHeap();
    /* 807CD668 */ void create();
    /* 807CDAD8 */ daE_VA_c();
private:
    /* 0x5ac */ u8 field_0x5ac[0x10ffc - 0x5ac];
};
STATIC_ASSERT(sizeof(daE_VA_c) == 0x10ffc);

class daE_VA_HIO_c {
    /* 807C25EC */ daE_VA_HIO_c();
    /* 807CE2AC */ ~daE_VA_HIO_c();
};


#endif /* D_A_E_VT_H */
