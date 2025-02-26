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

class daNpc_Bou_c; // Temporary

class daNpc_Jagar_c : public daNpcT_c {
public:
    typedef int (daNpc_Jagar_c::*cutFunc)(int);
    typedef int (daNpc_Jagar_c::*actionFunc)(void*);

    enum Type {
        TYPE_0,
        TYPE_1,
        TYPE_2,
        TYPE_3,
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
    /* 80A155E4 */ BOOL checkChangeEvt();
    /* 80A15714 */ void setAfterTalkMotion();
    /* 80A157B4 */ int srchActors();
    /* 80A158A0 */ BOOL evtTalk();
    /* 80A15940 */ BOOL evtCutProc();
    /* 80A15A08 */ void action();
    /* 80A15CA4 */ void beforeMove();
    /* 80A15D68 */ void setAttnPos();
    /* 80A1607C */ void setCollision();
    /* 80A161EC */ int drawDbgInfo();
    /* 80A161F4 */ void changeBtp(int*, int*);
    /* 80A16234 */ int selectAction();
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
    /* 80A17A2C */ int wait(void*);
    /* 80A1856C */ int talkwithBou(void*);
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
    /* 80A1A294 */ BOOL checkChangeJoint(int param_1) { return param_1 == 4; }
    /* 80A1A2A4 */ BOOL checkRemoveJoint(int param_1) { return param_1 == 8; }
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
    /* 0x0E44 */ dCcD_Cyl mCyl1;
    /* 0x0F80 */ u8 mType;
    /* 0x0F84 */ daNpcT_ActorMngr_c mActorMngr[5];
    /* 0x0FD4 */ actionFunc field_0xfd4;
    /* 0x0FE0 */ actionFunc field_0xfe0;
    /* 0x0FE4 */ actionFunc field_0xfe4;
    /* 0x0FEC */ int field_0xfec;
    /* 0x0FF0 */ int field_0xff0;
    /* 0x0FF4 */ int field_0xff4;
    /* 0x0FF8 */ int field_0xff8;
    /* 0x1000 */ u8 field_0x1000;
    /* 0x1001 */ u8 field_0x1001;
    /* 0x1002 */ u8 field_0x1002;
    /* 0x1003 */ u8 field_0x1003;
    /* 0x1004 */ u8 field_0x1004;
    /* 0x1005 */ u8 field_0x1005;
    /* 0x1008 */ int field_0x1008;
};

// STATIC_ASSERT(sizeof(daNpc_Jagar_c) == 0x100c); // Temporary omission

class daNpc_Jagar_Param_c {
public:
    /* 80A1A2C4 */ virtual ~daNpc_Jagar_Param_c() {}

    struct param {
        /* 0x00 */ f32 field_0x00;  // 170.0f
        /* 0x04 */ f32 field_0x04;  // -3.0f
        /* 0x08 */ f32 field_0x08;  // 1.0f
        /* 0x0C */ f32 field_0x0c;  // 400.0f
        /* 0x10 */ f32 field_0x10;  // 255.0f
        /* 0x14 */ f32 field_0x14;  // 160.0f
        /* 0x18 */ f32 field_0x18;  // 35.0f
        /* 0x1C */ f32 field_0x1c;  // 30.0f
        /* 0x20 */ f32 field_0x20;  // 0.0f
        /* 0x24 */ f32 field_0x24;  // 0.0f
        /* 0x28 */ f32 field_0x28;  // 10.0f
        /* 0x2C */ f32 field_0x2c;  // -10.0f
        /* 0x30 */ f32 field_0x30;  // 30.0f
        /* 0x34 */ f32 field_0x34;  // -10.0f
        /* 0x38 */ f32 field_0x38;  // 45.0f
        /* 0x3C */ f32 field_0x3c;  // -45.0f
        /* 0x40 */ f32 field_0x40;  // 0.6f
        /* 0x44 */ f32 field_0x44;  // 12.0f
        /* 0x48 */ s16 field_0x48;
        /* 0x4A */ s16 field_0x4a;
        /* 0x4C */ s16 field_0x4c;
        /* 0x4E */ s16 field_0x4e;
        /* 0x50 */ f32 field_0x50;  // 110.0f
        /* 0x54 */ f32 field_0x54;  // 500.0f
        /* 0x58 */ f32 field_0x58;  // 300.0f
        /* 0x5C */ f32 field_0x5c;  // -300.0f
        /* 0x60 */ s16 field_0x60;  // 60
        /* 0x62 */ s16 field_0x62;  // 8
        /* 0x64 */ f32 field_0x64;  // 0.0f
        /* 0x68 */ f32 field_0x68;  // 0.0f
        /* 0x6C */ f32 field_0x6c;  // 4.0f
        /* 0x70 */ f32 field_0x70;  // 0.0f
        /* 0x74 */ f32 field_0x74;  // 0.0f
        /* 0x78 */ f32 field_0x78;  // 0.0f
        /* 0x7C */ f32 field_0x7c;  // 0.0f
        /* 0x80 */ f32 field_0x80;  // 0.0f
        /* 0x84 */ f32 field_0x84;  // 0.0f
        /* 0x88 */ f32 field_0x88;  // 0.0f
        /* 0x8C */ f32 field_0x8c;  // 1400.0f
        /* 0x90 */ f32 field_0x90;  // 200.0f
        /* 0x94 */ f32 field_0x94;  // -800.0f
        /* 0x98 */ f32 field_0x98;  // 16.0f
        /* 0x9C */ f32 field_0x9c;  // 1800.0f
        
    };
    static daNpc_Jagar_Param_c::param const m;
};

#endif /* D_A_NPC_JAGAR_H */
