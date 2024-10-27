#ifndef D_A_NPC_ASHB_H
#define D_A_NPC_ASHB_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpcAshB_c
 * @brief Ashei (Yeti Garb)
 *
 * @details
 *
 */
class daNpcAshB_c : public fopAc_ac_c {
public:
    /* 8095DE4C */ daNpcAshB_c();
    /* 8095E060 */ ~daNpcAshB_c();
    /* 8095E224 */ void Create();
    /* 8095E4A0 */ void CreateHeap();
    /* 8095E914 */ void Delete();
    /* 8095E948 */ void Execute();
    /* 8095E96C */ void Draw();
    /* 8095E9C8 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 8095EB94 */ void createHeapCallBack(fopAc_ac_c*);
    /* 8095EBB4 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 8095EC00 */ void setExpressionAnm(int, bool);
    /* 8095EE00 */ void setExpressionBtp(int);
    /* 8095EEE0 */ bool setMotionAnm(int, f32);
    /* 8095F0A4 */ void reset();
    /* 8095F21C */ void setAction(bool (daNpcAshB_c::*)(void*));
    /* 8095F2C4 */ void wait(void*);
    /* 8095FC70 */ void setMotion(int, f32, int);
    /* 8095FD34 */ void setExpression(int, f32);
    /* 8095FD9C */ void talk(void*);
    /* 809602E0 */ void demo(void*);
    /* 809604C8 */ void EvCut_Appear(int);
    /* 80960A60 */ void setParam();
    /* 80960AE8 */ void main();
    /* 80960D64 */ void playMotion();
    /* 80961188 */ void ctrlBtk();
    /* 80961264 */ void setAttnPos();
    /* 80961574 */ void lookat();
    /* 80961770 */ void drawOtherMdls();
    /* 809617F8 */ bool drawDbgInfo();

    static u8 mEvtSeqList[24];

private:
    /* 0x568 */ u8 field_0x568[0xdf0 - 0x568];
};

STATIC_ASSERT(sizeof(daNpcAshB_c) == 0xdf0);

class daNpcAshB_Param_c {
public:
    /* 80962078 */ ~daNpcAshB_Param_c();

    static u8 const m[112];
};


#endif /* D_A_NPC_ASHB_H */
