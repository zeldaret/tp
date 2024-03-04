#ifndef D_A_NPC_WRESTLER_H
#define D_A_NPC_WRESTLER_H

#include "f_op/f_op_actor_mng.h"
#include "d/a/d_a_npc.h"

class daNpcWrestler_c : public daNpcF_c {
public:
    /* 80B2F28C */ daNpcWrestler_c();
    /* 80B2F688 */ void Create();
    /* 80B2F974 */ void CreateHeap();
    /* 80B2FDB0 */ void Delete();
    /* 80B2FDE4 */ void Execute();
    /* 80B2FE1C */ void Draw();
    /* 80B2FE84 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 80B30150 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80B30170 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80B301BC */ void checkStartUp();
    /* 80B308B0 */ void reset();
    /* 80B30AD8 */ void setAction(bool (daNpcWrestler_c::*)(void*));
    /* 80B30BEC */ void checkArenaInfo();
    /* 80B30CA4 */ void checkArenaSub(fopAc_ac_c*);
    /* 80B30D48 */ void setOnToArena(f32);
    /* 80B30F00 */ void wait(void*);
    /* 80B316F4 */ void talk(void*);
    /* 80B31EB0 */ void demo(void*);
    /* 80B32058 */ void gotoArena(void*);
    /* 80B32444 */ void gotoLiving(void*);
    /* 80B32850 */ void sumouReady(void*);
    /* 80B331CC */ void sumouWait(void*);
    /* 80B339EC */ void checkOutOfArenaP();
    /* 80B33B3C */ void setNextAction();
    /* 80B34654 */ void sumouPunchHit(void*);
    /* 80B34CD0 */ void sumouPunchChaseHit(void*);
    /* 80B35364 */ void sumouPunchMiss(void*);
    /* 80B35780 */ void checkOutOfArenaW();
    /* 80B358F0 */ void getJointPos(int);
    /* 80B35968 */ void sumouPunchDraw(void*);
    /* 80B3606C */ void sumouTackleHit(void*);
    /* 80B36908 */ void sumouTackleMiss(void*);
    /* 80B36C8C */ void sumouTackleDraw(void*);
    /* 80B37270 */ void sumouSideStep(void*);
    /* 80B378F4 */ void sumouLostBalance(void*);
    /* 80B37C30 */ void sumouPunchShock(void*);
    /* 80B37FB8 */ void sumouPunchChaseShock(void*);
    /* 80B38518 */ void sumouPunchStagger(void*);
    /* 80B389A4 */ void sumouTackleShock(void*);
    /* 80B38C90 */ void sumouTackleStagger(void*);
    /* 80B39334 */ void sumouTackleStaggerRelease(void*);
    /* 80B39554 */ void sumouTacklePush(void*);
    /* 80B39C18 */ void sumouTackleRelease(void*);
    /* 80B39F88 */ void demoSumouReady(void*);
    /* 80B3AE24 */ void demoSumouWin(void*);
    /* 80B3B4B4 */ void demoSumouLose(void*);
    /* 80B3BC84 */ void demoSumouWin2(void*);
    /* 80B3C278 */ void demoSumouLose2(void*);
    /* 80B3CA2C */ void demoSumouUnilateralWin(void*);
    /* 80B3D0C0 */ void demoTalkAfterLose(void*);
    /* 80B3D584 */ void EvCut_grDSEntry(int);
    /* 80B3DB50 */ void EvCut_grDSEntry2(int);
    /* 80B3DCE8 */ void EvCut_grDSEntry3_4(int);
    /* 80B3E0FC */ void EvCut_grDSEntry5(int);
    /* 80B3E584 */ void EvCut_grDSLose(int);
    /* 80B3EF10 */ void setWrestlerVoice();
    /* 80B3FCE8 */ void playMotion();
    /* 80B40B3C */ void lookat();

    /* 80B2F4A0 */ virtual ~daNpcWrestler_c();
    /* 80B3EAE4 */ virtual void setParam();
    /* 80B3EB94 */ virtual BOOL main();
    /* 80B404FC */ virtual BOOL ctrlBtk();
    /* 80B4166C */ virtual void adjustShapeAngle();
    /* 80B405E8 */ virtual void setAttnPos();
    /* 80B3023C */ virtual bool setExpressionAnm(int, bool);
    /* 80B30654 */ virtual bool setExpressionBtp(int);
    /* 80B316C8 */ virtual void setExpression(int, f32);
    /* 80B3074C */ virtual void setMotionAnm(int, f32);
    /* 80B31680 */ virtual void setMotion(int, f32, int);
    /* 80B40D1C */ virtual BOOL drawDbgInfo();
    /* 80B40D24 */ virtual void drawOtherMdls();

    int getWrestlerAction() { return mWrestlerAction; }
    u8 getType() { return subtype & 0x7F; }
    u8 getWrestlerType() { return getType(); }

    static u8 mEvtSeqList[84];

    /* 0xB48 */ u8 field_0xb48[0xE74 - 0xB48];
    /* 0xE74 */ int mWrestlerAction;
};

#endif /* D_A_NPC_WRESTLER_H */
