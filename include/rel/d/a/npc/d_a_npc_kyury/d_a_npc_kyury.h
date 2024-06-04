#ifndef D_A_NPC_KYURY_H
#define D_A_NPC_KYURY_H

#include "dolphin/types.h"
#include "d/a/d_a_npc.h"

class daNpc_Kyury_c : public fopAc_ac_c {
public:
    /* 80A600CC */ ~daNpc_Kyury_c();
    /* 80A60218 */ void create();
    /* 80A604E4 */ void CreateHeap();
    /* 80A609A8 */ void Delete();
    /* 80A609DC */ void Execute();
    /* 80A609FC */ void Draw();
    /* 80A60A90 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80A60AB0 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80A60B08 */ void getType();
    /* 80A60B54 */ void isDelete();
    /* 80A60B9C */ void reset();
    /* 80A60CF8 */ void afterJntAnm(int);
    /* 80A60D84 */ void setParam();
    /* 80A60EB0 */ void checkChangeEvt();
    /* 80A60FB0 */ void setAfterTalkMotion();
    /* 80A61060 */ void srchActors();
    /* 80A610C4 */ void evtTalk();
    /* 80A61164 */ void evtCutProc();
    /* 80A6122C */ void action();
    /* 80A61324 */ void beforeMove();
    /* 80A613E8 */ void setAttnPos();
    /* 80A61730 */ void setCollision();
    /* 80A618A8 */ bool drawDbgInfo();
    /* 80A618B0 */ void drawOtherMdl();
    /* 80A619B8 */ void selectAction();
    /* 80A61A00 */ void chkAction(int (daNpc_Kyury_c::*)(void*));
    /* 80A61A2C */ void setAction(int (daNpc_Kyury_c::*)(void*));
    /* 80A61AD4 */ void cutConversation(int);
    /* 80A61ED0 */ void wait(void*);
    /* 80A62370 */ void talk(void*);
    /* 80A63720 */ daNpc_Kyury_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                 daNpcT_evtData_c const*, char**);
    /* 80A63800 */ s32 getEyeballMaterialNo();
    /* 80A63808 */ s32 getHeadJointNo();
    /* 80A63810 */ s32 getNeckJointNo();
    /* 80A63818 */ bool getBackboneJointNo();
    /* 80A63820 */ void checkChangeJoint(int);
    /* 80A63830 */ void checkRemoveJoint(int);

    static void* mCutNameList[2];
    static u8 mCutList[24];

private:
    /* 0x568 */ u8 field_0x568[0xfdc - 0x568];
};
STATIC_ASSERT(sizeof(daNpc_Kyury_c) == 0xfdc);

class daNpc_Kyury_Param_c {
public:
    /* 80A63840 */ ~daNpc_Kyury_Param_c();

    static u8 const m[140];
};


#endif /* D_A_NPC_KYURY_H */
