#ifndef D_A_NPC_GRO_H
#define D_A_NPC_GRO_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_grO_c
 * @brief Gor Ebizo
 *
 * @details
 *
 */
class daNpc_grO_c : public fopAc_ac_c {
public:
    /* 809DA56C */ daNpc_grO_c();
    /* 809DA780 */ ~daNpc_grO_c();
    /* 809DA980 */ void create();
    /* 809DAC58 */ void CreateHeap();
    /* 809DB130 */ void Delete();
    /* 809DB164 */ void Execute();
    /* 809DB184 */ void Draw();
    /* 809DB214 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 809DB448 */ void createHeapCallBack(fopAc_ac_c*);
    /* 809DB468 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 809DB4B4 */ void setParam();
    /* 809DB5F4 */ void main();
    /* 809DB774 */ void ctrlBtk();
    /* 809DB854 */ void setAttnPos();
    /* 809DBD58 */ void setExpressionAnm(int, bool);
    /* 809DBFF4 */ void setExpressionBtp(int);
    /* 809DC118 */ void setExpression(int, f32);
    /* 809DC144 */ void setMotionAnm(int, f32);
    /* 809DC2E4 */ void setMotion(int, f32, int);
    /* 809DC328 */ bool drawDbgInfo();
    /* 809DC330 */ void drawOtherMdls();
    /* 809DC3DC */ void getTypeFromParam();
    /* 809DC43C */ void isDelete();
    /* 809DC4F4 */ void reset();
    /* 809DC67C */ void playExpression();
    /* 809DCA68 */ void playMotion();
    /* 809DCDA4 */ void chkAction(int (daNpc_grO_c::*)(void*));
    /* 809DCDD0 */ void setAction(int (daNpc_grO_c::*)(void*));
    /* 809DCE78 */ void selectAction();
    /* 809DCF44 */ void doNormalAction(int);
    /* 809DD070 */ void doEvent();
    /* 809DD3D8 */ void setLookMode(int);
    /* 809DD3FC */ void lookat();
    /* 809DD684 */ void setExpressionTalkAfter();
    /* 809DD758 */ void wait(void*);
    /* 809DD960 */ void bokinWait(void*);
    /* 809DDB68 */ void waitMaro(void*);
    /* 809DDCF8 */ void talk(void*);
    /* 809DE0D0 */ void ECut_bokinFinish(int);
    /* 809DE30C */ void cutPushOut(int);
    /* 809DE4EC */ void test(void*);
    /* 809DEF0C */ void adjustShapeAngle();

    static void* mEvtCutNameList[3];
    static u8 mEvtCutList[36];

private:
    /* 0x568 */ u8 field_0x568[0xe30 - 0x568];
};

STATIC_ASSERT(sizeof(daNpc_grO_c) == 0xe30);

class daNpc_grO_Param_c {
public:
    /* 809DEF10 */ ~daNpc_grO_Param_c();

    static u8 const m[108];
};


#endif /* D_A_NPC_GRO_H */
