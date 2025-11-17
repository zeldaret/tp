#ifndef D_A_NPC_SHAMAN_H
#define D_A_NPC_SHAMAN_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Sha_c
 * @brief Fanadi
 *
 * @details
 *
*/

struct daNpc_Sha_HIOParam {
    /* 0x0 */ daNpcT_HIOParam common;
};

class daNpc_Sha_Param_c {
public:
    /* 80AE6B5C */ virtual ~daNpc_Sha_Param_c() {}

    static daNpc_Sha_HIOParam const m;
};

#if DEBUG
class daNpc_Sha_HIO_c : public mDoHIO_entry_c {
public:
    daNpc_Sha_HIO_c();
    void listenPropertyEvent(const JORPropertyEvent*);
    void genMessage(JORMContext*);

    /* 0x8 */ daNpc_Sha_HIOParam m;
};
#define NPC_SHA_HIO_CLASS daNpc_Sha_HIO_c
#else
#define NPC_SHA_HIO_CLASS daNpc_Sha_Param_c
#endif

class daNpc_Sha_c : public daNpcT_c {
public:
    typedef int (daNpc_Sha_c::*actionFunc)(void*);
    typedef int (daNpc_Sha_c::*cutFunc)(int);
    typedef BOOL (daNpc_Sha_c::*queryFunc)();
    
    /* 80AE2DCC */ ~daNpc_Sha_c();
    /* 80AE2EEC */ cPhs__Step create();
    /* 80AE31A0 */ int CreateHeap();
    /* 80AE35CC */ int Delete();
    /* 80AE3600 */ int Execute();
    /* 80AE3620 */ int Draw();
    /* 80AE36B4 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80AE36D4 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80AE372C */ u8 getType();
    /* 80AE3764 */ BOOL isDelete();
    /* 80AE3798 */ void reset();
    /* 80AE38F0 */ void afterJntAnm(int);
    /* 80AE3974 */ void setParam();
    /* 80AE3A8C */ BOOL checkChangeEvt();
    /* 80AE3B78 */ void setAfterTalkMotion();
    /* 80AE3C24 */ void srchActors();
    /* 80AE3C28 */ BOOL evtTalk();
    /* 80AE3D28 */ BOOL evtCutProc();
    /* 80AE3DF0 */ void action();
    /* 80AE3F80 */ void beforeMove();
    /* 80AE4044 */ void setAttnPos();
    /* 80AE4360 */ void setCollision();
    /* 80AE44B8 */ int drawDbgInfo();
    /* 80AE44C0 */ BOOL selectAction();
    /* 80AE4508 */ BOOL chkAction(actionFunc);
    /* 80AE4534 */ BOOL setAction(actionFunc);
    /* 80AE45DC */ int getSceneChangeNoTableIx();
    /* 80AE48D0 */ void setTempBit(int);
    /* 80AE4974 */ int cutPerformAugury(int);
    /* 80AE4E24 */ int wait(void*);
    /* 80AE50EC */ int talk(void*);
    int test(void*);
    /* 80AE52CC */ BOOL query265();
    /* 80AE52F0 */ BOOL query268();
    /* 80AE5314 */ BOOL query267();
    /* 80AE5338 */ BOOL query078();
    /* 80AE535C */ BOOL query264();
    /* 80AE5380 */ BOOL query266();
    /* 80AE53A4 */ BOOL query542();
    /* 80AE53C8 */ BOOL query461();
    /* 80AE53EC */ BOOL query288();
    /* 80AE5410 */ BOOL query000();
    /* 80AE5418 */ BOOL query999();
    /* 80AE69E0 */ daNpc_Sha_c(
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
            i_arcNames) { OS_REPORT("|%06d:%x|daNpc_Sha_c -> コンストラクト\n", g_Counter.mCounter0, this); }
    /* 80AE6B1C */ u16 getEyeballMaterialNo() { return 1; }
    /* 80AE6B24 */ s32 getHeadJointNo() { return 4; }
    /* 80AE6B2C */ s32 getNeckJointNo() { return 3; }
    /* 80AE6B34 */ s32 getBackboneJointNo() { return 1; }
    /* 80AE6B3C */ BOOL checkChangeJoint(int i_joint) { return i_joint == 4; }
    /* 80AE6B4C */ BOOL checkRemoveJoint(int i_joint) { return i_joint == 8; }

    int getFlowNodeNo() {
        u16 nodeNo = home.angle.x;
        return nodeNo == 0xFFFF ? -1 : nodeNo;
    }

    static char* mCutNameList[2];
    static cutFunc mCutList[2];
    static const u16 mEvtBitLabels[6];
    static const u16 mTmpBitLabels[6];
    static const int mSceneChangeNoTable[48];
    static queryFunc mQueries[48];

private:
    /* 0xE40 */ NPC_SHA_HIO_CLASS* mpHIO;
    /* 0xE44 */ dCcD_Cyl mCyl;
    /* 0xF80 */ u8 mType;
    /* 0xF84 */ actionFunc mNextAction;
    /* 0xF90 */ actionFunc mAction;
    /* 0xF9C */ int mSceneChangeNoTableIx;
    /* 0xFA0 */ u8 field_0xfa0;
    /* 0xFA1 */ u8 field_0xfa1;
    /* 0xFA2 */ u8 field_0xfa2;
    /* 0xFA3 */ u8 field_0xfa3;
    /* 0xFA4 */ u8 field_0xfa4;
};

STATIC_ASSERT(sizeof(daNpc_Sha_c) == 0xfa8);

#endif /* D_A_NPC_SHAMAN_H */
