#ifndef D_A_NPC_YAMIT_H
#define D_A_NPC_YAMIT_H

#include "d/actor/d_a_npc.h"
#include "d/actor/d_a_tag_yami.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_yamiT_c
 * @brief Twili (Tall)
 *
 * @details
 *
 */
class daNpc_yamiT_c : public fopAc_ac_c {
public:
    /* 80B49BEC */ ~daNpc_yamiT_c();
    /* 80B49D24 */ void create();
    /* 80B49FD8 */ void CreateHeap();
    /* 80B4A428 */ void Delete();
    /* 80B4A45C */ void Execute();
    /* 80B4A47C */ void _search_Tag(void*, void*);
    /* 80B4A4E0 */ void Draw();
    /* 80B4A588 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80B4A5A8 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80B4A600 */ void getType();
    /* 80B4A638 */ void getFlowNodeNo();
    /* 80B4A69C */ void isDelete();
    /* 80B4A724 */ void reset();
    /* 80B4A914 */ void afterJntAnm(int);
    /* 80B4A9A0 */ void setParam();
    /* 80B4AAD0 */ void setAfterTalkMotion();
    /* 80B4AB30 */ void srchActors();
    /* 80B4ABA0 */ void evtTalk();
    /* 80B4AC84 */ void evtCutProc();
    /* 80B4AD4C */ void action();
    /* 80B4AE38 */ void beforeMove();
    /* 80B4AEB0 */ void setAttnPos();
    /* 80B4B0DC */ void setCollision();
    /* 80B4B210 */ bool drawDbgInfo();
    /* 80B4B218 */ void evtEndProc();
    /* 80B4B294 */ void drawGhost();
    /* 80B4B300 */ void selectAction();
    /* 80B4B348 */ void chkAction(int (daNpc_yamiT_c::*)(void*));
    /* 80B4B374 */ void setAction(int (daNpc_yamiT_c::*)(void*));
    /* 80B4B41C */ void wait(void*);
    /* 80B4B7D4 */ void talk(void*);
    /* 80B4B9E0 */ void cutStopper(int);
    /* 80B4BA74 */ void _cutStopper_Init(int const&);
    /* 80B4BAAC */ void _cutStopper_Main(int const&);
    /* 80B4CC38 */ daNpc_yamiT_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                 daNpcT_evtData_c const*, char**);
    /* 80B4CCF8 */ s32 getEyeballMaterialNo();
    /* 80B4CD00 */ s32 getHeadJointNo();
    /* 80B4CD08 */ s32 getNeckJointNo();
    /* 80B4CD10 */ bool getBackboneJointNo();
    /* 80B4CD18 */ void checkChangeJoint(int);
    /* 80B4CD28 */ void checkRemoveJoint(int);

    static void* mCutNameList[2];
    static u8 mCutList[24];

private:
    /* 0x568 */ u8 field_0x568[0xfcc - 0x568];
};

STATIC_ASSERT(sizeof(daNpc_yamiT_c) == 0xfcc);

class daNpc_yamiT_Param_c {
public:
    /* 80B4CD38 */ ~daNpc_yamiT_Param_c();

    static u8 const m[140];
};


#endif /* D_A_NPC_YAMIT_H */
