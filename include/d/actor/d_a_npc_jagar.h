#ifndef D_A_NPC_JAGAR_H
#define D_A_NPC_JAGAR_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Jagar_c
 * @brief Jaggle
 *
 * @details
 *
 */
class daNpc_Jagar_c : public fopAc_ac_c {
public:
    /* 80A1470C */ ~daNpc_Jagar_c();
    /* 80A14858 */ void create();
    /* 80A14B20 */ void CreateHeap();
    /* 80A14F4C */ void Delete();
    /* 80A14F80 */ void Execute();
    /* 80A14FA0 */ void Draw();
    /* 80A15034 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80A15054 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80A150AC */ void getType();
    /* 80A150F8 */ void isDelete();
    /* 80A15198 */ void reset();
    /* 80A15364 */ void afterJntAnm(int);
    /* 80A153E8 */ void setParam();
    /* 80A155E4 */ void checkChangeEvt();
    /* 80A15714 */ void setAfterTalkMotion();
    /* 80A157B4 */ void srchActors();
    /* 80A158A0 */ void evtTalk();
    /* 80A15940 */ void evtCutProc();
    /* 80A15A08 */ void action();
    /* 80A15CA4 */ void beforeMove();
    /* 80A15D68 */ void setAttnPos();
    /* 80A1607C */ void setCollision();
    /* 80A161EC */ bool drawDbgInfo();
    /* 80A161F4 */ void changeBtp(int*, int*);
    /* 80A16234 */ void selectAction();
    /* 80A162B0 */ void chkAction(int (daNpc_Jagar_c::*)(void*));
    /* 80A162DC */ void setAction(int (daNpc_Jagar_c::*)(void*));
    /* 80A16384 */ void cutClimbUp(int);
    /* 80A16544 */ void cutNeedYourHelp(int);
    /* 80A16CD8 */ void cutAnger(int);
    /* 80A16EFC */ void cutConversationWithBou(int);
    /* 80A1705C */ void cutConfidentialConversation(int);
    /* 80A173D8 */ void cutFindWolf(int);
    /* 80A17898 */ void chkSitMotion();
    /* 80A17924 */ void chkSitMotion2();
    /* 80A17984 */ void chkChuMotion();
    /* 80A179F8 */ void chkToMotion();
    /* 80A17A2C */ void wait(void*);
    /* 80A1856C */ void talkwithBou(void*);
    /* 80A18B74 */ void talk(void*);
    /* 80A1A194 */ daNpc_Jagar_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                 daNpcT_evtData_c const*, char**);
    /* 80A1A274 */ s32 getEyeballMaterialNo();
    /* 80A1A27C */ s32 getHeadJointNo();
    /* 80A1A284 */ s32 getNeckJointNo();
    /* 80A1A28C */ bool getBackboneJointNo();
    /* 80A1A294 */ void checkChangeJoint(int);
    /* 80A1A2A4 */ void checkRemoveJoint(int);
    /* 80A1A2B4 */ s32 getFootLJointNo();
    /* 80A1A2BC */ s32 getFootRJointNo();

    static void* mCutNameList[7];
    static u8 mCutList[84];

private:
    /* 0x568 */ u8 field_0x568[0x100c - 0x568];
};

STATIC_ASSERT(sizeof(daNpc_Jagar_c) == 0x100c);

class daNpc_Jagar_Param_c {
public:
    /* 80A1A2C4 */ ~daNpc_Jagar_Param_c();

    static u8 const m[160];
};

#endif /* D_A_NPC_JAGAR_H */
