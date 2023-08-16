#ifndef D_A_E_YM_H
#define D_A_E_YM_H

#include "Z2AudioLib/Z2Creature.h"
#include "d/cc/d_cc_uty.h"

class daE_YM_HIO_c {
public:
    /* 8080812C */ daE_YM_HIO_c();

    /* 80815458 */ virtual ~daE_YM_HIO_c();

    /* 0x04 */ s8 field_0x4;
    /* 0x08 */ f32 mModelSize;
    /* 0x0C */ f32 mElectricInvincibilityTimeExtension;
    /* 0x10 */ f32 mMoveSpeed;
    /* 0x14 */ f32 mFlyMoveSpeed;
    /* 0x18 */ f32 mFlyAttackSpeed;
    /* 0x1C */ f32 mSurpriseDistance;
    /* 0x20 */ f32 mMoveRange;
};

class daE_YM_c : public fopEn_enemy_c {
public:
    enum daE_YM_Action {
        /*  0 */ ACT_WAIT,
        /*  1 */ ACT_MOVE,
        /*  2 */ ACT_ESCAPE,
        /*  3 */ ACT_DOWN,
        /*  4 */ ACT_WIND,
        /*  5 */ ACT_SURPRISE,
        /*  6 */ ACT_BACK,
        /*  7 */ ACT_FALL,
        /*  8 */ ACT_ATTACK,
        /*  9 */ ACT_ATTACK_WALL,
        /* 10 */ ACT_DEFENSE,
        /* 11 */ ACT_FLY,
        /* 12 */ ACT_FLY_ATTACK,
        /* 13 */ ACT_RAIL,
        /* 14 */ ACT_BACK_RAIL,
        /* 15 */ ACT_ELECTRIC,
        /* 16 */ ACT_SWITCH,
        /* 17 */ ACT_FIRE,
        /* 18 */ ACT_RIVER,
    };

    u8 getTagNo() { return mTagNo; }

    void setTagPos(cXyz& i_position) { mTagPos = i_position; }

    void setTagPosP() { mTagPosP = &mTagPos; }

    /* 80808184 */ BOOL checkBck(char const*, int);
    /* 808081E0 */ void bckSet(int, u8, f32, f32);
    /* 80808328 */ void bckSetFly(int, u8, f32, f32);
    /* 808083CC */ int draw();
    /* 80808768 */ void setDigEffect();
    /* 80808884 */ void setElecEffect1();
    /* 808089DC */ void setElecEffect2();
    /* 80808B3C */ void setFireEffect();
    /* 80808E34 */ bool checkWallCrash();
    /* 80809000 */ void checkWolfBark();
    /* 80809228 */ void checkSurpriseLock();
    /* 8080963C */ void checkRailSurprise();
    /* 808096EC */ void checkSurpriseNear();
    /* 80809D6C */ void setNormalCc();
    /* 80809D84 */ void setAppear();
    /* 80809DA8 */ void setMoveSound(int);
    /* 80809EF0 */ void setTurnSound();
    /* 80809F9C */ void setActionMode(int);
    /* 80809FC4 */ void executeWait();
    /* 8080A57C */ void executeMove();
    /* 8080ACB4 */ void executeEscape();
    /* 8080B444 */ void executeDown();
    /* 8080BB7C */ void damage_check();
    /* 8080BCFC */ void executeWind();
    /* 8080C05C */ void getSurpriseType();
    /* 8080C1FC */ void setSurpriseAway();
    /* 8080C24C */ void setGoHomeType();
    /* 8080C374 */ void executeSurprise();
    /* 8080CEE0 */ void executeBack();
    /* 8080CFC8 */ void executeFall();
    /* 8080D2C8 */ void executeAttack();
    /* 8080D990 */ void checkAttackEnd();
    /* 8080DB58 */ void setAttackMotion();
    /* 8080DC5C */ void executeAttackWall();
    /* 8080E26C */ void executeDefense();
    /* 8080E49C */ void checkFlyTerritory();
    /* 8080E630 */ void initFly();
    /* 8080E6A0 */ void executeFly();
    /* 8080F8C8 */ void setInclination();
    /* 8080F92C */ void executeFlyAttack();
    /* 80810084 */ void setNextPathPoint();
    /* 8081013C */ void checkRailDig();
    /* 8081030C */ void executeRail();
    /* 80810690 */ void executeBackRail();
    /* 80810DF8 */ void checkElectricStart();
    /* 80810E64 */ void executeElectric();
    /* 8081105C */ void executeSwitch();
    /* 80811740 */ void initFireFly(int);
    /* 80811838 */ void executeFire();
    /* 808120B0 */ void setRiverAttention();
    /* 808123C4 */ void setLockByCargo();
    /* 808123D0 */ void executeRiver();
    /* 80812FCC */ void checkFrinedSamePos();
    /* 8081300C */ void action();
    /* 80813528 */ void mtx_set();
    /* 808135B0 */ void cc_set();
    /* 808138AC */ int execute();
    /* 80813A38 */ int _delete();
    /* 80813AF0 */ int CreateHeap();
    /* 80813EA4 */ void checkBeforeBg(s16);
    /* 808143A0 */ void checkBeforeGround();
    /* 808144D8 */ void checkInitialWall();
    /* 80814758 */ void checkWall();
    /* 80814AF0 */ void setHideType();
    /* 80814BA4 */ int create();

