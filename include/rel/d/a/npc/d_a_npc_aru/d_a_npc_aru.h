#ifndef D_A_NPC_ARU_H
#define D_A_NPC_ARU_H

#include "dolphin/types.h"
#include "d/a/d_a_npc.h"

class daNpc_Aru_c : public fopAc_ac_c {
public:
    /* 8095178C */ ~daNpc_Aru_c();
    /* 809518C4 */ void create();
    /* 80951BB0 */ void CreateHeap();
    /* 80951FDC */ void Delete();
    /* 80952010 */ void Execute();
    /* 80952030 */ void Draw();
    /* 809520C4 */ void createHeapCallBack(fopAc_ac_c*);
    /* 809520E4 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 8095213C */ void srchCow(void*, void*);
    /* 809521E4 */ void srchUDoor(void*, void*);
    /* 80952280 */ void chkThrust(fopAc_ac_c*);
    /* 80952400 */ void getCowP(int);
    /* 8095253C */ void getUDoor_l_P();
    /* 8095260C */ void getUDoor_r_P();
    /* 809526DC */ void getType();
    /* 80952740 */ void isDelete();
    /* 809527CC */ void reset();
    /* 80952B00 */ void afterJntAnm(int);
    /* 80952B84 */ void setParam();
    /* 80952CE8 */ void checkChangeEvt();
    /* 80952D9C */ void setAfterTalkMotion();
    /* 80952E64 */ void srchActors();
    /* 809530DC */ void evtTalk();
    /* 8095317C */ void evtCutProc();
    /* 80953244 */ void action();
    /* 809533D8 */ void beforeMove();
    /* 8095349C */ void setAttnPos();
    /* 80953798 */ void setCollision();
    /* 809538F0 */ bool drawDbgInfo();
    /* 809538F8 */ void selectAction();
    /* 80953AB8 */ void chkAction(int (daNpc_Aru_c::*)(void*));
    /* 80953AE4 */ void setAction(int (daNpc_Aru_c::*)(void*));
    /* 80953B8C */ void chkBullRunningStage();
    /* 80953C08 */ void chkSkipFenceStage();
    /* 80953C84 */ void srchActorDirection(fopAc_ac_c*);
    /* 80953D58 */ void adjustMoveDir();
    /* 809543F8 */ void duck(int);
    /* 80954744 */ void lookround(s16);
    /* 80954894 */ void cutRideOnHorse(int);
    /* 80954A5C */ void cutGotoBullRunningStage(int);
    /* 80954C0C */ void cutEndBullRunning(int);
    /* 80954F4C */ void cutGotoSkipFenceStage(int);
    /* 80955080 */ void cutSpeakTo(int);
    /* 8095533C */ void cutNoEntrance(int);
    /* 80955608 */ void wait(void*);
    /* 80955B48 */ void bullRunning(void*);
    /* 80955DE8 */ void skipFence(void*);
    /* 80955F98 */ void talk(void*);
    /* 809574E8 */ daNpc_Aru_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                               daNpcT_evtData_c const*, char**);
    /* 809575B4 */ s32 getEyeballMaterialNo();
    /* 809575BC */ s32 getHeadJointNo();
    /* 809575C4 */ s32 getNeckJointNo();
    /* 809575CC */ bool getBackboneJointNo();
    /* 809575D4 */ void checkChangeJoint(int);
    /* 809575E4 */ void checkRemoveJoint(int);
    /* 809575F4 */ s32 getFootLJointNo();
    /* 809575FC */ s32 getFootRJointNo();

    static void* mCutNameList[7];
    static u8 mCutList[84];

private:
    /* 0x568 */ u8 field_0x568[0xfd8 - 0x568];
};
STATIC_ASSERT(sizeof(daNpc_Aru_c) == 0xfd8);

class daNpc_Aru_Param_c {
public:
    /* 80957604 */ ~daNpc_Aru_Param_c();

    static u8 const m[160];
};


#endif /* D_A_NPC_ARU_H */
