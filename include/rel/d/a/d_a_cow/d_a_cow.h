#ifndef D_A_COW_H
#define D_A_COW_H

#include "f_op/f_op_actor_mng.h"

class daCow_c : public fopAc_ac_c {
public:
    /* 806585CC */ void calcRunAnime(int);
    /* 80658730 */ void setBck(int, u8, f32, f32);
    /* 806587D4 */ void checkBck(int);
    /* 80658830 */ void setEffect();
    /* 80658AA4 */ void isChaseCowGame();
    /* 80658B10 */ void setCarryStatus();
    /* 80658C18 */ void setActetcStatus();
    /* 80658C78 */ void checkNadeNadeFinish();
    /* 80658CA4 */ void checkNadeNade();
    /* 80658CD0 */ void setSeSnort();
    /* 80658D3C */ void setRushVibration(int);
    /* 80658DB8 */ void checkThrow();
    /* 80658E98 */ void setBodyAngle(s16);
    /* 80658F94 */ void setBodyAngle2(s16);
    /* 806590E8 */ void checkProcess(void (daCow_c::*)());
    /* 80659114 */ void setProcess(void (daCow_c::*)(), int);
    /* 806591BC */ void damage_check();
    /* 8065945C */ void setEnterCow20();
    /* 80659540 */ void setEnterCow10();
    /* 80659630 */ void setGroundAngle();
    /* 80659970 */ void checkRun();
    /* 806599C0 */ void checkNearCowRun();
    /* 80659ADC */ void action_wait();
    /* 8065A0E8 */ void action_eat();
    /* 8065A594 */ void action_moo();
    /* 8065A8A4 */ void action_shake();
    /* 8065ACC8 */ void checkNearWolf();
    /* 8065AD2C */ void checkPlayerWait();
    /* 8065ADB0 */ void checkPlayerSurprise();
    /* 8065AE88 */ void checkPlayerPos();
    /* 8065B034 */ void checkBeforeBg();
    /* 8065B760 */ void checkOutOfGate(cXyz);
    /* 8065B8A8 */ void getCowshedAngle();
    /* 8065B8D8 */ void getCowshedDist();
    /* 8065BA30 */ void checkCowIn(f32, f32);
    /* 8065BB34 */ void checkCowInOwn(int);
    /* 8065BC68 */ void action_run();
    /* 8065C32C */ void checkCurringPen();
    /* 8065C508 */ void setCowInCage();
    /* 8065C680 */ void setEnterCount();
    /* 8065C70C */ void action_enter();
    /* 8065CFBC */ void isAngry();
    /* 8065D03C */ void isGuardFad();
    /* 8065D0B8 */ void setAngryHit();
    /* 8065D17C */ void checkBeforeBgAngry(s16);
    /* 8065D230 */ void setRedTev();
    /* 8065D29C */ void setAngryTurn();
    /* 8065D2F0 */ void action_angry();
    /* 8065DC08 */ void calcCatchPos(f32, int);
    /* 8065DE70 */ void executeCrazyWait();
    /* 8065DF40 */ void executeCrazyDash();
    /* 8065E6BC */ void initCrazyBeforeCatch(int);
    /* 8065E6E8 */ void executeCrazyBeforeCatch();
    /* 8065E7D0 */ void initCrazyCatch(int);
    /* 8065E888 */ void executeCrazyCatch();
    /* 8065EAF4 */ void initCrazyThrow(int);
    /* 8065EBF0 */ void executeCrazyThrow();
    /* 8065F088 */ void initCrazyAttack(int);
    /* 8065F144 */ void executeCrazyAttack();
    /* 8065F308 */ void initCrazyAway(int);
    /* 8065F37C */ void executeCrazyAway();
    /* 8065F6E0 */ void executeCrazyEnd();
    /* 8065F744 */ void initCrazyBack(int);
    /* 8065F7DC */ void executeCrazyBack();
    /* 8065FE50 */ void action_crazy();
    /* 8066010C */ void executeCrazyBack2();
    /* 80660544 */ void action_thrown();
    /* 806607B8 */ void checkWolfBusters();
    /* 806608F0 */ void action_wolf();
    /* 806612DC */ void action_damage();
    /* 806613EC */ void action();
    /* 80661580 */ void setMtx();
    /* 806615EC */ void setAttnPos();
    /* 80661720 */ void setCollisions();
    /* 80661940 */ void Execute();
    /* 80661AF0 */ void CreateHeap();
    /* 80661D24 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80661D44 */ void initialize();
    /* 80662228 */ void create();
    /* 80662710 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 80662920 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 8066296C */ void Draw();
    /* 80662BE4 */ void Delete();
    /* 80662D70 */ void getShapeAngle();

    void setNaderu() { field_0x568 |= 0x80; }

    /* 0x568 */ u16 field_0x568;
};

#endif /* D_A_COW_H */
