#ifndef D_A_NPC_SOLDIERA_H
#define D_A_NPC_SOLDIERA_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_SoldierA_c
 * @brief Soldier A (Castle Town?)
 *
 * @details
 *
 */
class daNpc_SoldierA_c : public fopAc_ac_c {
public:
    /* 80AEF58C */ daNpc_SoldierA_c();
    /* 80AEF7A0 */ ~daNpc_SoldierA_c();
    /* 80AEF9A0 */ void create();
    /* 80AEFC80 */ void CreateHeap();
    /* 80AEFE4C */ void Delete();
    /* 80AEFE80 */ void Execute();
    /* 80AEFEA0 */ void Draw();
    /* 80AEFF14 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 80AF0110 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80AF0130 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80AF017C */ void setParam();
    /* 80AF02B0 */ void main();
    /* 80AF0428 */ bool ctrlBtk();
    /* 80AF0430 */ void setAttnPos();
    /* 80AF0928 */ bool setMotionAnm(int, f32);
    /* 80AF0A38 */ void setMotion(int, f32, int);
    /* 80AF0A7C */ bool drawDbgInfo();
    /* 80AF0A84 */ void drawOtherMdls();
    /* 80AF0B30 */ void getTypeFromParam();
    /* 80AF0B7C */ void isDelete();
    /* 80AF0BB0 */ void reset();
    /* 80AF0D34 */ void playMotion();
    /* 80AF0F50 */ void chkAction(int (daNpc_SoldierA_c::*)(void*));
    /* 80AF0F7C */ void setAction(int (daNpc_SoldierA_c::*)(void*));
    /* 80AF1024 */ void selectAction();
    /* 80AF10A4 */ void doNormalAction(int);
    /* 80AF11B8 */ void doEvent();
    /* 80AF1488 */ void setLookMode(int);
    /* 80AF14AC */ void lookat();
    /* 80AF1734 */ void wait(void*);
    /* 80AF18B0 */ void talk(void*);
    /* 80AF1A48 */ void ECut_talkLake(int);
    /* 80AF1B8C */ void ECut_listenLake(int);
    /* 80AF1CA4 */ void test(void*);

    static void* mEvtCutNameList[3];
    static u8 mEvtCutList[36];

private:
    /* 0x568 */ u8 field_0x568[0xe20 - 0x568];
};

STATIC_ASSERT(sizeof(daNpc_SoldierA_c) == 0xe20);

class daNpc_SoldierA_Param_c {
public:
    /* 80AF267C */ ~daNpc_SoldierA_Param_c();

    static u8 const m[108];
};


#endif /* D_A_NPC_SOLDIERA_H */
