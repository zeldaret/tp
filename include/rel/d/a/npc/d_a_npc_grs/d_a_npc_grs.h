#ifndef D_A_NPC_GRS_H
#define D_A_NPC_GRS_H

#include "dolphin/types.h"
#include "d/a/d_a_npc.h"

class daNpc_grS_c : public fopAc_ac_c {
public:
    /* 809E40CC */ daNpc_grS_c();
    /* 809E42E0 */ ~daNpc_grS_c();
    /* 809E44E0 */ void create();
    /* 809E47B4 */ void CreateHeap();
    /* 809E4C58 */ void Delete();
    /* 809E4C8C */ void Execute();
    /* 809E4CAC */ void Draw();
    /* 809E4D3C */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 809E4F70 */ void createHeapCallBack(fopAc_ac_c*);
    /* 809E4F90 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 809E4FDC */ void setParam();
    /* 809E510C */ void main();
    /* 809E528C */ void ctrlBtk();
    /* 809E536C */ void setAttnPos();
    /* 809E5874 */ void setExpressionAnm(int, bool);
    /* 809E5A08 */ void setExpressionBtp(int);
    /* 809E5B1C */ void setExpression(int, f32);
    /* 809E5B48 */ void setMotionAnm(int, f32);
    /* 809E5CB8 */ void setMotion(int, f32, int);
    /* 809E5CFC */ bool drawDbgInfo();
    /* 809E5D04 */ void drawOtherMdls();
    /* 809E5DB4 */ void getTypeFromParam();
    /* 809E5DD4 */ void isDelete();
    /* 809E5E58 */ void reset();
    /* 809E6000 */ void playExpression();
    /* 809E6164 */ void playMotion();
    /* 809E62F0 */ void chkAction(int (daNpc_grS_c::*)(void*));
    /* 809E631C */ void setAction(int (daNpc_grS_c::*)(void*));
    /* 809E63C4 */ void selectAction();
    /* 809E6444 */ void doNormalAction(int);
    /* 809E6570 */ void doEvent();
    /* 809E6854 */ void setLookMode(int);
    /* 809E6878 */ void lookat();
    /* 809E6B00 */ void setExpressionTalkAfter();
    /* 809E6B74 */ void cutPushOut(int);
    /* 809E6D54 */ void wait(void*);
    /* 809E6F5C */ void talk(void*);
    /* 809E721C */ void test(void*);
    /* 809E7300 */ void setPrtcl();
    /* 809E7D5C */ void adjustShapeAngle();

    static void* mEvtCutNameList[2];
    static u8 mEvtCutList[24];

private:
    /* 0x568 */ u8 field_0x568[0xe38 - 0x568];
};
STATIC_ASSERT(sizeof(daNpc_grS_c) == 0xe38);

class daNpc_grS_Param_c {
public:
    /* 809E7D60 */ ~daNpc_grS_Param_c();

    static u8 const m[108];
};


#endif /* D_A_NPC_GRS_H */
