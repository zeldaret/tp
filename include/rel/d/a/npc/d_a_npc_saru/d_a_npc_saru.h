#ifndef D_A_NPC_SARU_H
#define D_A_NPC_SARU_H

#include "dolphin/types.h"
#include "d/a/d_a_npc.h"

class daNpc_Saru_c : public fopAc_ac_c {
public:
    /* 80AC042C */ ~daNpc_Saru_c();
    /* 80AC0578 */ void create();
    /* 80AC082C */ void CreateHeap();
    /* 80AC0A54 */ void Delete();
    /* 80AC0A88 */ void Execute();
    /* 80AC0AA8 */ void Draw();
    /* 80AC0AEC */ void createHeapCallBack(fopAc_ac_c*);
    /* 80AC0B0C */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80AC0B64 */ void srchYm(void*, void*);
    /* 80AC0C0C */ void getType();
    /* 80AC0C58 */ void isDelete();
    /* 80AC0CE8 */ void reset();
    /* 80AC0EA4 */ void afterJntAnm(int);
    /* 80AC0F28 */ void checkChangeEvt();
    /* 80AC0FDC */ void setParam();
    /* 80AC1110 */ void setAfterTalkMotion();
    /* 80AC1170 */ void srchActors();
    /* 80AC11D4 */ void evtTalk();
    /* 80AC1274 */ void evtCutProc();
    /* 80AC133C */ void action();
    /* 80AC14E4 */ void beforeMove();
    /* 80AC15B4 */ void setAttnPos();
    /* 80AC18A0 */ void setCollision();
    /* 80AC1A20 */ bool drawDbgInfo();
    /* 80AC1A28 */ void drawOtherMdl();
    /* 80AC1B30 */ void selectAction();
    /* 80AC1B78 */ void chkAction(int (daNpc_Saru_c::*)(void*));
    /* 80AC1BA4 */ void setAction(int (daNpc_Saru_c::*)(void*));
    /* 80AC1C4C */ void setSe();
    /* 80AC216C */ void cutFindMonkey(int);
    /* 80AC2368 */ void cutHelpMe(int);
    /* 80AC2598 */ void cutYmLook(int);
    /* 80AC28A4 */ void wait(void*);
    /* 80AC2FD8 */ void talk(void*);
    /* 80AC4394 */ daNpc_Saru_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                daNpcT_evtData_c const*, char**);
    /* 80AC4474 */ s32 getHeadJointNo();
    /* 80AC447C */ s32 getNeckJointNo();
    /* 80AC4484 */ bool getBackboneJointNo();

    static void* mCutNameList[4];
    static u8 mCutList[48];

private:
    /* 0x568 */ u8 field_0x568[0xfe0 - 0x568];
};
STATIC_ASSERT(sizeof(daNpc_Saru_c) == 0xfe0);

class daNpc_Saru_Param_c {
public:
    /* 80AC448C */ ~daNpc_Saru_Param_c();

    static u8 const m[144];
};


#endif /* D_A_NPC_SARU_H */
