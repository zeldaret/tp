#ifndef D_A_E_YMB_H
#define D_A_E_YMB_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class daE_YMB_c
 * @brief Twilight Insect Boss
 * 
 * @details 
 * 
 */
class daE_YMB_c : public fopEn_enemy_c {
public:
    /* 8081615C */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 808164F0 */ void JointCallBack(J3DJoint*, int);
    /* 80816554 */ void draw();
    /* 8081697C */ void setBck(int, u8, f32, f32);
    /* 80816A20 */ void checkBck(int);
    /* 80816A7C */ void setActionMode(int, int);
    /* 80816A88 */ void setLastDamage();
    /* 80816B7C */ void damage_check();
    /* 80816E78 */ void setCameraSwitch();
    /* 80817064 */ void checkWaterPos();
    /* 80817164 */ void checkGroundPos();
    /* 80817200 */ void setFlyWaitVoice();
    /* 8081727C */ void setDownWaitVoice();
    /* 808172F8 */ void setHitBoardSe();
    /* 808173B0 */ void setElecEffect1();
    /* 8081756C */ void setElecEffect2();
    /* 80817744 */ void setWaterEffect1();
    /* 8081785C */ void setWaterEffect2();
    /* 80817974 */ void setBoilEffect(int);
    /* 80817AEC */ void setDamageEffect(int);
    /* 80817BD8 */ void setDownHamonEffect();
    /* 80817CF0 */ void setFlyBlurEffect();
    /* 80817E7C */ void setRockDamageEffect();
    /* 80817FDC */ void setDeathEffect();
    /* 808181F4 */ void executeWait();
    /* 80818328 */ void setBitePos(int);
    /* 80818370 */ void setInclination();
    /* 80818518 */ void setBodyAngle();
    /* 80818930 */ void checkWolfLockIn();
    /* 80818AE8 */ void executeFly();
    /* 80819610 */ void executeFlyAttack();
    /* 80819FD0 */ void executeRunAway();
    /* 8081A718 */ void executeGuard();
    /* 8081A88C */ void executeSwim();
    /* 8081B78C */ void executeWaterJump();
    /* 8081BC10 */ void getNearDownPos();
    /* 8081BEE8 */ void executeDamage();
    /* 8081C4EC */ void setMidnaBindInit(cXyz*);
    /* 8081C7D0 */ void setMidnaBindLevel(int);
    /* 8081C908 */ void setWolfLockEffect();
    /* 8081CC14 */ void initDownToWater();
    /* 8081CD00 */ void calcDownToWater();
    /* 8081CE6C */ void executeDown();
    /* 8081D4D8 */ void setCreateDrop();
    /* 8081D594 */ void executeDeath();
    /* 8081DBD0 */ void demo_skip(int);
    /* 8081DDE0 */ void DemoSkipCallBack(void*, int);
    /* 8081DE14 */ void calcLakeDemoPlayerPos();
    /* 8081DE84 */ void executeLakeDemo();
    /* 8081E5B4 */ void executeStartDemo();
    /* 8081F140 */ void checkStartBattleDemo();
    /* 8081F2E0 */ void executeBattleDemo();
    /* 8081FAC8 */ void action();
    /* 8081FF88 */ void mtx_set();
    /* 808200A0 */ void getBellyBitePos(cXyz*);
    /* 80820128 */ void getDownLockPoint();
    /* 808203D8 */ void setAttentionPos();
    /* 80820668 */ void cc_set();
    /* 808207AC */ void execute();
    /* 80820A40 */ void _delete();
    /* 80820AF0 */ void CreateHeap();
    /* 80820DD0 */ void create();

    int getMaxLockAttack() { return 6; }
    u8 getSwitchBit() { return mSwitchBit; }

    /* 0x5AC */ u8 field_0x5ac[0x6C0 - 0x5ac];
    /* 0x6C0 */ u8 mSwitchBit;
    /* 0x6C1 */ u8 field_0x6c1[0x1524 - 0x6C1];
};

STATIC_ASSERT(sizeof(daE_YMB_c) == 0x1524);

struct daE_YMB_HIO_c {
    /* 8081610C */ daE_YMB_HIO_c();
    /* 80821460 */ ~daE_YMB_HIO_c();
};

#endif /* D_A_E_YMB_H */
