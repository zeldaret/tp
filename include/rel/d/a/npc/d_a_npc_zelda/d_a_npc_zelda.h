#ifndef D_A_NPC_ZELDA_H
#define D_A_NPC_ZELDA_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Zelda_c
 * @brief Zelda
 *
 * @details
 *
 */
class daNpc_Zelda_c : public fopAc_ac_c {
public:
    /* 80B7512C */ ~daNpc_Zelda_c();
    /* 80B7524C */ void create();
    /* 80B75530 */ void CreateHeap();
    /* 80B75978 */ void Delete();
    /* 80B759AC */ void Execute();
    /* 80B759CC */ void Draw();
    /* 80B75A90 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80B75AB0 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80B75B08 */ void getType();
    /* 80B75B28 */ bool isDelete();
    /* 80B75B30 */ void reset();
    /* 80B75C9C */ void afterJntAnm(int);
    /* 80B75D28 */ void ctrlBtk();
    /* 80B75E34 */ void checkChangeEvt();
    /* 80B75EE8 */ void setParam();
    /* 80B76014 */ void setAfterTalkMotion();
    /* 80B76074 */ void srchActors();
    /* 80B76078 */ void evtTalk();
    /* 80B76118 */ void evtCutProc();
    /* 80B761E0 */ void action();
    /* 80B762CC */ void beforeMove();
    /* 80B76344 */ void setAttnPos();
    /* 80B765D4 */ void setCollision();
    /* 80B76774 */ bool drawDbgInfo();
    /* 80B7677C */ void selectAction();
    /* 80B767C4 */ void chkAction(int (daNpc_Zelda_c::*)(void*));
    /* 80B767F0 */ void setAction(int (daNpc_Zelda_c::*)(void*));
    /* 80B76898 */ void wait(void*);
    /* 80B76B74 */ void talk(void*);
    /* 80B77DD8 */ daNpc_Zelda_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                 daNpcT_evtData_c const*, char**);
    /* 80B77F14 */ s32 getEyeballRMaterialNo();
    /* 80B77F1C */ s32 getEyeballLMaterialNo();
    /* 80B77F24 */ s32 getHeadJointNo();
    /* 80B77F2C */ s32 getNeckJointNo();
    /* 80B77F34 */ bool getBackboneJointNo();
    /* 80B77F3C */ void checkChangeJoint(int);
    /* 80B77F4C */ void checkRemoveJoint(int);

    static void* mCutNameList;
    static u8 mCutList[12];

private:
    /* 0x568 */ u8 field_0x568[0xfa0 - 0x568];
};
STATIC_ASSERT(sizeof(daNpc_Zelda_c) == 0xfa0);

class daNpc_Zelda_Param_c {
public:
    /* 80B77F5C */ ~daNpc_Zelda_Param_c();

    static u8 const m[140];
};


#endif /* D_A_NPC_ZELDA_H */
