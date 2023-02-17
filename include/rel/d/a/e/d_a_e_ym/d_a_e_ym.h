#ifndef D_A_E_YM_H
#define D_A_E_YM_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daE_YM_c : public fopEn_enemy_c {
public:
    u8 getTagNo() {
        return mTagNo;
    }

    void setTagPos(cXyz& i_position) {
        mTagPos = i_position;
    }

    void setTagPosP() {
        mTagPosP = &mTagPos;
    }

    /* 80808184 */ void checkBck(char const*, int);
    /* 808081E0 */ void bckSet(int, u8, f32, f32);
    /* 80808328 */ void bckSetFly(int, u8, f32, f32);
    /* 808083CC */ void draw();
    /* 80808768 */ void setDigEffect();
    /* 80808884 */ void setElecEffect1();
    /* 808089DC */ void setElecEffect2();
    /* 80808B3C */ void setFireEffect();
    /* 80808E34 */ void checkWallCrash();
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
    /* 808138AC */ void execute();
    /* 80813A38 */ void _delete();
    /* 80813AF0 */ void CreateHeap();
    /* 80813EA4 */ void checkBeforeBg(s16);
    /* 808143A0 */ void checkBeforeGround();
    /* 808144D8 */ void checkInitialWall();
    /* 80814758 */ void checkWall();
    /* 80814AF0 */ void setHideType();
    /* 80814BA4 */ void create();

    /* 0x5AC */ u8 field_0x568[268];
    /* 0x6B8 */ cXyz mTagPos;
    /* 0x6C4 */ cXyz* mTagPosP;
    /* 0x6C8 */ u8 mTagNo;
};

#endif /* D_A_E_YM_H */
