#ifndef D_A_NPC_GRR_H
#define D_A_NPC_GRR_H

#include "dolphin/types.h"
#include "d/a/d_a_npc.h"

class daNpc_grR_c : public fopAc_ac_c {
public:
    /* 809DF8CC */ daNpc_grR_c();
    /* 809DFAE0 */ ~daNpc_grR_c();
    /* 809DFCE0 */ void create();
    /* 809DFFB8 */ void CreateHeap();
    /* 809E03FC */ void Delete();
    /* 809E0430 */ void Execute();
    /* 809E0450 */ void Draw();
    /* 809E04E0 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 809E0714 */ void createHeapCallBack(fopAc_ac_c*);
    /* 809E0734 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 809E0780 */ void setParam();
    /* 809E08FC */ void main();
    /* 809E0A7C */ void ctrlBtk();
    /* 809E0B5C */ void setAttnPos();
    /* 809E105C */ void setExpressionAnm(int, bool);
    /* 809E1260 */ void setExpressionBtp(int);
    /* 809E138C */ void setExpression(int, f32);
    /* 809E13B8 */ void setMotionAnm(int, f32);
    /* 809E1548 */ void setMotion(int, f32, int);
    /* 809E158C */ bool drawDbgInfo();
    /* 809E1594 */ void drawOtherMdls();
    /* 809E1598 */ void getTypeFromParam();
    /* 809E15E4 */ void isDelete();
    /* 809E16CC */ void reset();
    /* 809E18A4 */ void playExpression();
    /* 809E1B28 */ void playMotion();
    /* 809E1F10 */ void chkAction(int (daNpc_grR_c::*)(void*));
    /* 809E1F3C */ void setAction(int (daNpc_grR_c::*)(void*));
    /* 809E1FE4 */ void selectAction();
    /* 809E2088 */ void doNormalAction(int);
    /* 809E219C */ void doEvent();
    /* 809E2480 */ void setLookMode(int);
    /* 809E24A4 */ void lookat();
    /* 809E272C */ void setExpressionTalkAfter();
    /* 809E27CC */ void wait(void*);
    /* 809E29B8 */ void waitMaro(void*);
    /* 809E2B48 */ void talk(void*);
    /* 809E2E84 */ void test(void*);
    /* 809E3868 */ void adjustShapeAngle();

    static void* mEvtCutNameList;
    static u8 mEvtCutList[12];

private:
    /* 0x568 */ u8 field_0x568[0xe20 - 0x568];
};
STATIC_ASSERT(sizeof(daNpc_grR_c) == 0xe20);

class daNpc_grR_Param_c {
public:
    /* 809E386C */ ~daNpc_grR_Param_c();

    static u8 const m[108];
};


#endif /* D_A_NPC_GRR_H */
