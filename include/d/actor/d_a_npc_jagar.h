#ifndef D_A_NPC_JAGAR_H
#define D_A_NPC_JAGAR_H

#include "d/actor/d_a_npc.h"
#include "f_op/f_op_actor_mng.h" // <-- Does this get the GetParam function?

/**
 * @ingroup actors-npcs
 * @class daNpc_Jagar_c
 * @brief Jaggle
 *
 * @details
 *
 */

class daNpc_Bou_c; // For action method?

class daNpc_Jagar_c : public daNpcT_c {
public:
    typedef int (daNpc_Jagar_c::*cutFunc)(int);
    typedef int (daNpc_Jagar_c::*actionFunc)(void*);

    enum Type {
        TYPE_0,
        TYPE_1,
        TYPE_2,
        TYPE_3,
        TYPE_4,
    };

    /* 80A1470C */ ~daNpc_Jagar_c();
    /* 80A14858 */ int create();
    /* 80A14B20 */ int CreateHeap();
    /* 80A14F4C */ int Delete();
    /* 80A14F80 */ int Execute();
    /* 80A14FA0 */ int Draw();
    /* 80A15034 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80A15054 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80A150AC */ u8 getType();
    /* 80A150F8 */ int isDelete();
    /* 80A15198 */ void reset();
    /* 80A15364 */ void afterJntAnm(int);
    /* 80A153E8 */ void setParam();
    /* 80A155E4 */ bool checkChangeEvt();
    /* 80A15714 */ void setAfterTalkMotion();
    /* 80A157B4 */ void srchActors();
    /* 80A158A0 */ bool evtTalk();
    /* 80A15940 */ bool evtCutProc();
    /* 80A15A08 */ void action();
    /* 80A15CA4 */ void beforeMove();
    /* 80A15D68 */ void setAttnPos();
    /* 80A1607C */ void setCollision();
    /* 80A161EC */ int drawDbgInfo();
    /* 80A161F4 */ void changeBtp(int*, int*);
    /* 80A16234 */ void selectAction();
    /* 80A162B0 */ int chkAction(int (daNpc_Jagar_c::*)(void*));
    /* 80A162DC */ int setAction(int (daNpc_Jagar_c::*)(void*));
    /* 80A16384 */ int cutClimbUp(int);
    /* 80A16544 */ int cutNeedYourHelp(int);
    /* 80A16CD8 */ int cutAnger(int);
    /* 80A16EFC */ int cutConversationWithBou(int);
    /* 80A1705C */ int cutConfidentialConversation(int);
    /* 80A173D8 */ int cutFindWolf(int);
    /* 80A17898 */ int chkSitMotion();
    /* 80A17924 */ int chkSitMotion2();
    /* 80A17984 */ int chkChuMotion();
    /* 80A179F8 */ int chkToMotion();
    /* 80A17A2C */ void wait(void*);
    /* 80A1856C */ void talkwithBou(void*);
    /* 80A18B74 */ int talk(void*);
    /* 80A1A194 */ daNpc_Jagar_c(daNpcT_faceMotionAnmData_c const* param_1, daNpcT_motionAnmData_c const* param_2,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_3, int param_4,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_5, int param_6,
                                daNpcT_evtData_c const* param_7, char** param_8) :
                                daNpcT_c(param_1, param_2, param_3, param_4, param_5, param_6, param_7, param_8)
                                 {}
    /* 80A1A274 */ s32 getEyeballMaterialNo();
    /* 80A1A27C */ s32 getHeadJointNo();
    /* 80A1A284 */ s32 getNeckJointNo();
    /* 80A1A28C */ s32 getBackboneJointNo();
    /* 80A1A294 */ int checkChangeJoint(int param_1) { return param_1 == 4; }
    /* 80A1A2A4 */ int checkRemoveJoint(int param_1) { return param_1 == 8; }
    /* 80A1A2B4 */ s32 getFootLJointNo();
    /* 80A1A2BC */ s32 getFootRJointNo();

    int getFlowNodeNo() {
        u16 nodeNo = home.angle.x;
        if (nodeNo == 0xffff) {
            return -1;
        }
        return nodeNo;
    }

    u8 getPathID() { return (fopAcM_GetParam(this) & 0xff00) >> 8; }

