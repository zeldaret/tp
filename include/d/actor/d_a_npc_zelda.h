#ifndef D_A_NPC_ZELDA_H
#define D_A_NPC_ZELDA_H

#include "d/actor/d_a_npc.h"

class daNpc_Zelda_HIO_c;
class daNpc_Zelda_c;

/**
 * @ingroup actors-npcs
 * @class daNpc_Zelda_c
 * @brief Zelda
 *
 * @details
 *
 */
class daNpc_Zelda_c : public daNpcT_c {
public:
    typedef int (daNpc_Zelda_c::*cutFunc)(int);
    typedef int (daNpc_Zelda_c::*actionFunc)(void*);

    /* 80B7512C */ virtual ~daNpc_Zelda_c();
    u8 getPathID() {
        return (fopAcM_GetParam(this) & 0xff00) >> 8;
    }
    int getFlowNodeNo() {
        u16 pitch = home.angle.x;
        return pitch == 0xffff ? -1 : pitch;
    }
    /* 80B7524C */ int create();
    /* 80B75530 */ int CreateHeap();
    /* 80B75978 */ int Delete();
    /* 80B759AC */ int Execute();
    /* 80B759CC */ int Draw();
    /* 80B75A90 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80B75AB0 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80B75B08 */ u8 getType();
    /* 80B75B28 */ int isDelete();
    /* 80B75B30 */ void reset();
    /* 80B75C9C */ void afterJntAnm(int);
    /* 80B75D28 */ int ctrlBtk();
    /* 80B75E34 */ int checkChangeEvt();
    /* 80B75EE8 */ void setParam();
    /* 80B76014 */ void setAfterTalkMotion();
    /* 80B76074 */ void srchActors();
    /* 80B76078 */ int evtTalk();
    /* 80B76118 */ int evtCutProc();
    /* 80B761E0 */ void action();
    /* 80B762CC */ void beforeMove();
    /* 80B76344 */ void setAttnPos();
    /* 80B765D4 */ void setCollision();
    /* 80B76774 */ int drawDbgInfo();
    /* 80B7677C */ int selectAction();
    /* 80B767C4 */ BOOL chkAction(actionFunc);
    /* 80B767F0 */ BOOL setAction(actionFunc);
    /* 80B76898 */ int wait(void*);
    /* 80B76B74 */ int talk(void*);
    /* 80B77DD8 */ daNpc_Zelda_c(daNpcT_faceMotionAnmData_c const* param_0,
                                 daNpcT_motionAnmData_c const* param_1,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2,
                                 int param_3,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4,
                                 int param_5, daNpcT_evtData_c const* param_6, char** param_7) :
    daNpcT_c(param_0, param_1, param_2, param_3, param_4, param_5, param_6, param_7) {
        OS_REPORT("|%06d:%x|daNpc_Zelda_c -> コンストラクト\n", g_Counter.mCounter0, this);
    }
    /* 80B77F14 */ u16 getEyeballRMaterialNo() { return 5; }
    /* 80B77F1C */ u16 getEyeballLMaterialNo() { return 4; }
    /* 80B77F24 */ s32 getHeadJointNo() { return 4; }
    /* 80B77F2C */ s32 getNeckJointNo() { return 3; }
    /* 80B77F34 */ s32 getBackboneJointNo() { return 1; }
    /* 80B77F3C */ int checkChangeJoint(int param_0) { return param_0 == 4; }
    /* 80B77F4C */ int checkRemoveJoint(int param_0) { return param_0 == 17; }

    static const char* mCutNameList;
    static cutFunc mCutList[1];

private:
    /* 0xE40 */ daNpc_Zelda_HIO_c* mHIO;
    /* 0xE44 */ dCcD_Cyl mCyl;
    /* 0xF80 */ u8 field_0xf80;
    /* 0xF84 */ actionFunc mAction1;
    /* 0xF90 */ actionFunc mAction2;
    /* 0xF9C */ u8 field_0xf9c[0xfa0 - 0xf9c];
};

STATIC_ASSERT(sizeof(daNpc_Zelda_c) == 0xfa0);

class daNpc_Zelda_HIOParam {
public:
    /* 0x00 */ daNpcT_HIOParam common;
};

STATIC_ASSERT(sizeof(daNpc_Zelda_HIOParam) == 0x8c);

class daNpc_Zelda_Param_c {
public:
    /* 80B77F5C */ virtual ~daNpc_Zelda_Param_c() {}

    static const daNpc_Zelda_HIOParam m;
};

class daNpc_Zelda_HIO_c
#if DEBUG
    : public mDoHIO_entry_c
#endif
{
public:
    daNpc_Zelda_HIO_c();

    void genMessage(JORMContext* ctx);
    void listenPropertyEvent(const JORPropertyEvent*);

#if DEBUG
    daNpc_Zelda_HIOParam param;
#endif
};

#endif /* D_A_NPC_ZELDA_H */
