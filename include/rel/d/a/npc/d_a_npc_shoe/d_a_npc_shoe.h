#ifndef D_A_NPC_SHOE_H
#define D_A_NPC_SHOE_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpcShoe_c
 * @brief Soal
 *
 * @details
 *
 */
class daNpcShoe_c : public fopAc_ac_c {
public:
    /* 80AE794C */ daNpcShoe_c();
    /* 80AE7B60 */ ~daNpcShoe_c();
    /* 80AE7D48 */ void Create();
    /* 80AE7FD8 */ void CreateHeap();
    /* 80AE81E8 */ void Delete();
    /* 80AE821C */ void Execute();
    /* 80AE8308 */ void Draw();
    /* 80AE840C */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 80AE8598 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80AE85B8 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80AE8604 */ void setMotion(int, f32, int);
    /* 80AE864C */ void reset();
    /* 80AE895C */ void setAction(bool (daNpcShoe_c::*)(void*));
    /* 80AE8A04 */ void wait(void*);
    /* 80AE8E24 */ void fear(void*);
    /* 80AE8ED4 */ void talk(void*);
    /* 80AE9094 */ void demo(void*);
    /* 80AE92E8 */ void setParam();
    /* 80AE93A0 */ void main();
    /* 80AE9624 */ void setAttnPos();
    /* 80AE9820 */ void lookat();
    /* 80AE9A00 */ void setMotionAnm(int, f32);
    /* 80AE9AD0 */ bool drawDbgInfo();
    /* 80AEA340 */ void adjustShapeAngle();

    static u8 mEvtSeqList[12];

private:
    /* 0x568 */ u8 field_0x568[0xe1c - 0x568];
};

STATIC_ASSERT(sizeof(daNpcShoe_c) == 0xe1c);

class daNpcShoe_Param_c {
public:
    /* 80AEA344 */ ~daNpcShoe_Param_c();

    static u8 const m[108];
};


#endif /* D_A_NPC_SHOE_H */
