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
class daRotBridge_c;

class daE_OC_c : public fopEn_enemy_c {
public:
    /* 8072C630 */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 8072C6E8 */ int JointCallBack(J3DJoint*, int);
    /* 8072C734 */ int draw();
    /* 8072CBD4 */ int getVisionAngle(fopAc_ac_c*);
    /* 8072CC10 */ void searchOtherOc();
    /* 8072CDA8 */ int setWatchMode();
    /* 8072CE00 */ int searchPlayer();
    /* 8072CF90 */ int searchPlayer2();
    /* 8072D100 */ int searchPlayerShakeHead();
    /* 8072D1DC */ int searchSound();
    /* 8072D364 */ int checkBeforeBg();
    /* 8072D640 */ int checkBeforeBgFind();
    /* 8072D87C */ int checkBeforeFloorBg(f32);
    /* 8072D994 */ void checkDamageBg();
    /* 8072DB10 */ void setGroundAngle();
    /* 8072DCBC */ void setActionMode(int, int);
    /* 8072DD18 */ int getCutType();
    /* 8072DD8C */ void offTgSph();
    /* 8072DDF4 */ void damage_check();
    /* 8072E274 */ void setBck(int, u8, f32, f32);
    /* 8072E31C */ void checkBck(int);
    /* 8072E37C */ void setSpitEffect();
    /* 8072E42C */ s16 getHeadAngle();
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
    /* 80731D18 */ int checkBeforeDeath();
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

    u8 isHomeWait() const { return mIsHomeWait; }
    u8 isBattleOn() const { return mBattleOn; }
    f32 getMoveRange() const { return mMoveRange; }
    f32 getPlayerRange() const { return mPlayerRange; }
    int getActionMode() const { return mActionMode; }
    daE_OC_c* getTalkOc() const { return mpTalk; }

private:
    /* 0x5a0 */ request_of_phase_process_class mPhaseReqs[2];
    /* 0x5bc */ mDoExt_McaMorfSO* mpMorf;
    /* 0x5c0 */ J3DModel* mpModel;
    /* 0x5c4 */ Z2CreatureEnemy mSound;
    /* 0x668 */ daE_OC_c* mpBattle;
    /* 0x66c */ daE_OC_c* mpDamage;
    /* 0x670 */ daE_OC_c* mpTalk;
    /* 0x674 */ u8 field_0x674[0x678 - 0x674];
    /* 0x678 */ daRotBridge_c* mpBridge;
    /* 0x67c */ cXyz field_0x67c;
    /* 0x688 */ csXyz field_0x688;
    /* 0x690 */ f32 mMoveRange;
    /* 0x690 */ f32 mPlayerRange;
    /* 0x698 */ u8 field_0x698[0x6a4 - 0x698];
    /* 0x6a4 */ const char* field_0x6a4;
    /* 0x6a8 */ int mActionMode;
    /* 0x6ac */ int mOldActionMode;
    /* 0x6b0 */ int field_0x6b0;
    /* 0x6b4 */ s32 field_0x6b4;
    /* 0x6b8 */ u32 mShadowKey;
    /* 0x6bc */ u8 field_0x6bc[0x6be - 0x6bc];
    /* 0x6be */ s16 field_0x6be;
    /* 0x6c0 */ u16 field_0x6c0;
    /* 0x6c2 */ s16 field_0x6c2;
    /* 0x6c4 */ u8 field_0x6c4[0x6c6 - 0x6c4];
    /* 0x6c6 */ s16 field_0x6c6;
    /* 0x6c8 */ u8 field_0x6c8[0x6cc - 0x6c8];
    /* 0x6cc */ s16 field_0x6cc;
    /* 0x6ce */ u8 field_0x6ce[0x6d0 - 0x6ce];
    /* 0x6d0 */ s16 field_0x6d0;
    /* 0x6d2 */ s16 field_0x6d2;
    /* 0x6d4 */ u8 field_0x6d4[0x6d6 - 0x6d4];
    /* 0x6d6 */ s16 field_0x6d6;
    /* 0x6d8 */ s16 field_0x6d8;
    /* 0x6da */ s16 field_0x6da;
    /* 0x6dc */ u8 field_0x6dc;
    /* 0x6dd */ u8 field_0x6dd;
    /* 0x6de */ u8 field_0x6de;
    /* 0x6df */ u8 field_0x6df;
    /* 0x6e0 */ u8 field_0x6e0;
    /* 0x6e1 */ u8 field_0x6e1;
    /* 0x6e2 */ u8 field_0x6e2;
    /* 0x6e3 */ u8 field_0x6e3;
    /* 0x6e4 */ f32 field_0x6e4;
    /* 0x6e8 */ u8 field_0x6e8;
    /* 0x6e9 */ u8 mIsHomeWait;
    /* 0x6ea */ u8 mBattleOn;
    /* 0x6eb */ u8 field_0x6eb;
    /* 0x6ec */ u8 field_0x6ec[0x708 - 0x6ec];
    /* 0x708 */ dBgS_AcchCir mAcchCir;
    /* 0x748 */ dBgS_ObjAcch mAcch;
    /* 0x920 */ dCcD_Stts mStts;
    /* 0x95c */ dCcD_Sph mSphs_cc[2];
    /* 0xbcc */ dCcD_Sph mSphs_at[2];
    /* 0xe3c */ cCcD_Obj* mpTgHitObj;
    /* 0xe40 */ u8 field_0xe40[0xe44 - 0xe40];
    /* 0xe44 */ Z2CreatureEnemy* mpSound;
    /* 0xe48 */ u8 field_0xe48[0xe4a - 0xe48];
    /* 0xe4a */ s16 field_0xe4a;
    /* 0xe4c */ u8 field_0xe4c[0xe58 - 0xe4c];
    /* 0xe58 */ u16 field_0xe58;
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
    static daE_OC_c* m_battle_oc;
    static daE_OC_c* m_damage_oc;
    static daE_OC_c* m_death_oc;
    static daE_OC_c* m_talk_oc;
};


#endif /* D_A_E_OC_H */
