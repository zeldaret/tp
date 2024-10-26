#ifndef D_A_NPC_GRM_H
#define D_A_NPC_GRM_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_grM_c
 * @brief Goron Adult (Shopkeeper)
 *
 * @details
 *
 */
class daNpc_grM_c : public fopAc_ac_c {
public:
    /* 809D406C */ ~daNpc_grM_c();
    /* 809D4194 */ void create();
    /* 809D441C */ void CreateHeap();
    /* 809D45C4 */ void Delete();
    /* 809D45F8 */ void Execute();
    /* 809D46D4 */ void Draw();
    /* 809D4768 */ void createHeapCallBack(fopAc_ac_c*);
    /* 809D4788 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 809D47E0 */ bool getType();
    /* 809D47E8 */ void getFlowNodeNo();
    /* 809D4804 */ void getMaxNumItem();
    /* 809D4810 */ void isDelete();
    /* 809D4820 */ void reset();
    /* 809D4944 */ void afterJntAnm(int);
    /* 809D49D0 */ void setParam();
    /* 809D4B24 */ void setAfterTalkMotion();
    /* 809D4BB8 */ void srchActors();
    /* 809D4BBC */ void evtProc();
    /* 809D4E2C */ void evtTalk();
    /* 809D4FD0 */ void evtCutProc();
    /* 809D5098 */ void action();
    /* 809D51F4 */ void beforeMove();
    /* 809D526C */ void setAttnPos();
    /* 809D54C8 */ void setCollision();
    /* 809D55F8 */ bool drawDbgInfo();
    /* 809D5600 */ void drawOtherMdl();
    /* 809D5660 */ void selectAction();
    /* 809D56A8 */ void chkAction(int (daNpc_grM_c::*)(void*));
    /* 809D56D4 */ void setAction(int (daNpc_grM_c::*)(void*));
    /* 809D577C */ void cutTalkSpa(int);
    /* 809D58F4 */ void tend(void*);
    /* 809D5AAC */ void talk(void*);
    /* 809D5C30 */ void shop(void*);
    /* 809D5E20 */ daNpc_grM_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                               daNpcT_evtData_c const*, char**);
    /* 809D5F98 */ s32 getEyeballMaterialNo();
    /* 809D5FA0 */ s32 getHeadJointNo();
    /* 809D5FA8 */ s32 getNeckJointNo();
    /* 809D5FB0 */ bool getBackboneJointNo();
    /* 809D5FB8 */ void checkChangeJoint(int);
    /* 809D5FC8 */ void checkRemoveJoint(int);

    static void* mCutNameList[2];
    static u8 mCutList[24];

private:
    /* 0x568 */ u8 field_0x568[0x10e4 - 0x568];
};

STATIC_ASSERT(sizeof(daNpc_grM_c) == 0x10e4);

class daNpc_grM_Param_c {
public:
    /* 809D5FD8 */ ~daNpc_grM_Param_c();

    static u8 const m[140];
};


#endif /* D_A_NPC_GRM_H */
