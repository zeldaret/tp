#ifndef D_A_NPC_SHOE_H
#define D_A_NPC_SHOE_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpcShoe_c
 * @brief Soal
 *
 * @details
 *
 */
class daNpcShoe_c : public daNpcF_c {
public:
    typedef bool (daNpcShoe_c::*actionFunc)(void*);

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
    /* 80AE895C */ int setAction(bool (daNpcShoe_c::*)(void*));
    /* 80AE8A04 */ void wait(void*);
    /* 80AE8E24 */ void fear(void*);
    /* 80AE8ED4 */ void talk(void*);
    /* 80AE9094 */ void demo(void*);
    /* 80AE92E8 */ void setParam();
    /* 80AE93A0 */ BOOL main();
    /* 80AE9624 */ void setAttnPos();
    /* 80AE9820 */ void lookat();
    /* 80AE9A00 */ bool setMotionAnm(int, f32);
    /* 80AE9AD0 */ BOOL drawDbgInfo();
    /* 80AEA340 */ void adjustShapeAngle();

    static u8 mEvtSeqList[12];

private:
    /* 0xB48 */ J3DModel* mModel1;
    /* 0xB4C */ J3DModel* mModel2;
    /* 0xB50 */ Z2CreatureCitizen mCreature;
    /* 0xBF4 */ u8 field_0xbf4[0xbf8 - 0xbf4];
    /* 0xBF8 */ daNpcF_Lookat_c mLookat;
    /* 0xC94 */ daNpcF_ActorMngr_c mActorMngr;
    /* 0xC9C */ u8 field_0xc9c[0xca0 - 0xc9c];
    /* 0xCA0 */ dCcD_Cyl mCcCyl;
    /* 0xDDC */ actionFunc field_0xddc;
    /* 0xDE8 */ request_of_phase_process_class mPhases[3];
    /* 0xE00 */ u32 field_0xe00;
    /* 0xE04 */ u8 field_0xe04[0xe0c - 0xe04];
    /* 0xE0C */ u32 field_0xe0c;
    /* 0xE10 */ u16 field_0xe10;
    /* 0xE12 */ u16 field_0xe12;
    /* 0xE14 */ u16 field_0xe14;
    /* 0xE16 */ u16 field_0xe16;
    /* 0xE18 */ u16 mMode;
    /* 0xE1A */ u8 field_0xe1a;
    /* 0xE1B */ u8 field_0xe1b;
};

STATIC_ASSERT(sizeof(daNpcShoe_c) == 0xe1c);

class daNpcShoe_Param_c {
public:
    /* 80AEA344 */ ~daNpcShoe_Param_c();

    static u8 const m[108];
};


#endif /* D_A_NPC_SHOE_H */
