#ifndef D_A_NPC_YAMIS_H
#define D_A_NPC_YAMIS_H

#include "dolphin/types.h"
#include "d/a/d_a_npc.h"

class daNpc_yamiS_c : public fopAc_ac_c {
public:
    /* 80B4656C */ ~daNpc_yamiS_c();
    /* 80B466A4 */ void create();
    /* 80B46958 */ void CreateHeap();
    /* 80B46DA8 */ void Delete();
    /* 80B46DDC */ void Execute();
    /* 80B46DFC */ void Draw();
    /* 80B46EA4 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80B46EC4 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80B46F1C */ void getType();
    /* 80B46F54 */ void getFlowNodeNo();
    /* 80B46FB8 */ void isDelete();
    /* 80B47040 */ void reset();
    /* 80B47254 */ void afterJntAnm(int);
    /* 80B472E0 */ void setParam();
    /* 80B473DC */ void setAfterTalkMotion();
    /* 80B4743C */ void srchActors();
    /* 80B47440 */ void evtTalk();
    /* 80B47524 */ void evtCutProc();
    /* 80B475EC */ void action();
    /* 80B476D8 */ void beforeMove();
    /* 80B47750 */ void setAttnPos();
    /* 80B4797C */ void setCollision();
    /* 80B47AE8 */ bool drawDbgInfo();
    /* 80B47AF0 */ void drawGhost();
    /* 80B47B5C */ void selectAction();
    /* 80B47BA4 */ void chkAction(int (daNpc_yamiS_c::*)(void*));
    /* 80B47BD0 */ void setAction(int (daNpc_yamiS_c::*)(void*));
    /* 80B47C78 */ void wait(void*);
    /* 80B47F50 */ void talk(void*);
    /* 80B4815C */ void cutStopper(int);
    /* 80B481F0 */ void _cutStopper_Init(int const&);
    /* 80B48238 */ void _cutStopper_Main(int const&);
    /* 80B494D8 */ daNpc_yamiS_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                 daNpcT_evtData_c const*, char**);
    /* 80B49598 */ bool getEyeballMaterialNo();
    /* 80B495A0 */ s32 getHeadJointNo();
    /* 80B495A8 */ s32 getNeckJointNo();
    /* 80B495B0 */ bool getBackboneJointNo();
    /* 80B495B8 */ void checkChangeJoint(int);
    /* 80B495C8 */ void checkRemoveJoint(int);
    /* 80B495D8 */ void evtEndProc();

    static void* mCutNameList[2];
    static u8 mCutList[24];

private:
    /* 0x568 */ u8 field_0x568[0xfcc - 0x568];
};
STATIC_ASSERT(sizeof(daNpc_yamiS_c) == 0xfcc);

class daNpc_yamiS_Param_c {
public:
    /* 80B49644 */ ~daNpc_yamiS_Param_c();

    static u8 const m[140];
};


#endif /* D_A_NPC_YAMIS_H */
