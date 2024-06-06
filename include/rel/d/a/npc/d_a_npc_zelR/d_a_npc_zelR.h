#ifndef D_A_NPC_ZELR_H
#define D_A_NPC_ZELR_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_ZelR_c
 * @brief Zelda (Cloaked & Hooded)
 *
 * @details
 *
 */
class daNpc_ZelR_c : public fopAc_ac_c {
public:
    /* 80B6EE2C */ ~daNpc_ZelR_c();
    /* 80B6EF64 */ void create();
    /* 80B6F1F8 */ void CreateHeap();
    /* 80B6F664 */ void Delete();
    /* 80B6F698 */ void Execute();
    /* 80B6F6B8 */ void Draw();
    /* 80B6F77C */ void createHeapCallBack(fopAc_ac_c*);
    /* 80B6F79C */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80B6F7F4 */ void getType();
    /* 80B6F814 */ void getFlowNodeNo();
    /* 80B6F830 */ void getPath();
    /* 80B6F83C */ void isDelete();
    /* 80B6F894 */ void reset();
    /* 80B6FA10 */ void afterJntAnm(int);
    /* 80B6FA9C */ void ctrlBtk();
    /* 80B6FBA8 */ void setParam();
    /* 80B6FC9C */ void setAfterTalkMotion();
    /* 80B6FCFC */ void srchActors();
    /* 80B6FD00 */ void evtTalk();
    /* 80B6FE00 */ void evtCutProc();
    /* 80B6FEC8 */ void action();
    /* 80B70018 */ void beforeMove();
    /* 80B70090 */ void setAttnPos();
    /* 80B702B0 */ void setCollision();
    /* 80B703E0 */ bool drawDbgInfo();
    /* 80B703E8 */ void selectAction();
    /* 80B70430 */ void chkAction(int (daNpc_ZelR_c::*)(void*));
    /* 80B7045C */ void setAction(int (daNpc_ZelR_c::*)(void*));
    /* 80B70504 */ void wait(void*);
    /* 80B706B0 */ void talk(void*);
    /* 80B71974 */ daNpc_ZelR_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                daNpcT_evtData_c const*, char**);
    /* 80B71A34 */ s32 getEyeballRMaterialNo();
    /* 80B71A3C */ s32 getEyeballLMaterialNo();
    /* 80B71A44 */ s32 getHeadJointNo();
    /* 80B71A4C */ bool getBackboneJointNo();
    /* 80B71A54 */ void checkChangeJoint(int);
    /* 80B71A64 */ void checkRemoveJoint(int);

    static void* mCutNameList;
    static u8 mCutList[12];

private:
    /* 0x568 */ u8 field_0x568[0xfc8 - 0x568];
};

STATIC_ASSERT(sizeof(daNpc_ZelR_c) == 0xfc8);

class daNpc_ZelR_Param_c {
public:
    /* 80B71A74 */ ~daNpc_ZelR_Param_c();

    static u8 const m[140];
};


#endif /* D_A_NPC_ZELR_H */
