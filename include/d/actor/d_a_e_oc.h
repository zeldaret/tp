#ifndef D_A_E_OC_H
#define D_A_E_OC_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"

/**
 * @ingroup actors-enemies
 * @class daE_OC_c
 * @brief Bokoblin
 * 
 * @details 
 * 
 */
class daE_OC_c : public fopEn_enemy_c {
public:
    /* 8072C630 */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 8072C6E8 */ int JointCallBack(J3DJoint*, int);
    /* 8072C734 */ int draw();
    /* 8072CBD4 */ void getVisionAngle(fopAc_ac_c*);
    /* 8072CC10 */ void searchOtherOc();
    /* 8072CDA8 */ void setWatchMode();
    /* 8072CE00 */ void searchPlayer();
    /* 8072CF90 */ void searchPlayer2();
    /* 8072D100 */ void searchPlayerShakeHead();
    /* 8072D1DC */ void searchSound();
    /* 8072D364 */ void checkBeforeBg();
    /* 8072D640 */ void checkBeforeBgFind();
    /* 8072D87C */ void checkBeforeFloorBg(f32);
    /* 8072D994 */ void checkDamageBg();
    /* 8072DB10 */ void setGroundAngle();
    /* 8072DCBC */ void setActionMode(int, int);
    /* 8072DD18 */ void getCutType();
    /* 8072DD8C */ void offTgSph();
    /* 8072DDF4 */ void damage_check();
    /* 8072E274 */ void setBck(int, u8, f32, f32);
    /* 8072E31C */ void checkBck(int);
    /* 8072E37C */ void setSpitEffect();
    /* 8072E42C */ void getHeadAngle();
    /* 8072E498 */ void setStabPos();
    /* 8072E528 */ void setWaitSound();
    /* 8072E5A4 */ void setWalkSound();
    /* 8072E670 */ void setWalkStSound();
    /* 8072E788 */ void setDashSound();
    /* 8072E910 */ void setWaitStSound();
    /* 8072EA58 */ void setFootNoteSound();
    /* 8072EAA4 */ void executeWait();
    /* 8072F1A8 */ void executeWalk();
    /* 8072F5E0 */ void executeTalk();
    /* 8072F914 */ void executeFind();
    /* 807302E8 */ void setWeaponGroundAngle();
    /* 807305C0 */ void executeAttack();
    /* 80730DC0 */ void executeDamage();
    /* 80731124 */ void executeBigDamage();
    /* 807316F8 */ void executeWatch();
    /* 807319E4 */ void executeSoundWatch();
    /* 80731D18 */ void checkBeforeDeath();
    /* 80731D4C */ void executeDeath();
    /* 80731F5C */ void setWaterEffect();
    /* 80732074 */ void executeWaterDeath();
    /* 807323A4 */ void executeDemoMaster();
    /* 80732B04 */ void executeDemoChild();
    /* 80732E64 */ void checkFall();
    /* 8073301C */ void executeFallDead();
    /* 807331CC */ void executeFall();
    /* 8073332C */ void executeFindStay();
    /* 807335B4 */ void executeMoveOut();
    /* 80733E48 */ void checkWaterSurface();
    /* 80733F20 */ void action();
    /* 807345D8 */ void mtx_set();
    /* 80734698 */ void cc_set();
    /* 807348DC */ void execute();
    /* 80734B6C */ void _delete();
    /* 80734C10 */ void CreateHeap();
    /* 80734DA8 */ int create();
private:
    /* 0x5a0 */ request_of_phase_process_class mPhaseReqs[2];
    /* 0x5bc */ mDoExt_McaMorfSO* mpMorf;
    /* 0x5c0 */ J3DModel* mpModel;
    /* 0x5c4 */ Z2CreatureEnemy mSound;
    /* 0x668 */ u8 field_0x668[0x690 - 0x668];
    /* 0x690 */ f32 field_0x690;
    /* 0x690 */ f32 field_0x694;
    /* 0x698 */ u8 field_0x698[0x6a4 - 0x698];
    /* 0x6a4 */ char* field_0x6a4;
    /* 0x6a8 */u8 field_0x6a8[0x6b4 - 0x6a8];
    /* 0x6b4 */ s32 field_0x6b4;
    /* 0x6b8 */ u32 mShadowKey;
    /* 0x6bc */ u8 field_0x6bc[0x6d0 - 0x6bc];
    /* 0x6d0 */ s16 field_0x6d0;
    /* 0x6d2 */ s16 field_0x6d2;
    /* 0x6d4 */ u8 field_0x6d4[0x6e0 - 0x6d4];
    /* 0x6e0 */ u8 field_0x6e0;
    /* 0x6e1 */ u8 field_0x6e1;
    /* 0x6e4 */ f32 field_0x6e4;
    /* 0x6e8 */ u8 field_0x6e8;
    /* 0x6e9 */ u8 field_0x6e9;
    /* 0x6ea */ u8 field_0x6ea;
    /* 0x6eb */ u8 field_0x6eb;
    /* 0x6ec */ u8 field_0x6ec[0x708 - 0x6ec];
    /* 0x708 */ dBgS_AcchCir mAcchCir;
    /* 0x748 */ dBgS_ObjAcch mAcch;
    /* 0x920 */ dCcD_Stts mStts;
    /* 0x95c */ dCcD_Sph mSphs_cc[2];
    /* 0xbcc */ dCcD_Sph mSphs_at[2];
    /* 0xe3c */ u8 field_0xe3c[0xe44 - 0xe3c];
    /* 0xe44 */ Z2CreatureEnemy* mpSound;
    /* 0xe48 */ u8 field_0xe48[0xe58 - 0xe48];
    /* 0xe58 */ u8 field_0xe58;
    /* 0xe59 */ u8 field_0xe59;
    /* 0xe5a */ u8 field_0xe5a;
    /* 0xe5b */ u8 field_0xe5b; // might be unused.
    /* 0xe5c */ u8 field_0xe5c[0xe84 - 0xe5c];
    /* 0xe84 */ u8 field_0xe84;
};

STATIC_ASSERT(sizeof(daE_OC_c) == 0xe88);

class daE_OC_HIO_c {
public:
    /* 8072C5CC */ daE_OC_HIO_c();
    /* 80735630 */ virtual ~daE_OC_HIO_c() {}

    /* 0x04 */ s8 field_0x04;
    /* 0x05 */ u8 field_0x05;
    /* 0x08 */ f32 field_0x08;
    /* 0x0c */ f32 field_0x0c;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1c */ f32 field_0x1c;
    /* 0x20 */ f32 field_0x20;
    /* 0x24 */ f32 field_0x24;
};

struct E_OC_n {
    static u8 const oc_attackb_trans[40];
    static u8 const oc_attackc_trans[40];
    static dCcD_SrcSph cc_sph_src;
    static dCcD_SrcSph at_sph_src;
    static u8 m_battle_oc[4];
    static u8 m_damage_oc[4];
    static u8 m_death_oc[4];
    static u8 m_talk_oc[4];
};


#endif /* D_A_E_OC_H */
