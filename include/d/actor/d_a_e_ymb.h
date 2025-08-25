#ifndef D_A_E_YMB_H
#define D_A_E_YMB_H

#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_w.h"

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
    /* 8081615C */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 808164F0 */ static int JointCallBack(J3DJoint*, int);
    /* 80816554 */ int draw();
    /* 8081697C */ void setBck(int, u8, f32, f32);
    /* 80816A20 */ bool checkBck(int);
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
    /* 80818930 */ bool checkWolfLockIn();
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
    /* 8081DDE0 */ static int DemoSkipCallBack(void*, int);
    /* 8081DE14 */ void calcLakeDemoPlayerPos();
    /* 8081DE84 */ void executeLakeDemo();
    /* 8081E5B4 */ void executeStartDemo();
    /* 8081F140 */ bool checkStartBattleDemo();
    /* 8081F2E0 */ void executeBattleDemo();
    /* 8081FAC8 */ void action();
    /* 8081FF88 */ void mtx_set();
    /* 808200A0 */ void getBellyBitePos(cXyz*);
    /* 80820128 */ int getDownLockPoint();
    /* 808203D8 */ void setAttentionPos();
    /* 80820668 */ void cc_set();
    /* 808207AC */ int execute();
    /* 80820A40 */ int _delete();
    /* 80820AF0 */ int CreateHeap();
    /* 80820DD0 */ cPhs__Step create();

    int getMaxLockAttack() { return 6; }
    u8 getSwitchBit() { return mSwitchBit; }

    /* 0x05AC */ request_of_phase_process_class mPhase;
    /* 0x05B4 */ mDoExt_invisibleModel mInvisModel;
    /* 0x05BC */ mDoExt_McaMorfSO* mpModelMorf;
    /* 0x05C0 */ mDoExt_brkAnm* mpBrkAnm;
    /* 0x05C4 */ Z2CreatureEnemy mSound;
    /* 0x0668 */ f32 field_0x668[6];
    /* 0x0680 */ int field_0x680[6];
    /* 0x0698 */ int field_0x698;
    /* 0x069C */ cXyz field_0x69c;
    /* 0x06A8 */ cXyz field_0x6a8;
    /* 0x06B4 */ int mAction;
    /* 0x06B8 */ int mMode;
    /* 0x06BC */ u32 mShadowKey;
    /* 0x06C0 */ u8 mSwitchBit;
    /* 0x06C1 */ u8 field_0x6c1;
    /* 0x06C4 */ f32 field_0x6c4;
    /* 0x06C8 */ f32 field_0x6c8;
    /* 0x06CC */ f32 field_0x6cc;
    /* 0x06D0 */ f32 field_0x6d0;
    /* 0x06D4 */ f32 field_0x6d4;
    /* 0x06D8 */ f32 field_0x6d8;
    /* 0x06DC */ f32 field_0x6dc;
    /* 0x06E0 */ f32 field_0x6e0;
    /* 0x06E4 */ s16 field_0x6e4;
    /* 0x06E6 */ s16 field_0x6e6;
    /* 0x06E8 */ s16 field_0x6e8;
    /* 0x06EA */ s16 field_0x6ea;
    /* 0x06EC */ int field_0x6ec;
    /* 0x06F0 */ int field_0x6f0;
    /* 0x06F4 */ int field_0x6f4;
    /* 0x06F8 */ int field_0x6f8;
    /* 0x06FC */ int field_0x6fc;
    /* 0x0700 */ int field_0x700;
    /* 0x0704 */ int field_0x704;
    /* 0x0708 */ int field_0x708;
    /* 0x070C */ int field_0x70c;
    /* 0x0710 */ u8 field_0x710;
    /* 0x0711 */ u8 field_0x711;
    /* 0x0712 */ u8 field_0x712;
    /* 0x0713 */ u8 field_0x713;
    /* 0x0714 */ u8 field_0x714;
    /* 0x0715 */ u8 field_0x715;
    /* 0x0716 */ u8 field_0x716;
    /* 0x0717 */ u8 field_0x717;
    /* 0x0718 */ u8 field_0x718;
    /* 0x0719 */ u8 field_0x719[0x71f - 0x719];
    /* 0x071F */ u8 field_0x71f;
    /* 0x0720 */ u8 field_0x720;
    /* 0x0721 */ u8 field_0x721;
    /* 0x0722 */ u8 field_0x722;
    /* 0x0723 */ u8 field_0x723;
    /* 0x0724 */ u8 field_0x724;
    /* 0x0725 */ u8 field_0x725;
    /* 0x0728 */ cXyz mDemoCamEye;
    /* 0x0734 */ cXyz mDemoCamCenter;
    /* 0x0740 */ cXyz field_0x740;
    /* 0x074C */ cXyz field_0x74c;
    /* 0x0758 */ f32 mDemoCamFovy;
    /* 0x075C */ f32 field_0x75c;
    /* 0x0760 */ s16 field_0x760;
    /* 0x0762 */ s16 field_0x762;
    /* 0x0764 */ u8 field_0x764;
    /* 0x0765 */ u8 field_0x765;
    /* 0x0768 */ Mtx field_0x768;
    /* 0x0798 */ dBgW* mpBgW;
    /* 0x079C */ dBgS_GndChk mGndChk;
    /* 0x07F0 */ dCcD_Stts mStts;
    /* 0x082C */ dCcD_Sph field_0x82c[2];
    /* 0x0A9C */ dCcD_Sph field_0xa9c;
    /* 0x0BD4 */ dCcD_Sph field_0xbd4[6];
    /* 0x1324 */ dCcD_Sph field_0x1324;
    /* 0x145C */ dCcU_AtInfo mAtInfo;
    /* 0x1480 */ u32 mElecParticles[4];
    /* 0x1490 */ u32 mMidnaBindParticles[3];
    /* 0x149C */ u8 field_0x149c[0x14d8 - 0x149c];
    /* 0x14D8 */ u32 mWaterParticles1[6];
    /* 0x14F0 */ u32 mWaterParticles2[7];
    /* 0x150C */ u32 mDownHamonParticles[2];
    /* 0x1514 */ u32 mBlurParticles[2];
    /* 0x151C */ u32 mDamageParticle;
    /* 0x1520 */ u8 field_0x1520;
};

STATIC_ASSERT(sizeof(daE_YMB_c) == 0x1524);

#endif /* D_A_E_YMB_H */
