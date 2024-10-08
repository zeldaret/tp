#ifndef D_A_NPC_INS_H
#define D_A_NPC_INS_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpcIns_c
 * @brief Agitha
 *
 * @details
 *
 */
class daNpcIns_c : public fopAc_ac_c {
public:
    /* 80A0E24C */ daNpcIns_c();
    /* 80A0E460 */ ~daNpcIns_c();
    /* 80A0E660 */ void Create();
    /* 80A0EA30 */ void CreateHeap();
    /* 80A0EF3C */ void Delete();
    /* 80A0EF70 */ void Execute();
    /* 80A0EF94 */ void Draw();
    /* 80A0F0BC */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 80A0F28C */ void createHeapCallBack(fopAc_ac_c*);
    /* 80A0F2AC */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80A0F2F8 */ void setExpressionAnm(int, bool);
    /* 80A0F538 */ void setExpressionBtp(int);
    /* 80A0F618 */ void setMotionAnm(int, f32);
    /* 80A0F78C */ void reset();
    /* 80A0F984 */ void waitShop(void*);
    /* 80A0FF40 */ void setMotion(int, f32, int);
    /* 80A0FFC4 */ void setExpression(int, f32);
    /* 80A0FFF0 */ void waitPresent(void*);
    /* 80A103A0 */ void waitOutSide1(void*);
    /* 80A10950 */ void waitOutSide2(void*);
    /* 80A10CD8 */ void goHome(void*);
    /* 80A11378 */ void talk(void*);
    /* 80A11A7C */ void demo(void*);
    /* 80A11BE8 */ void isInsectComplete();
    /* 80A11C50 */ void getInsectParamData(int);
    /* 80A11D44 */ void setWaitAction();
    /* 80A11F84 */ void setPath(int);
    /* 80A1211C */ void checkPoint(cXyz&, f32);
    /* 80A122D0 */ void setNextPoint();
    /* 80A12480 */ void getTargetPoint(int, Vec*);
    /* 80A124D0 */ void pathMoveF();
    /* 80A12618 */ void setParam();
    /* 80A126D4 */ void main();
    /* 80A12A10 */ void playMotion();
    /* 80A12DC8 */ void ctrlBtk();
    /* 80A12EA4 */ void setAttnPos();
    /* 80A131AC */ void lookat();
    /* 80A1339C */ void setMtx();
    /* 80A13460 */ bool drawDbgInfo();

    static u8 mEvtSeqList[12];

private:
    /* 0x568 */ u8 field_0x568[0xe24 - 0x568];
};

STATIC_ASSERT(sizeof(daNpcIns_c) == 0xe24);

class daNpcIns_Param_c {
public:
    /* 80A13D40 */ ~daNpcIns_Param_c();

    static u8 const m[112];
};


#endif /* D_A_NPC_INS_H */