    void setFriendFlag(u8 i_flag) { mFriendFlag |= i_flag; }
    u8 getFriendFlag() { return mFriendFlag; }

    /* 0x5AC */ request_of_phase_process_class mPhase;
    /* 0x5B4 */ mDoExt_McaMorfSO* field_0x5b4;
    /* 0x5B8 */ mDoExt_brkAnm* field_0x5b8;
    /* 0x5BC */ Z2CreatureEnemy field_0x5bc;
    /* 0x660 */ u8 field_0x660[0x664 - 0x660];
    /* 0x664 */ fopAc_ac_c* field_0x664;
    /* 0x668 */ csXyz field_0x668;
    /* 0x66E */ u8 field_0x66E[0x670 - 0x66E];
    /* 0x670 */ cXyz field_0x670;
    /* 0x67C */ cXyz field_0x67c;
    /* 0x688 */ f32 field_0x688;
    /* 0x68C */ f32 field_0x68c;
    /* 0x690 */ int mAction;
    /* 0x694 */ int mLastAction;
    /* 0x698 */ int mMode;
    /* 0x69C */ u32 field_0x69c;
    /* 0x6A0 */ u8 mType;
    /* 0x6A1 */ u8 field_0x6a1;
    /* 0x6A2 */ u8 mSwitchBit;
    /* 0x6A3 */ u8 field_0x6a3;
    /* 0x6A4 */ u8 mIsHide;
    /* 0x6A5 */ u8 field_0x6a5;
    /* 0x6A6 */ u8 field_0x6a6;
    /* 0x6A7 */ u8 field_0x6a7;
    /* 0x6A8 */ u8 field_0x6a8;
    /* 0x6A9 */ u8 field_0x6a9;
    /* 0x6AA */ u8 mFriendFlag;
    /* 0x6AB */ u8 field_0x6AB[0x6AC - 0x6AB];
    /* 0x6AC */ dPath* mpPath;
    /* 0x6B0 */ dPath* field_0x6b0;
    /* 0x6B4 */ s8 field_0x6b4;
    /* 0x6B5 */ u8 field_0x6B5[0x6B8 - 0x6B5];
    /* 0x6B8 */ cXyz mTagPos;
    /* 0x6C4 */ cXyz* mTagPosP;
    /* 0x6C8 */ u8 mTagNo;
    /* 0x6C9 */ u8 field_0x6c9;
    /* 0x6CA */ u8 mFlyType;
    /* 0x6CB */ u8 field_0x6cb;
    /* 0x6CC */ u8 field_0x6cc;
    /* 0x6CD */ u8 field_0x6CD[0x6CF - 0x6CD];
    /* 0x6CF */ u8 field_0x6cf;
    /* 0x6D0 */ cXyz* field_0x6d0;
    /* 0x6D4 */ f32 field_0x6d4;
    /* 0x6D8 */ f32 mDistToPlayer;
    /* 0x6DC */ f32 field_0x6dc;
    /* 0x6E0 */ f32 field_0x6e0;
    /* 0x6E4 */ s16 field_0x6e4;
    /* 0x6E6 */ s16 field_0x6e6;
    /* 0x6E8 */ s16 field_0x6e8;
    /* 0x6EA */ s16 mAngleToPlayer;
    /* 0x6EC */ f32 field_0x6ec;
    /* 0x6F0 */ s16 field_0x6f0;
    /* 0x6F2 */ s16 field_0x6f2;
    /* 0x6F4 */ s16 field_0x6f4;
    /* 0x6F6 */ s16 field_0x6f6;
    /* 0x6F8 */ s16 field_0x6f8;
    /* 0x6FA */ s16 field_0x6fa;
    /* 0x6FC */ s16 field_0x6fc;
    /* 0x6FE */ s16 field_0x6fe;
    /* 0x700 */ s16 field_0x700;
    /* 0x702 */ u8 field_0x702[0x704 - 0x702];
    /* 0x704 */ int field_0x704;
    /* 0x708 */ s16 field_0x708;
    /* 0x70A */ s16 field_0x70a;
    /* 0x70C */ s16 field_0x70c;
    /* 0x70E */ s16 field_0x70e;
    /* 0x710 */ s16 field_0x710;
    /* 0x712 */ u8 field_0x712[0x714 - 0x712];
    /* 0x714 */ int field_0x714;
    /* 0x718 */ int field_0x718;
    /* 0x71C */ u8 field_0x71c;
    /* 0x71D */ u8 field_0x71d;
    /* 0x71E */ u8 field_0x71E[0x720 - 0x71E];
    /* 0x720 */ dBgS_AcchCir field_0x720;
    /* 0x760 */ dBgS_ObjAcch field_0x760;
    /* 0x938 */ dCcD_Stts field_0x938;
    /* 0x974 */ dCcD_Sph mSphCc;
    /* 0xAAC */ dCcU_AtInfo mAtInfo;
    /* 0xAD0 */ u32 field_0xad0;
    /* 0xAD4 */ u32 field_0xad4;
    /* 0xAD8 */ u32 field_0xad8;
    /* 0xADC */ u32 field_0xadc;
    /* 0xAE0 */ u32 field_0xae0;
    /* 0xAE4 */ u32 field_0xae4;
    /* 0xAE8 */ u32 field_0xae8[3];
    /* 0xAF4 */ u8 field_0xaf4;
};

#endif /* D_A_E_YM_H */
