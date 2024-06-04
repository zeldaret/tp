#ifndef D_A_NPC_URI_H
#define D_A_NPC_URI_H

#include "dolphin/types.h"
#include "d/a/d_a_npc.h"

class daNpc_Uri_c : public fopAc_ac_c {
public:
    /* 80B267AC */ ~daNpc_Uri_c();
    /* 80B268F8 */ void create();
    /* 80B26BE4 */ void CreateHeap();
    /* 80B2708C */ void Delete();
    /* 80B270C0 */ void Execute();
    /* 80B270E0 */ void Draw();
    /* 80B27174 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80B27194 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80B271EC */ void getType();
    /* 80B27260 */ void isDelete();
    /* 80B272F0 */ void reset();
    /* 80B27750 */ void afterJntAnm(int);
    /* 80B27820 */ void setParam();
    /* 80B27994 */ void checkChangeEvt();
    /* 80B27B3C */ void setAfterTalkMotion();
    /* 80B27BF0 */ void srchActors();
    /* 80B27C8C */ void evtTalk();
    /* 80B27D2C */ void evtCutProc();
    /* 80B27DF4 */ void action();
    /* 80B27F14 */ void beforeMove();
    /* 80B27FD8 */ void setAttnPos();
    /* 80B28318 */ void setCollision();
    /* 80B284D4 */ bool drawDbgInfo();
    /* 80B284DC */ void drawOtherMdl();
    /* 80B285B4 */ void afterSetMotionAnm(int, int, f32, int);
    /* 80B285EC */ void changeBck(int*, int*);
    /* 80B28618 */ void changeBtp(int*, int*);
    /* 80B28644 */ void selectAction();
    /* 80B28794 */ void chkAction(int (daNpc_Uri_c::*)(void*));
    /* 80B287C0 */ void setAction(int (daNpc_Uri_c::*)(void*));
    /* 80B28868 */ void chkPlayerCarryBasket();
    /* 80B288DC */ void chkPlayerGetWoodShield();
    /* 80B28910 */ void getTutorialCond(cXyz);
    /* 80B28FB8 */ void cutConversation(int);
    /* 80B29198 */ void cutStartCarryTutorial(int);
    /* 80B293C0 */ void cutEndCarryTutorial(int);
    /* 80B296B8 */ void cutConversationWithMoi(int);
    /* 80B2985C */ void cutFindWolf(int);
    /* 80B29BA4 */ void cutMeetingAgain(int);
    /* 80B29EA0 */ void krun(void*);
    /* 80B2A1B4 */ void wait(void*);
    /* 80B2AB60 */ void walk(void*);
    /* 80B2B24C */ void sitWait(void*);
    /* 80B2B7C0 */ void talk(void*);
    /* 80B2CC64 */ daNpc_Uri_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                               daNpcT_evtData_c const*, char**);
    /* 80B2CD44 */ s32 getEyeballMaterialNo();
    /* 80B2CD4C */ s32 getHeadJointNo();
    /* 80B2CD54 */ s32 getNeckJointNo();
    /* 80B2CD5C */ bool getBackboneJointNo();
    /* 80B2CD64 */ void checkChangeJoint(int);
    /* 80B2CD74 */ void checkRemoveJoint(int);
    /* 80B2CD84 */ s32 getFootLJointNo();
    /* 80B2CD8C */ s32 getFootRJointNo();

    static void* mCutNameList[7];
    static u8 mCutList[84];

private:
    /* 0x568 */ u8 field_0x568[0x1018 - 0x568];
};
STATIC_ASSERT(sizeof(daNpc_Uri_c) == 0x1018);

class daNpc_Uri_Param_c {
public:
    /* 80B2CD94 */ ~daNpc_Uri_Param_c();

    static u8 const m[172];
};


#endif /* D_A_NPC_URI_H */
