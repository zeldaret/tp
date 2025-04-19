#ifndef D_A_NPC_URI_H
#define D_A_NPC_URI_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Uri_c
 * @brief Uli
 *
 * @details
 *
 */
class daNpc_Uri_c : public daNpcT_c {
public:
    typedef int (daNpc_Uri_c::*cutFunc)(int);
    typedef int (daNpc_Uri_c::*actionFunc)(void*);

    enum Type {
        TYPE_0,
        TYPE_1,
        TYPE_2,
        TYPE_3,
        TYPE_4,
        TYPE_5,
        TYPE_6,
    };

    /* 80B267AC */ ~daNpc_Uri_c();
    /* 80B268F8 */ int create();
    /* 80B26BE4 */ int CreateHeap();
    /* 80B2708C */ int Delete();
    /* 80B270C0 */ int Execute();
    /* 80B270E0 */ int Draw();
    /* 80B27174 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80B27194 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80B271EC */ u8 getType();
    /* 80B27260 */ int isDelete();
    /* 80B272F0 */ void reset();
    /* 80B27750 */ void afterJntAnm(int);
    /* 80B27820 */ void setParam();
    /* 80B27994 */ BOOL checkChangeEvt();
    /* 80B27B3C */ void setAfterTalkMotion();
    /* 80B27BF0 */ void srchActors();
    /* 80B27C8C */ BOOL evtTalk();
    /* 80B27D2C */ BOOL evtCutProc();
    /* 80B27DF4 */ void action();
    /* 80B27F14 */ void beforeMove();
    /* 80B27FD8 */ void setAttnPos();
    /* 80B28318 */ void setCollision();
    /* 80B284D4 */ int drawDbgInfo();
    /* 80B284DC */ void drawOtherMdl();
    /* 80B285B4 */ bool afterSetMotionAnm(int, int, f32, int);
    /* 80B285EC */ void changeBck(int*, int*);
    /* 80B28618 */ void changeBtp(int*, int*);
    /* 80B28644 */ int selectAction();
    /* 80B28794 */ int chkAction(int (daNpc_Uri_c::*)(void*));
    /* 80B287C0 */ int setAction(int (daNpc_Uri_c::*)(void*));
    /* 80B28868 */ BOOL chkPlayerCarryBasket();
    /* 80B288DC */ BOOL chkPlayerGetWoodShield();
    /* 80B28910 */ int getTutorialCond(cXyz);
    /* 80B28FB8 */ int cutConversation(int);
    /* 80B29198 */ int cutStartCarryTutorial(int);
    /* 80B293C0 */ int cutEndCarryTutorial(int);
    /* 80B296B8 */ int cutConversationWithMoi(int);
    /* 80B2985C */ int cutFindWolf(int);
    /* 80B29BA4 */ int cutMeetingAgain(int);
    /* 80B29EA0 */ int krun(void*);
    /* 80B2A1B4 */ int wait(void*);
    /* 80B2AB60 */ int walk(void*);
    /* 80B2B24C */ int sitWait(void*);
    /* 80B2B7C0 */ int talk(void*);
    /* 80B2CC64 */ daNpc_Uri_c(daNpcT_faceMotionAnmData_c const* param_1,
                               daNpcT_motionAnmData_c const* param_2,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_3,
                               int param_4,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_5,
                               int param_6, daNpcT_evtData_c const* param_7, char** param_8)
        : daNpcT_c(param_1, param_2, param_3, param_4, param_5, param_6, param_7, param_8) {}
    /* 80B2CD44 */ s32 getEyeballMaterialNo() { return 2; }
    /* 80B2CD4C */ s32 getHeadJointNo() { return 4; }
    /* 80B2CD54 */ s32 getNeckJointNo() { return 3; }
    /* 80B2CD5C */ s32 getBackboneJointNo() { return 1; }
    /* 80B2CD64 */ BOOL checkChangeJoint(int param_0) { return param_0 == 4; }
    /* 80B2CD74 */ BOOL checkRemoveJoint(int param_0) { return param_0 == 8; }
    /* 80B2CD84 */ s32 getFootLJointNo() { return 25; }
    /* 80B2CD8C */ s32 getFootRJointNo() { return 28; }

    int getFlowNodeNo() {
        u16 nodeNo = home.angle.x;
        if (nodeNo == 0xffff) {
            return -1;
        }
        return nodeNo;
    }

    u8 getBitSW() { return (fopAcM_GetParam(this) & 0xff0000) >> 16; }

    u8 getPathID() { return (fopAcM_GetParam(this) & 0xff00) >> 8; }

    static const char* mCutNameList[7];
    static cutFunc mCutList[7];

private:
    /* 0x0E40 */ int field_0xe40;
    /* 0x0E44 */ J3DModel* mpModel[1];
    /* 0x0E48 */ dCcD_Cyl mCyl;
    /* 0x0F84 */ u8 mType;
    /* 0x0F88 */ daNpcT_ActorMngr_c mActorMngr[2];
    /* 0x0F98 */ daNpcT_Path_c mPath;
    /* 0x0FC0 */ actionFunc field_0xfc0[2];
    /* 0x0FD8 */ cXyz field_0xfd8;
    /* 0x0FE4 */ csXyz field_0xfe4;
    /* 0x0FEC */ int field_0xfec;
    /* 0x0FF0 */ int field_0xff0;
    /* 0x0FF4 */ int field_0xff4;
    /* 0x0FF8 */ int field_0xff8;
    /* 0x0FFC */ int field_0xffc;
    /* 0x1000 */ f32 field_0x1000;
    /* 0x1004 */ f32 field_0x1004;
    /* 0x1008 */ u8 field_0x1008;
    /* 0x1009 */ u8 field_0x1009;
    /* 0x100A */ u8 field_0x100a;
    /* 0x100B */ u8 field_0x100b;
    /* 0x100C */ u8 field_0x100c;
    /* 0x100D */ u8 field_0x100d;
    /* 0x100E */ u8 field_0x100e;
    /* 0x100F */ u8 field_0x100f;
    /* 0x1010 */ u8 field_0x1010;
    /* 0x1011 */ u8 field_0x1011;
    /* 0x1012 */ u8 field_0x1012;
    /* 0x1014 */ int field_0x1014;
};

STATIC_ASSERT(sizeof(daNpc_Uri_c) == 0x1018);

struct daNpc_Uri_HIOParam {
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
    /* 0x64 */ u8 field_0x64[8];
    /* 0x6C */ f32 field_0x6c;
    /* 0x70 */ u8 field_0x70[28];
    /* 0x8C */ s16 field_0x8c;
    /* 0x8E */ s16 field_0x8e;
    /* 0x90 */ s16 field_0x90;
    /* 0x92 */ s16 field_0x92;
    /* 0x94 */ s16 field_0x94;
    /* 0x96 */ s16 field_0x96;
    /* 0x98 */ f32 field_0x98;
    /* 0x9C */ f32 field_0x9c;
    /* 0xA0 */ f32 field_0xa0;
    /* 0xA4 */ f32 field_0xa4;
    /* 0xA8 */ f32 field_0xa8;
};

class daNpc_Uri_Param_c {
public:
    /* 80B2CD94 */ virtual ~daNpc_Uri_Param_c() {};

    static daNpc_Uri_HIOParam const m;
};

#endif /* D_A_NPC_URI_H */
