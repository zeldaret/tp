#ifndef D_A_KAGO_H
#define D_A_KAGO_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_path.h"

class daKago_c : public fopAc_ac_c {
public:
    /* 80849660 */ void getBckName(int);
    /* 808496F0 */ void setBck(int, u8, f32, f32);
    /* 80849798 */ void checkBck(int);
    /* 808497F8 */ void draw();
    /* 80849980 */ void executeBalloonMenu();
    /* 80849BA8 */ void checkGroundHeight(cXyz, f32*);
    /* 8084A070 */ void checkRoofHeight(cXyz);
    /* 8084A210 */ void checkMoveHeight();
    /* 8084A2A8 */ void checkSizeBg();
    /* 8084A6DC */ bool getBeforeGroundHeight(u8);
    /* 8084A6E4 */ void demo_skip(int);
    /* 8084AA64 */ void DemoSkipCallBack(void*, int);
    /* 8084AA98 */ void setActionMode(int, int);
    /* 8084AAAC */ void setMidnaTagPos();
    /* 8084AB40 */ void setMidnaRideOn();
    /* 8084AB8C */ void setPlayerRideOn();
    /* 8084ABC8 */ void setRideOff();
    /* 8084AC2C */ void searchNearPassPoint();
    /* 8084AE78 */ void setSceneChange(int);
    /* 8084AF40 */ void createBalloonScore();
    /* 8084AFB0 */ void startBalloonScore();
    /* 8084B024 */ void endBalloonScore();
    /* 8084B088 */ void checkNextPath(cXyz);
    /* 8084B108 */ void checkHeight();
    /* 8084B134 */ void checkYaguraPos(cXyz);
    /* 8084B1E0 */ void checkWallHitFall(int);
    /* 8084B56C */ void checkAttackStart();
    /* 8084B5DC */ void getValueY(f32);
    /* 8084B6F4 */ void getValueX(f32);
    /* 8084B718 */ void getValueAbsX(f32);
    /* 8084B744 */ void flySpeedCalcLockOn();
    /* 8084B96C */ void flySpeedCalc(s16, int);
    /* 8084C078 */ void checkFlySceneChange();
    /* 8084C178 */ void setFlyAway();
    /* 8084C204 */ void setFlyAnime();
    /* 8084C2CC */ void executeFly();
    /* 8084C8FC */ void executeStagger();
    /* 8084D108 */ void executeWait();
    /* 8084D354 */ void calcAttackMove(int);
    /* 8084D50C */ void executeAttack();
    /* 8084DA18 */ void calcCircleCamera(int);
    /* 8084DBFC */ void executeEvent();
    /* 8084DD18 */ void initPerchDemo();
    /* 8084E2D4 */ void executePerchDemo();
    /* 8084F09C */ void PerchDemoAwayForward();
    /* 8084FA58 */ void executePerch();
    /* 8084FAA8 */ void executeEvent2();
    /* 8084FB50 */ void initFirstDemo();
    /* 80850384 */ void executeFirstDemo();
    /* 808513E4 */ void executePerch2();
    /* 80851434 */ void executeLandingLakeHairia();
    /* 80851DEC */ void executeLandingBoartHouse();
    /* 808525B0 */ void executeLanding();
    /* 80852610 */ void moveDemoFly();
    /* 80852D90 */ void setFlyEffect();
    /* 80852F14 */ void setDashEffect();
    /* 808530A4 */ void setDamageEffect();
    /* 80853228 */ void setDashBlurEffect(int);
    /* 80853460 */ void setWallHitEffect(cXyz, int);
    /* 8085350C */ void setSibukiEffect();
    /* 8085366C */ void setDashSibukiEffect();
    /* 80853730 */ void setWaterFallEffect();
    /* 8085392C */ void setFlySound();
    /* 80853BCC */ void action();
    /* 80853EF0 */ void mtx_set();
    /* 80853FB0 */ void cc_set();
    /* 80854058 */ void execute();
    /* 80854190 */ void _delete();
    /* 80854220 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 808542DC */ void JointCallBack(J3DJoint*, int);
    /* 80854328 */ void CreateHeap();
    /* 808544D8 */ void create();

    void setEvent() {
        field_0x6e1 = 0;
        field_0x740 = 2;
        field_0x744 = 0;
    }

    void setKagoPath(u8 i_pathNo) {
        if (i_pathNo != 0xFF) {
            field_0x76c = dPath_GetRoomPath(i_pathNo, fopAcM_GetRoomNo(this));
        }
    }

    MtxP getLegR3Mtx() { return mLegR3Mtx; }

    /* 0x568 */ u8 field_0x568[0x620 - 0x568];
    /* 0x620 */ Mtx mLegR3Mtx;
    /* 0x650 */ u8 field_0x650[0x6E1 - 0x650];
    /* 0x6E1 */ u8 field_0x6e1;
    /* 0x6E2 */ u8 field_0x6E2[0x740 - 0x6E2];
    /* 0x740 */ int field_0x740;
    /* 0x744 */ int field_0x744;
    /* 0x748 */ u8 field_0x748[0x76C - 0x748];
    /* 0x76C */ dPath* field_0x76c;
};

#endif /* D_A_KAGO_H */
