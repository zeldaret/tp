#ifndef D_A_NPC_LUD_H
#define D_A_NPC_LUD_H

#include "dolphin/types.h"
#include "d/a/d_a_npc.h"

class daNpc_Lud_c : public fopAc_ac_c {
public:
    /* 80A6ABAC */ ~daNpc_Lud_c();
    /* 80A6ACF4 */ void create();
    /* 80A6AFA8 */ void CreateHeap();
    /* 80A6B5FC */ void Delete();
    /* 80A6B630 */ void Execute();
    /* 80A6B650 */ void Draw();
    /* 80A6B6E4 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80A6B704 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80A6B75C */ void getType();
    /* 80A6B7CC */ void isDelete();
    /* 80A6B954 */ void reset();
    /* 80A6BB1C */ void afterJntAnm(int);
    /* 80A6BBA8 */ void setParam();
    /* 80A6BD44 */ void checkChangeEvt();
    /* 80A6BE6C */ void setAfterTalkMotion();
    /* 80A6BEE4 */ void srchActors();
    /* 80A6BFA4 */ void evtTalk();
    /* 80A6C044 */ void evtCutProc();
    /* 80A6C10C */ void action();
    /* 80A6C2E4 */ void beforeMove();
    /* 80A6C3A8 */ void setAttnPos();
    /* 80A6C8EC */ void setCollision();
    /* 80A6CA9C */ bool drawDbgInfo();
    /* 80A6CAA4 */ void drawOtherMdl();
    /* 80A6CC2C */ void setBowlAnm(int, int, f32);
    /* 80A6CCFC */ void afterSetMotionAnm(int, int, f32, int);
    /* 80A6CD30 */ void selectAction();
    /* 80A6CDF4 */ void chkAction(int (daNpc_Lud_c::*)(void*));
    /* 80A6CE20 */ void setAction(int (daNpc_Lud_c::*)(void*));
    /* 80A6CEC8 */ void mop(int, int);
    /* 80A6D01C */ void cutHurry(int);
    /* 80A6D160 */ void cutConversationInHotel(int);
    /* 80A6D450 */ void cutConversationAboutDeathMt(int);
    /* 80A6D708 */ void cutConversationAboutGoron(int);
    /* 80A6D998 */ void cutNurse(int);
    /* 80A6DC48 */ void cutClothTry(int);
    /* 80A6DCE8 */ void cutThankYou(int);
    /* 80A6DE14 */ void wait(void*);
    /* 80A6E32C */ void nurse(void*);
    /* 80A6E6EC */ void giveSoup(void*);
    /* 80A6E7EC */ void talk(void*);
    /* 80A6FC04 */ daNpc_Lud_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                               daNpcT_evtData_c const*, char**);
    /* 80A6FCD0 */ bool getEyeballMaterialNo();
    /* 80A6FCD8 */ s32 getHeadJointNo();
    /* 80A6FCE0 */ s32 getNeckJointNo();
    /* 80A6FCE8 */ bool getBackboneJointNo();
    /* 80A6FCF0 */ void checkChangeJoint(int);
    /* 80A6FD00 */ void checkRemoveJoint(int);

    static void* mCutNameList[8];
    static u8 mCutList[96];
private:
    /* 0x568 */ u8 field_0x568[0xfdc - 0x568];
};
STATIC_ASSERT(sizeof(daNpc_Lud_c) == 0xfdc);

class daNpc_Lud_Param_c {
public:
    /* 80A6FD10 */ ~daNpc_Lud_Param_c();

    static u8 const m[144];
};

#endif /* D_A_NPC_LUD_H */
