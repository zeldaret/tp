#ifndef D_A_NPC_GRMC_H
#define D_A_NPC_GRMC_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_grMC_c
 * @brief Goron Child (Shopkeeper)
 *
 * @details
 *
 */
class daNpc_grMC_c : public fopAc_ac_c {
public:
    /* 809D740C */ ~daNpc_grMC_c();
    /* 809D7534 */ void create();
    /* 809D77BC */ void CreateHeap();
    /* 809D79BC */ void Delete();
    /* 809D79F0 */ void Execute();
    /* 809D7AD4 */ void Draw();
    /* 809D7B18 */ void createHeapCallBack(fopAc_ac_c*);
    /* 809D7B38 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 809D7B90 */ bool getType();
    /* 809D7B98 */ void getFlowNodeNo();
    /* 809D7BB4 */ void getMaxNumItem();
    /* 809D7BC0 */ void isDelete();
    /* 809D7C34 */ void reset();
    /* 809D7D48 */ void afterJntAnm(int);
    /* 809D7DD4 */ void setParam();
    /* 809D7F28 */ void setAfterTalkMotion();
    /* 809D7FCC */ void srchActors();
    /* 809D7FD0 */ void evtTalk();
    /* 809D8174 */ void evtCutProc();
    /* 809D823C */ void action();
    /* 809D8398 */ void beforeMove();
    /* 809D8410 */ void setAttnPos();
    /* 809D8670 */ void setCollision();
    /* 809D87A0 */ bool drawDbgInfo();
    /* 809D87A8 */ void drawOtherMdl();
    /* 809D8808 */ void selectAction();
    /* 809D8850 */ void chkAction(int (daNpc_grMC_c::*)(void*));
    /* 809D887C */ void setAction(int (daNpc_grMC_c::*)(void*));
    /* 809D8924 */ void tend(void*);
    /* 809D8AE8 */ void talk(void*);
    /* 809D8C6C */ void shop(void*);
    /* 809D8E5C */ daNpc_grMC_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                daNpcT_evtData_c const*, char**);
    /* 809D8FD4 */ s32 getHeadJointNo();
    /* 809D8FDC */ s32 getNeckJointNo();
    /* 809D8FE4 */ bool getBackboneJointNo();
    /* 809D8FEC */ void checkChangeJoint(int);
    /* 809D8FFC */ void checkRemoveJoint(int);
    /* 809D900C */ bool getEyeballMaterialNo();

    static void* mCutNameList;
    static u8 mCutList[12];

private:
    /* 0x568 */ u8 field_0x568[0x10e4 - 0x568];
};

STATIC_ASSERT(sizeof(daNpc_grMC_c) == 0x10e4);

class daNpc_grMC_Param_c {
public:
    /* 809D9014 */ ~daNpc_grMC_Param_c();

    static u8 const m[140];
};


#endif /* D_A_NPC_GRMC_H */
