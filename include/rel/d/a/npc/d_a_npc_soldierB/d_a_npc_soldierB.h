#ifndef D_A_NPC_SOLDIERB_H
#define D_A_NPC_SOLDIERB_H

#include "dolphin/types.h"
#include "d/a/d_a_npc.h"

class daNpc_SoldierB_c : public fopAc_ac_c {
public:
    /* 80AF2CAC */ daNpc_SoldierB_c();
    /* 80AF2EC0 */ ~daNpc_SoldierB_c();
    /* 80AF30C0 */ void create();
    /* 80AF33A0 */ void CreateHeap();
    /* 80AF356C */ void Delete();
    /* 80AF35A0 */ void Execute();
    /* 80AF35C0 */ void Draw();
    /* 80AF3634 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 80AF3830 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80AF3850 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80AF389C */ void setParam();
    /* 80AF39B8 */ void main();
    /* 80AF3B30 */ bool ctrlBtk();
    /* 80AF3B38 */ void setAttnPos();
    /* 80AF4030 */ void setMotionAnm(int, f32);
    /* 80AF4130 */ void setMotion(int, f32, int);
    /* 80AF4174 */ bool drawDbgInfo();
    /* 80AF417C */ void drawOtherMdls();
    /* 80AF4228 */ void getTypeFromParam();
    /* 80AF4248 */ void isDelete();
    /* 80AF426C */ void reset();
    /* 80AF43E4 */ void playMotion();
    /* 80AF4508 */ void chkAction(int (daNpc_SoldierB_c::*)(void*));
    /* 80AF4534 */ void setAction(int (daNpc_SoldierB_c::*)(void*));
    /* 80AF45DC */ void selectAction();
    /* 80AF465C */ void doNormalAction(int);
    /* 80AF4770 */ void doEvent();
    /* 80AF49E4 */ void setLookMode(int);
    /* 80AF4A08 */ void lookat();
    /* 80AF4CFC */ void wait(void*);
    /* 80AF4DBC */ void talk(void*);
    /* 80AF4F54 */ void ECut_listenLake(int);
    /* 80AF50AC */ void test(void*);

    static void* mEvtCutNameList[2];
    static u8 mEvtCutList[24];

private:
    /* 0x568 */ u8 field_0x568[0xe20 - 0x568];
};
STATIC_ASSERT(sizeof(daNpc_SoldierB_c) == 0xe20);

class daNpc_SoldierB_Param_c {
public:
    /* 80AF5A68 */ ~daNpc_SoldierB_Param_c();

    static u8 const m[108];
};


#endif /* D_A_NPC_SOLDIERB_H */
