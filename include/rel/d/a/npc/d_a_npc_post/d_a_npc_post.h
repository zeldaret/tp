#ifndef D_A_NPC_POST_H
#define D_A_NPC_POST_H

#include "dolphin/types.h"
#include "d/a/d_a_npc.h"

class daNpc_Post_c : public fopAc_ac_c {
public:
    /* 80AA8C8C */ ~daNpc_Post_c();
    /* 80AA8DE8 */ void create();
    /* 80AA90B0 */ void CreateHeap();
    /* 80AA9634 */ void Delete();
    /* 80AA9668 */ void Execute();
    /* 80AA9688 */ void Draw();
    /* 80AA971C */ void createHeapCallBack(fopAc_ac_c*);
    /* 80AA973C */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80AA9794 */ void getType();
    /* 80AA97E0 */ void isDelete();
    /* 80AA9828 */ void reset();
    /* 80AA99F0 */ void afterJntAnm(int);
    /* 80AA9A7C */ void setParam();
    /* 80AA9BA4 */ void checkChangeEvt();
    /* 80AA9C58 */ void setAfterTalkMotion();
    /* 80AA9D04 */ void srchActors();
    /* 80AA9D98 */ void evtTalk();
    /* 80AA9E98 */ void evtCutProc();
    /* 80AA9F60 */ void action();
    /* 80AAA058 */ void beforeMove();
    /* 80AAA124 */ void afterMoved();
    /* 80AAA1E4 */ void setAttnPos();
    /* 80AAA570 */ void setCollision();
    /* 80AAA714 */ bool drawDbgInfo();
    /* 80AAA71C */ void drawOtherMdl();
    /* 80AAA8A4 */ void setFlagAnm(int, int, f32);
    /* 80AAA968 */ void afterSetMotionAnm(int, int, f32, int);
    /* 80AAA99C */ void selectAction();
    /* 80AAA9E4 */ void chkAction(int (daNpc_Post_c::*)(void*));
    /* 80AAAA10 */ void setAction(int (daNpc_Post_c::*)(void*));
    /* 80AAAAB8 */ void chkPullOutLetter1();
    /* 80AAAB2C */ void chkPullOutLetter2();
    /* 80AAABA0 */ void pullOutLetter();
    /* 80AAAC64 */ void cutDeliver(int);
    /* 80AAB61C */ void wait(void*);
    /* 80AABC24 */ void talk(void*);
    /* 80AACFF0 */ daNpc_Post_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                daNpcT_evtData_c const*, char**);
    /* 80AAD0D0 */ bool getEyeballMaterialNo();
    /* 80AAD0D8 */ s32 getHeadJointNo();
    /* 80AAD0E0 */ s32 getNeckJointNo();
    /* 80AAD0E8 */ bool getBackboneJointNo();
    /* 80AAD0F0 */ void checkChangeJoint(int);
    /* 80AAD100 */ void checkRemoveJoint(int);
    /* 80AAD110 */ s32 getFootLJointNo();
    /* 80AAD118 */ s32 getFootRJointNo();

    static void* mCutNameList[2];
    static u8 mCutList[24];

private:
    /* 0x568 */ u8 field_0x568[0x1018 - 0x568];
};
STATIC_ASSERT(sizeof(daNpc_Post_c) == 0x1018);

class daNpc_Post_Param_c {
public:
    /* 80AAD120 */ ~daNpc_Post_Param_c();

    static u8 const m[148];
};


#endif /* D_A_NPC_POST_H */
