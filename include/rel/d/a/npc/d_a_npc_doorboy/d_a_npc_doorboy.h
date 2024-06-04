#ifndef D_A_NPC_DOORBOY_H
#define D_A_NPC_DOORBOY_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpcDoorBoy_c
 * @brief Door Boy (This isn't Soal?)
 *
 * @details
 *
 */
class daNpcDoorBoy_c : public fopAc_ac_c {
public:
    /* 809AAC8C */ daNpcDoorBoy_c();
    /* 809AAEA0 */ ~daNpcDoorBoy_c();
    /* 809AB088 */ void Create();
    /* 809AB320 */ void CreateHeap();
    /* 809AB4A4 */ void Delete();
    /* 809AB4D8 */ void Execute();
    /* 809AB4FC */ void Draw();
    /* 809AB578 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 809AB704 */ void createHeapCallBack(fopAc_ac_c*);
    /* 809AB724 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 809AB770 */ void setMotion(int, f32, int);
    /* 809AB7B8 */ void reset();
    /* 809AB984 */ void setAction(bool (daNpcDoorBoy_c::*)(void*));
    /* 809ABA2C */ void wait(void*);
    /* 809AC064 */ void fear(void*);
    /* 809AC114 */ void talk(void*);
    /* 809AC528 */ void demo(void*);
    /* 809AC6F4 */ void dummyTalk(void*);
    /* 809AC994 */ void setParam();
    /* 809ACA58 */ void main();
    /* 809ACC5C */ void setAttnPos();
    /* 809ACE18 */ void lookat();
    /* 809ACFF8 */ void setMotionAnm(int, f32);
    /* 809AD0C8 */ bool drawDbgInfo();
    /* 809AD938 */ void adjustShapeAngle();

    static u8 mEvtSeqList[12];

private:
    /* 0x568 */ u8 field_0x568[0xe08 - 0x568];
};
STATIC_ASSERT(sizeof(daNpcDoorBoy_c) == 0xe08);

class daNpcDoorBoy_Param_c {
public:
    /* 809AD93C */ ~daNpcDoorBoy_Param_c();

    static u8 const m[108];
};


#endif /* D_A_NPC_DOORBOY_H */
