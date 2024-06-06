#ifndef D_A_NPC_ZELRO_H
#define D_A_NPC_ZELRO_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_ZelRo_c
 * @brief Zelda (Cloaked)
 *
 * @details
 *
 */
class daNpc_ZelRo_c : public fopAc_ac_c {
public:
    /* 80B71FAC */ ~daNpc_ZelRo_c();
    /* 80B720E4 */ void create();
    /* 80B72378 */ void CreateHeap();
    /* 80B727E4 */ void Delete();
    /* 80B72818 */ void Execute();
    /* 80B72838 */ void Draw();
    /* 80B728FC */ void createHeapCallBack(fopAc_ac_c*);
    /* 80B7291C */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80B72974 */ void getType();
    /* 80B72994 */ void getFlowNodeNo();
    /* 80B729B0 */ void getPath();
    /* 80B729BC */ void isDelete();
    /* 80B72A10 */ void reset();
    /* 80B72B8C */ void afterJntAnm(int);
    /* 80B72C18 */ void ctrlBtk();
    /* 80B72D24 */ void setParam();
    /* 80B72E18 */ void setAfterTalkMotion();
    /* 80B72E78 */ void srchActors();
    /* 80B72E7C */ void evtTalk();
    /* 80B72F7C */ void evtCutProc();
    /* 80B73044 */ void action();
    /* 80B73194 */ void beforeMove();
    /* 80B7320C */ void setAttnPos();
    /* 80B7342C */ void setCollision();
    /* 80B7355C */ bool drawDbgInfo();
    /* 80B73564 */ void selectAction();
    /* 80B735AC */ void chkAction(int (daNpc_ZelRo_c::*)(void*));
    /* 80B735D8 */ void setAction(int (daNpc_ZelRo_c::*)(void*));
    /* 80B73680 */ void wait(void*);
    /* 80B7382C */ void talk(void*);
    /* 80B74AE8 */ daNpc_ZelRo_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                 daNpcT_evtData_c const*, char**);
    /* 80B74BA8 */ s32 getEyeballRMaterialNo();
    /* 80B74BB0 */ s32 getEyeballLMaterialNo();
    /* 80B74BB8 */ s32 getHeadJointNo();
    /* 80B74BC0 */ s32 getNeckJointNo();
    /* 80B74BC8 */ bool getBackboneJointNo();
    /* 80B74BD0 */ void checkChangeJoint(int);
    /* 80B74BE0 */ void checkRemoveJoint(int);

    static void* mCutNameList;
    static u8 mCutList[12];

private:
    /* 0x568 */ u8 field_0x568[0xfc8 - 0x568];
};

STATIC_ASSERT(sizeof(daNpc_ZelRo_c) == 0xfc8);

class daNpc_ZelRo_Param_c {
public:
    /* 80B74BF0 */ ~daNpc_ZelRo_Param_c();

    static u8 const m[140];
};


#endif /* D_A_NPC_ZELRO_H */
