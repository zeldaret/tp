#ifndef D_A_NPC_JAGAR_H
#define D_A_NPC_JAGAR_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Jagar_c
 * @brief Jaggle
 *
 * @details
 *
 */
class daNpc_Jagar_c : public fopAc_ac_c {
public:
    /* 80A1470C */ ~daNpc_Jagar_c();
    /* 80A14858 */ int create();
    /* 80A14B20 */ int CreateHeap();
    /* 80A14F4C */ int Delete();
    /* 80A14F80 */ int Execute();
    /* 80A14FA0 */ int Draw();
    /* 80A15034 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80A15054 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80A150AC */ void getType();
    /* 80A150F8 */ int isDelete();
    /* 80A15198 */ void reset();
    /* 80A15364 */ void afterJntAnm(int);
    /* 80A153E8 */ void setParam();
    /* 80A155E4 */ void checkChangeEvt();
    /* 80A15714 */ void setAfterTalkMotion();
    /* 80A157B4 */ void srchActors();
    /* 80A158A0 */ void evtTalk();
    /* 80A15940 */ void evtCutProc();
    /* 80A15A08 */ void action();
    /* 80A15CA4 */ void beforeMove();
    /* 80A15D68 */ void setAttnPos();
    /* 80A1607C */ void setCollision();
    /* 80A161EC */ bool drawDbgInfo();
    /* 80A161F4 */ void changeBtp(int*, int*);
    /* 80A16234 */ void selectAction();
    /* 80A162B0 */ void chkAction(int (daNpc_Jagar_c::*)(void*));
    /* 80A162DC */ void setAction(int (daNpc_Jagar_c::*)(void*));
    /* 80A16384 */ void cutClimbUp(int);
    /* 80A16544 */ void cutNeedYourHelp(int);
    /* 80A16CD8 */ void cutAnger(int);
    /* 80A16EFC */ void cutConversationWithBou(int);
    /* 80A1705C */ void cutConfidentialConversation(int);
    /* 80A173D8 */ void cutFindWolf(int);
    /* 80A17898 */ void chkSitMotion();
    /* 80A17924 */ void chkSitMotion2();
    /* 80A17984 */ void chkChuMotion();
    /* 80A179F8 */ void chkToMotion();
    /* 80A17A2C */ void wait(void*);
    /* 80A1856C */ void talkwithBou(void*);
    /* 80A18B74 */ void talk(void*);
    /* 80A1A194 */ daNpc_Jagar_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                 daNpcT_evtData_c const*, char**);
    /* 80A1A274 */ s32 getEyeballMaterialNo();
    /* 80A1A27C */ s32 getHeadJointNo();
    /* 80A1A284 */ s32 getNeckJointNo();
    /* 80A1A28C */ bool getBackboneJointNo();
    /* 80A1A294 */ void checkChangeJoint(int);
    /* 80A1A2A4 */ void checkRemoveJoint(int);
    /* 80A1A2B4 */ s32 getFootLJointNo();
    /* 80A1A2BC */ s32 getFootRJointNo();

    static void* mCutNameList[7];
    static u8 mCutList[84];

private:
    /* 0x568 */ u8 field_0x568[0x100c - 0x568];
    /* 0x0F80 */ u8 mType;
    /* 0x0F84 */ daNpcF_ActorMngr_c mActorMngr[5];
    
};

STATIC_ASSERT(sizeof(daNpc_Jagar_c) == 0x100c);

class daNpc_Jagar_Param_c {
public:
    /* 80A1A2C4 */ ~daNpc_Jagar_Param_c();

    struct param {
        float field_0;  // 160.0f
        float field_1;  // -3.0f
        float field_2;  // 1.0f
        float field_3;  // 400.0f
        float field_4;  // 255.0f
        float field_5;  // 160.0f
        float field_6;  // 35.0f
        float field_7;  // 30.0f
        float field_8;  // 0.0f
        float field_9;  // 0.0f
        float field_10; // 10.0f
        float field_11; // -10.0f
        float field_12; // 30.0f
        float field_13; // -10.0f
        float field_14; // 45.0f
        float field_15; // -45.0f
        float field_16; // 0.6f
        float field_17; // 12.0f
        int field_18;   // 3
        int field_19;   // 6
        int field_20;   // 5
        int field_21;   // 6
        float field_22; // 110.0f
        float field_23; // 500.0f
        float field_24; // 300.0f
        float field_25; // -300.0f
        float field_26; // 60
        int field_27;   // 8
        float field_28; // 0.0f
        float field_29; // 0.0f
        float field_30; // 0.0f
        float field_31; // 4.0f
        float field_32; // 0.0f
        float field_33; // 0.0f
        float field_34; // 0.0f
        float field_35; // 0.0f
        float field_36; // 0.0f
        float field_37; // 0.0f
        float field_38; // 0.0f
        float field_39; // 1400.0f
        float field_40; // 200.0f
        float field_41; // -800.0f
        float field_42; // 16.0f
        float field_43; // 1800.0f
    };
    static daNpc_Jagar_Param_c::param const m;
};

#endif /* D_A_NPC_JAGAR_H */
