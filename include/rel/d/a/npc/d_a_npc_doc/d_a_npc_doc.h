#ifndef D_A_NPC_DOC_H
#define D_A_NPC_DOC_H

#include "dolphin/types.h"
#include "d/a/d_a_npc.h"

class daNpc_Doc_c : public fopAc_ac_c {
public:
    /* 809A6C8C */ ~daNpc_Doc_c();
    /* 809A6DC0 */ void create();
    /* 809A7088 */ void CreateHeap();
    /* 809A74C8 */ void Delete();
    /* 809A74FC */ void Execute();
    /* 809A751C */ void Draw();
    /* 809A75B0 */ void createHeapCallBack(fopAc_ac_c*);
    /* 809A75D0 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 809A7628 */ void getType();
    /* 809A7660 */ void isDelete();
    /* 809A7694 */ void reset();
    /* 809A7918 */ void afterJntAnm(int);
    /* 809A79A4 */ void setParam();
    /* 809A7ABC */ void checkChangeEvt();
    /* 809A7BC4 */ void setAfterTalkMotion();
    /* 809A7C3C */ void srchActors();
    /* 809A7C40 */ void evtTalk();
    /* 809A7CE0 */ void evtCutProc();
    /* 809A7DA8 */ void action();
    /* 809A7F3C */ void beforeMove();
    /* 809A80B8 */ void setAttnPos();
    /* 809A83A8 */ void setCollision();
    /* 809A8530 */ bool drawDbgInfo();
    /* 809A8538 */ void selectAction();
    /* 809A8620 */ void chkAction(int (daNpc_Doc_c::*)(void*));
    /* 809A864C */ void setAction(int (daNpc_Doc_c::*)(void*));
    /* 809A86F4 */ void wait(void*);
    /* 809A8A9C */ void walk(void*);
    /* 809A8C78 */ void talk(void*);
    /* 809AA18C */ daNpc_Doc_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                               daNpcT_evtData_c const*, char**);
    /* 809AA24C */ s32 getEyeballMaterialNo();
    /* 809AA254 */ s32 getHeadJointNo();
    /* 809AA25C */ s32 getNeckJointNo();
    /* 809AA264 */ bool getBackboneJointNo();
    /* 809AA26C */ void checkChangeJoint(int);
    /* 809AA27C */ void checkRemoveJoint(int);
    /* 809AA28C */ s32 getFootLJointNo();
    /* 809AA294 */ s32 getFootRJointNo();
    /* 809AA29C */ void chkXYItems();

    static void* mCutNameList;
    static u8 mCutList[12];

private:
    /* 0x568 */ u8 field_0x568[0xfcc - 0x568];
};
STATIC_ASSERT(sizeof(daNpc_Doc_c) == 0xfcc);

class daNpc_Doc_Param_c {
public:
    /* 809AA2B0 */ ~daNpc_Doc_Param_c();

    static u8 const m[144];
};


#endif /* D_A_NPC_DOC_H */
