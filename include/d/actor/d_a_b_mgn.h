#ifndef D_A_B_MGN_H
#define D_A_B_MGN_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class daB_MGN_c
 * @brief Beast Ganon?
 *
 * @details Hyrule Castle dungeon boss.
 *
 */
class daB_MGN_c : public fopEn_enemy_c {
public:
    /* 8060577C */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 8060584C */ void JointCallBack(J3DJoint*, int);
    /* 80605898 */ void draw();
    /* 80605D78 */ void setDashSmokeEffect();
    /* 8060601C */ void setBackJumpEffect();
    /* 806062C0 */ void setSlideSmokeEffect();
    /* 80606424 */ void setBodySlideEffect();
    /* 806065D4 */ void setOpeningEffect();
    /* 80606754 */ void setStepEffect();
    /* 8060688C */ void setFallAttackEffect();
    /* 80606A10 */ void setHeadLightEffect();
    /* 80606AEC */ void setHeadHitEffect();
    /* 80606C6C */ void setHideSmokeEffect(cXyz*, u8);
    /* 80606D60 */ void calcHideSmokeEffect();
    /* 806071C4 */ void drawHideSmokeEffect();
    /* 8060729C */ void setBloodEffect();
    /* 80607498 */ void calcBloodMove();
    /* 8060778C */ void checkDownBeforeBG();
    /* 80607924 */ void setBck(int, u8, f32, f32);
    /* 806079CC */ void checkBck(int);
    /* 80607A2C */ void setActionMode(int, int);
    /* 80607A80 */ void setExitMode(int);
    /* 80607B50 */ void onBodyShield();
    /* 80607B80 */ void offBodyShield();
    /* 80607BB0 */ void onBodySlideAt();
    /* 80607BFC */ void offBodySlideAt();
    /* 80607C20 */ void checkHitSlideAt();
    /* 80607CB0 */ void onBodyFallAt();
    /* 80607CE4 */ void offBodyFallAt();
    /* 80607D08 */ void onBodyCo();
    /* 80607D44 */ void offBodyCo();
    /* 80607D7C */ void getNearHitPos(cXyz*);
    /* 8060819C */ void damage_check();
    /* 80608738 */ void calcJointAngle(s16);
    /* 806087A8 */ void executeCircle();
    /* 80608EF8 */ void executeDash();
    /* 80609D70 */ void executeThrown();
    /* 8060A670 */ void setDownEnd();
    /* 8060A72C */ void executeDown();
    /* 8060ACB8 */ void executeDownDamage();
    /* 8060B028 */ void executeDownBiteDamage();
    /* 8060B430 */ void executeWarp();
    /* 8060B544 */ void executeFall();
    /* 8060BE6C */ void demo_skip(int);
    /* 8060C034 */ void DemoSkipCallBack(void*, int);
    /* 8060C068 */ void executeOpening();
    /* 8060D078 */ void executeDeath();
    /* 8060D880 */ void executeJump();
    /* 8060DAC0 */ void checkStartJump();
    /* 8060DDA0 */ void action();
    /* 8060E158 */ void mtx_set();
    /* 8060E1D0 */ void cc_set();
    /* 8060E820 */ void execute();
    /* 8060EA38 */ void _delete();
    /* 8060EAE0 */ void CreateHeap();
    /* 8060F0D0 */ void create();

private:
    /* 0x5ac */ u8 field_0x5ac[0x26cc - 0x5ac];
};

STATIC_ASSERT(sizeof(daB_MGN_c) == 0x26cc);

class daB_MGN_HIO_c {
public:
    /* 8060572C */ daB_MGN_HIO_c();
    /* 8060F8D0 */ ~daB_MGN_HIO_c();
};


#endif /* D_A_B_MGN_H */
