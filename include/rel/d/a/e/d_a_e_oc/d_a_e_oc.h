#ifndef D_A_E_OC_H
#define D_A_E_OC_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daE_OC_c : public fopEn_enemy_c {
    /* 8072C630 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 8072C6E8 */ void JointCallBack(J3DJoint*, int);
    /* 8072C734 */ void draw();
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
    /* 80734DA8 */ void create();
private:
    /* 0x5ac */ u8 field_0x5ac[0xe88 - 0x5ac];
};
STATIC_ASSERT(sizeof(daE_OC_c) == 0xe88);

class daE_OC_HIO_c {
    /* 8072C5CC */ daE_OC_HIO_c();
    /* 80735630 */ ~daE_OC_HIO_c();
};

struct E_OC_n {
    static u8 const oc_attackb_trans[40];
    static u8 const oc_attackc_trans[40];
    static u8 cc_sph_src[64];
    static u8 at_sph_src[64];
    static u8 m_battle_oc[4];
    static u8 m_damage_oc[4];
    static u8 m_death_oc[4];
    static u8 m_talk_oc[4];
};


#endif /* D_A_E_OC_H */
