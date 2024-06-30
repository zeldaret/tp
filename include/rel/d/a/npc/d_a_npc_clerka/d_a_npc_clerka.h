#ifndef D_A_NPC_CLERKA_H
#define D_A_NPC_CLERKA_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_clerkA_c
 * @brief Chudley
 *
 * @details
 *
 */
class daNpc_clerkA_c : public fopAc_ac_c {
public:
    /* 8099252C */ ~daNpc_clerkA_c();
    /* 8099266C */ void create();
    /* 80992914 */ void CreateHeap();
    /* 80992D50 */ void Delete();
    /* 80992D84 */ void Execute();
    /* 80992E5C */ void Draw();
    /* 80992EF0 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80992F10 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80992F68 */ void getType();
    /* 80992F88 */ void isDelete();
    /* 80992FB8 */ void reset();
    /* 809930EC */ void afterJntAnm(int);
    /* 80993170 */ void setParam();
    /* 809932A4 */ void setAfterTalkMotion();
    /* 80993330 */ void srchActors();
    /* 8099338C */ void evtTalk();
    /* 80993568 */ void evtCutProc();
    /* 80993630 */ void action();
    /* 8099371C */ void beforeMove();
    /* 80993794 */ void setAttnPos();
    /* 80993A40 */ void setCollision();
    /* 80993B74 */ bool drawDbgInfo();
    /* 80993B7C */ void drawOtherMdl();
    /* 80993BDC */ void selectAction();
    /* 80993C58 */ void chkAction(int (daNpc_clerkA_c::*)(void*));
    /* 80993C84 */ void setAction(int (daNpc_clerkA_c::*)(void*));
    /* 80993D2C */ void wait(void*);
    /* 80993F84 */ void tend(void*);
    /* 809941B8 */ void talk(void*);
    /* 809943B0 */ void shop(void*);
    /* 809955C8 */ daNpc_clerkA_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                                  daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                  daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                  daNpcT_evtData_c const*, char**);
    /* 80995694 */ s32 getEyeballMaterialNo();
    /* 8099569C */ s32 getHeadJointNo();
    /* 809956A4 */ s32 getNeckJointNo();
    /* 809956AC */ bool getBackboneJointNo();
    /* 809956B4 */ void checkChangeJoint(int);
    /* 809956C4 */ void checkRemoveJoint(int);

    static void* mCutNameList;
    static u8 mCutList[12];

private:
    /* 0x568 */ u8 field_0x568[0x10f4 - 0x568];
};

STATIC_ASSERT(sizeof(daNpc_clerkA_c) == 0x10f4);

class daNpc_clerkA_Param_c {
public:
    /* 809956D4 */ ~daNpc_clerkA_Param_c();

    static u8 const m[144];
};


#endif /* D_A_NPC_CLERKA_H */
