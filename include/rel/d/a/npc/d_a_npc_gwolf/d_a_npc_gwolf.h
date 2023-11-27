#ifndef D_A_NPC_GWOLF_H
#define D_A_NPC_GWOLF_H

#include "f_op/f_op_actor_mng.h"
#include "d/a/d_a_npc.h"

class daNpc_GWolf_c : public daNpcF_c {
public:
    /* 809F30AC */ daNpc_GWolf_c();
    /* 809F34C0 */ void create();
    /* 809F37C0 */ void CreateHeap();
    /* 809F3BD8 */ void Delete();
    /* 809F3C0C */ void Execute();
    /* 809F3C2C */ void Draw();
    /* 809F3CBC */ void draw(int, int, f32, GXColorS10*, int);
    /* 809F3FB8 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 809F41EC */ void createHeapCallBack(fopAc_ac_c*);
    /* 809F420C */ void ctrlJointCallBack(J3DJoint*, int);
    /* 809F4E38 */ void getTypeFromParam();
    /* 809F4E84 */ void getModeFromParam();
    /* 809F4F00 */ void isDelete();
    /* 809F4FF4 */ void reset();
    /* 809F520C */ void playMotion();
    /* 809F55D0 */ void chkAction(int (daNpc_GWolf_c::*)(void*));
    /* 809F55FC */ void setAction(int (daNpc_GWolf_c::*)(void*));
    /* 809F56A4 */ void selectAction();
    /* 809F5770 */ void doNormalAction(int);
    /* 809F5884 */ void doEvent();
    /* 809F5B60 */ void setLookMode(int);
    /* 809F5B84 */ void lookat();
    /* 809F5E0C */ void ECut_attackWarp(int);
    /* 809F6548 */ void ECut_attackWarpHorse(int);
    /* 809F6BFC */ void ECut_howlingSessionA(int);
    /* 809F70A8 */ void meetGWolfSkip();
    /* 809F70EC */ void ECut_meetGWolf(int);
    /* 809F71E0 */ void wait(void*);
    /* 809F75C0 */ void waitHowling(void*);
    /* 809F775C */ void waitBrave(void*);
    /* 809F77E4 */ void talk(void*);
    /* 809F797C */ void test(void*);
    /* 809F7A30 */ void getGroundSlope(dBgS_ObjAcch&, s16);

    /* 809F32C0 */ ~daNpc_GWolf_c();
    /* 809F4258 */ void setParam();
    /* 809F4390 */ BOOL main();
    /* 809F4558 */ BOOL ctrlBtk();
    /* 809F4638 */ void adjustShapeAngle();
    /* 809F4698 */ void setAttnPos();
    /* 809F4BB0 */ bool setExpressionAnm(int, bool);
    /* 809F4BB8 */ void setExpression(int, f32);
    /* 809F4BBC */ void setMotionAnm(int, f32);
    /* 809F4DE8 */ void setMotion(int, f32, int);
    /* 809F4E2C */ BOOL drawDbgInfo();
    /* 809F4E34 */ void drawOtherMdls();

    void setHowlingEndFlag() { field_0xe1c = 2; }
    void setHowlingFlag() { field_0xe1c = 1; }

    static void* mEvtCutNameList[5];
    static u8 mEvtCutList[60];

    /* 0xB48 */ u8 field_0xb48[0xE1C - 0xB48];
    /* 0xE1C */ u8 field_0xe1c;
};

#endif /* D_A_NPC_GWOLF_H */
