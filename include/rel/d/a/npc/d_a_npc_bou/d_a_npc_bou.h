#ifndef D_A_NPC_BOU_H
#define D_A_NPC_BOU_H

#include "dolphin/types.h"
#include "d/a/d_a_npc.h"

class daNpc_Jagar_c : public fopAc_ac_c {
public:
    /* 80A150AC */ void getType();
};

class daNpc_Bou_c : public fopAc_ac_c {
public:
    /* 8096CF8C */ ~daNpc_Bou_c();
    /* 8096D0D8 */ void create();
    /* 8096D38C */ void CreateHeap();
    /* 8096D7B8 */ void Delete();
    /* 8096D7EC */ void Execute();
    /* 8096D80C */ void Draw();
    /* 8096D8A0 */ void createHeapCallBack(fopAc_ac_c*);
    /* 8096D8C0 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 8096D918 */ void srchCow(void*, void*);
    /* 8096D9B4 */ void getCowP();
    /* 8096DA78 */ void getType();
    /* 8096DADC */ void isDelete();
    /* 8096DBBC */ void reset();
    /* 8096DD44 */ void afterJntAnm(int);
    /* 8096DDC8 */ void setParam();
    /* 8096DF9C */ void checkChangeEvt();
    /* 8096E0EC */ void setAfterTalkMotion();
    /* 8096E18C */ void srchActors();
    /* 8096E27C */ void evtTalk();
    /* 8096E31C */ bool evtEndProc();
    /* 8096E324 */ void evtCutProc();
    /* 8096E3EC */ void action();
    /* 8096E7E0 */ void beforeMove();
    /* 8096E8A4 */ void setAttnPos();
    /* 8096EB14 */ void setCollision();
    /* 8096EC6C */ bool drawDbgInfo();
    /* 8096EC74 */ void changeAnm(int*, int*);
    /* 8096ECC0 */ void selectAction();
    /* 8096ED3C */ void chkAction(int (daNpc_Bou_c::*)(void*));
    /* 8096ED68 */ void setAction(int (daNpc_Bou_c::*)(void*));
    /* 8096EE10 */ void cutWildGoat(int);
    /* 8096F2E4 */ void cutWildGoatSuccess(int);
    /* 8096F510 */ void cutWildGoatFailure(int);
    /* 8096F758 */ void cutSpeakTo(int);
    /* 8096F9A4 */ void cutConversationWithBou(int);
    /* 8096FB78 */ void cutConfidentialConversation(int);
    /* 8096FE40 */ void cutFindWolf(int);
    /* 80970278 */ void cutMeetingAgain(int);
    /* 809709EC */ void wait(void*);
    /* 80970DFC */ void talkwithJagar(void*);
    /* 80970F9C */ void talk(void*);
    /* 809726D4 */ daNpc_Bou_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                               daNpcT_evtData_c const*, char**);
    /* 809727B4 */ bool getEyeballMaterialNo();
    /* 809727BC */ s32 getHeadJointNo();
    /* 809727C4 */ s32 getNeckJointNo();
    /* 809727CC */ bool getBackboneJointNo();
    /* 809727D4 */ void checkChangeJoint(int);
    /* 809727E4 */ void checkRemoveJoint(int);

    static void* mCutNameList[9];
    static u8 mCutList[108];

private:
    /* 0x568 */ u8 field_0x568[0xffc - 0x568];
};
STATIC_ASSERT(sizeof(daNpc_Bou_c) == 0xffc);

class daNpc_Bou_Param_c {
public:
    /* 809727F4 */ ~daNpc_Bou_Param_c();

    static u8 const m[156];
};


#endif /* D_A_NPC_BOU_H */
