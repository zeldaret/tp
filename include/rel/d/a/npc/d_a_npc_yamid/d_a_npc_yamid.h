#ifndef D_A_NPC_YAMID_H
#define D_A_NPC_YAMID_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_yamiD_c
 * @brief Twili (Fat)
 *
 * @details
 *
 */
class daNpc_yamiD_c : public fopAc_ac_c {
public:
    /* 80B42F4C */ ~daNpc_yamiD_c();
    /* 80B43084 */ void create();
    /* 80B43338 */ void CreateHeap();
    /* 80B43788 */ void Delete();
    /* 80B437BC */ void Execute();
    /* 80B437DC */ void Draw();
    /* 80B43884 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80B438A4 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80B438FC */ void getType();
    /* 80B43934 */ void getFlowNodeNo();
    /* 80B43998 */ void isDelete();
    /* 80B43A20 */ void reset();
    /* 80B43C34 */ void afterJntAnm(int);
    /* 80B43CC0 */ void setParam();
    /* 80B43DBC */ void setAfterTalkMotion();
    /* 80B43E1C */ void srchActors();
    /* 80B43E28 */ void evtTalk();
    /* 80B43F0C */ void evtCutProc();
    /* 80B43FD4 */ void action();
    /* 80B440C0 */ void beforeMove();
    /* 80B44138 */ void setAttnPos();
    /* 80B44364 */ void setCollision();
    /* 80B44498 */ bool drawDbgInfo();
    /* 80B444A0 */ void drawGhost();
    /* 80B4450C */ void selectAction();
    /* 80B44554 */ void chkAction(int (daNpc_yamiD_c::*)(void*));
    /* 80B44580 */ void setAction(int (daNpc_yamiD_c::*)(void*));
    /* 80B44628 */ void wait(void*);
    /* 80B44900 */ void talk(void*);
    /* 80B44AF8 */ void cutStopper(int);
    /* 80B44B8C */ void _cutStopper_Init(int const&);
    /* 80B44BD4 */ void _cutStopper_Main(int const&);
    /* 80B45E74 */ daNpc_yamiD_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                 daNpcT_evtData_c const*, char**);
    /* 80B45F34 */ bool getEyeballMaterialNo();
    /* 80B45F3C */ s32 getHeadJointNo();
    /* 80B45F44 */ s32 getNeckJointNo();
    /* 80B45F4C */ bool getBackboneJointNo();
    /* 80B45F54 */ void checkChangeJoint(int);
    /* 80B45F64 */ void checkRemoveJoint(int);
    /* 80B45F74 */ void evtEndProc();

    static void* mCutNameList[2];
    static u8 mCutList[24];

private:
    /* 0x568 */ u8 field_0x568[0xfcc - 0x568];
};
STATIC_ASSERT(sizeof(daNpc_yamiD_c) == 0xfcc);

class daNpc_yamiD_Param_c {
public:
    /* 80B45FE0 */ ~daNpc_yamiD_Param_c();

    static u8 const m[140];
};


#endif /* D_A_NPC_YAMID_H */