    static char* mCutNameList[7];
    static cutFunc mCutList[7];
private:
    /* 0x00B0 */ int field_0xb0;
    /* 0x04B6 */ s16 field_0x4b6;
    /* 0x0568 */ u8 field_0x568[0x100c - 0x568];
    /* 0x0B58 */ int field_0xb58;                   // CutAnger int
    /* 0x0B7C */ int field_0xb7c;
    /* 0x0CE0 */ int field_0xce0;                   // CutAnger int
    /* 0x0CFF */ u8 field_0xcff;
    /* 0x0D7A */ short field_0xd7a;                 // CutAnger short
    /* 0x0E30 */ int field_0xe30;
    /* 0x0E44 */ dCcD_Cyl mCyl1;
    /* 0x0F80 */ u8 mType;
    /* 0x0F84 */ daNpcF_ActorMngr_c mActorMngr[5];
    /* 0x0F94 */ daNpcT_ActorMngr_c field_0xf94;
    /* 0x0FE0 */ actionFunc field_0xfe0;
    /* 0x0FE4 */ actionFunc field_0xfe4;
    /* 0x1001 */ u8 field_0x1001;
    /* 0x1002 */ u8 field_0x1002; // Not sure if u8
    /* 0x1003 */ u8 field_0x1003;                   // CutAnger u8
};

// STATIC_ASSERT(sizeof(daNpc_Jagar_c) == 0x172c);

class daNpc_Jagar_Param_c {
public:
    /* 80A1A2C4 */ virtual ~daNpc_Jagar_Param_c() {}

    struct param {
        /* 0x00 */ f32 field_0x00;
        /* 0x04 */ f32 field_0x04;
        /* 0x08 */ f32 field_0x08;
        /* 0x0C */ f32 field_0x0c;
        /* 0x10 */ f32 field_0x10;
        /* 0x14 */ f32 field_0x14;
        /* 0x18 */ f32 field_0x18;
        /* 0x1C */ f32 field_0x1c;
        /* 0x20 */ f32 field_0x20;
        /* 0x24 */ f32 field_0x24;
        /* 0x28 */ f32 field_0x28;
        /* 0x2C */ f32 field_0x2c;
        /* 0x30 */ f32 field_0x30;
        /* 0x34 */ f32 field_0x34;
        /* 0x38 */ f32 field_0x38;
        /* 0x3C */ f32 field_0x3c;
        /* 0x40 */ f32 field_0x40;
        /* 0x44 */ f32 field_0x44;
        /* 0x48 */ s16 field_0x48;
        /* 0x4A */ s16 field_0x4a;
        /* 0x4C */ s16 field_0x4c;
        /* 0x4E */ s16 field_0x4e;
        /* 0x50 */ f32 field_0x50;
        /* 0x54 */ f32 field_0x54;
        /* 0x58 */ f32 field_0x58;
        /* 0x5C */ f32 field_0x5c;
        /* 0x60 */ s16 field_0x60;
        /* 0x62 */ s16 field_0x62;
        /* 0x64 */ int field_0x64;
        /* 0x68 */ int field_0x68;
        /* 0x6C */ f32 field_0x6c;
        /* 0x70 */ f32 field_0x70;
        /* 0x74 */ f32 field_0x74;
        /* 0x78 */ f32 field_0x78;
        /* 0x7C */ f32 field_0x7c;
        /* 0x80 */ f32 field_0x80;
        /* 0x84 */ f32 field_0x84;
        /* 0x88 */ f32 field_0x88;
        /* 0x8C */ f32 field_0x8c;
        /* 0x90 */ f32 field_0x90;
        /* 0x94 */ f32 field_0x94;
        /* 0x98 */ f32 field_0x98;
        /* 0x9C */ f32 field_0x9c;
        /* 0xA0 */ f32 field_0xa0;
        /* 0xA4 */ f32 field_0xa4;
        /* 0xA8 */ f32 field_0xa8;
        /* 0xAC */ s16 field_0xac;
        /* 0xAE */ s16 field_0xae;
        /* 0xB0 */ s16 field_0xb0;
        /* 0xB2 */ s16 field_0xb2;
    };
    static daNpc_Jagar_Param_c::param const m;
};

#endif /* D_A_NPC_JAGAR_H */
