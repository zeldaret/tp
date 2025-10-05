#ifndef D_A_NPC_YAMID_H
#define D_A_NPC_YAMID_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_yamiD_c
 * @brief Twili (Fat)
 *
 * @details
 *
*/

struct daNpc_yamiD_HIOParam {
    /* 0x0 */ daNpcT_HIOParam common;
};

class daNpc_yamiD_Param_c {
public:
    /* 80B45FE0 */ virtual ~daNpc_yamiD_Param_c() {}

    static daNpc_yamiD_HIOParam const m;
};

#if DEBUG
class daNpc_yamiD_HIO_c : public mDoHIO_entry_c {
public:
    daNpc_yamiD_HIO_c();

    void listenPropertyEvent(const JORPropertyEvent*);
    void genMessage(JORMContext*);

    daNpc_yamiD_HIOParam m;
};

#define NPC_YAMID_HIO_CLASS daNpc_yamiD_HIO_c
#else
#define NPC_YAMID_HIO_CLASS daNpc_yamiD_Param_c
#endif

class daNpc_yamiD_c : public daNpcT_c {
public:
    typedef BOOL (daNpc_yamiD_c::*cutFunc)(int);
    typedef int (daNpc_yamiD_c::*actionFunc)(void*);

    /* 80B42F4C */ ~daNpc_yamiD_c();
    /* 80B43084 */ cPhs__Step create();
    /* 80B43338 */ int CreateHeap();
    /* 80B43788 */ int Delete();
    /* 80B437BC */ int Execute();
    /* 80B437DC */ int Draw();
    /* 80B43884 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80B438A4 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80B438FC */ u8 getType();
    /* 80B43934 */ u32 getFlowNodeNo();
    /* 80B43998 */ BOOL isDelete();
    /* 80B43A20 */ void reset();
    /* 80B43C34 */ void afterJntAnm(int);
    /* 80B43CC0 */ void setParam();
    /* 80B43DBC */ void setAfterTalkMotion();
    /* 80B43E1C */ void srchActors();
    /* 80B43E28 */ BOOL evtTalk();
    /* 80B43F0C */ BOOL evtCutProc();
    /* 80B43FD4 */ void action();
    /* 80B440C0 */ void beforeMove();
    /* 80B44138 */ void setAttnPos();
    /* 80B44364 */ void setCollision();
    /* 80B44498 */ int drawDbgInfo();
    /* 80B444A0 */ void drawGhost();
    /* 80B4450C */ int selectAction();
    /* 80B44554 */ BOOL chkAction(int (daNpc_yamiD_c::*)(void*));
    /* 80B44580 */ int setAction(int (daNpc_yamiD_c::*)(void*));
    /* 80B44628 */ int wait(void*);
    /* 80B44900 */ int talk(void*);
    /* 80B44AF8 */ BOOL cutStopper(int);
    /* 80B44B8C */ BOOL _cutStopper_Init(int const&);
    /* 80B44BD4 */ BOOL _cutStopper_Main(int const&);
    /* 80B45E74 */ daNpc_yamiD_c(
            daNpcT_faceMotionAnmData_c const* i_faceMotionAnmData,
            daNpcT_motionAnmData_c const* i_motionAnmData,
            daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_faceMotionSequenceData,
            int i_faceMotionStepNum,
            daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_motionSequenceData,
            int i_motionStepNum,
            daNpcT_evtData_c const* i_evtData,
            char** i_arcNames)
        : daNpcT_c(i_faceMotionAnmData, i_motionAnmData, i_faceMotionSequenceData,
        i_faceMotionStepNum, i_motionSequenceData, i_motionStepNum, i_evtData,
        i_arcNames) {
            OS_REPORT("|%06d:%x|daNpc_yamiD_c -> コンストラクト\n", g_Counter.mCounter0, this);
        }
    /* 80B45F34 */ u16 getEyeballMaterialNo() { return 1; }
    /* 80B45F3C */ s32 getHeadJointNo() { return 4; }
    /* 80B45F44 */ s32 getNeckJointNo() { return 3; }
    /* 80B45F4C */ s32 getBackboneJointNo() { return 1; }
    /* 80B45F54 */ BOOL checkChangeJoint(int i_joint) { return i_joint == 4; }
    /* 80B45F64 */ BOOL checkRemoveJoint(int i_joint) { return i_joint == 6; }
    /* 80B45F74 */ BOOL evtEndProc() {
                        mJntAnm.lookNone(0);
                        eventInfo.setIdx(0);
                        mEvtNo = 0;
                        return TRUE;
                    }

    u8 getPathID() { return (fopAcM_GetParam(this) & 0xFF00) >> 8; }
    int getSwitchBitNo() {
        u32 full_prm = fopAcM_GetParam(this);
        return (full_prm >> 16) & 0xFF;
    }
    BOOL _is_vanish_prm() {
        int reg_r31 = (fopAcM_GetParam(this) >> 28) != 0;
        if (reg_r31 == 15) {
            reg_r31 = 0;
        }

        return reg_r31;
    }

    BOOL is_vanish() { return mVanish; }
    void vanish_on() { mVanish = 1; }
    void vanish_off() { mVanish = 0; }
    void on_CoHit() {
        field_0xe44.OnCoSetBit();
        field_0xe44.OnTgSetBit();
    }
    void off_CoHit() {
        field_0xe44.OffCoSetBit();
        field_0xe44.OffTgSetBit();
    }

    static char* mCutNameList[2];
    static cutFunc mCutList[2];

private:
    /* 0xE40 */ NPC_YAMID_HIO_CLASS* mpHIO;
    /* 0xE44 */ dCcD_Cyl field_0xe44;
    /* 0xF80 */ u8 mType;
    /* 0xF81 */ s8 mVanish;
    /* 0xF82 */ s8 field_0xf82;
    /* 0xF83 */ u8 field_0xf83;
    /* 0xF84 */ actionFunc mNextAction;
    /* 0xF90 */ actionFunc mAction;
    /* 0xF9C */ daNpcT_Path_c mPath;
    /* 0xFC4 */ u8 field_0xfc4;
    /* 0xFC8 */ int field_0xfc8;
};

STATIC_ASSERT(sizeof(daNpc_yamiD_c) == 0xfcc);


#endif /* D_A_NPC_YAMID_H */
