#ifndef D_A_NPC_YAMIS_H
#define D_A_NPC_YAMIS_H

#include "d/actor/d_a_npc.h"

struct daNpc_yamiS_HIOParam {
    /* 0x00 */ daNpcT_HIOParam common;
};

class daNpc_yamiS_Param_c {
public:
    /* 80B4CD38 */ virtual ~daNpc_yamiS_Param_c() {}

    static const daNpc_yamiS_HIOParam m;
};

#if DEBUG
class daNpc_yamiS_HIO_c : public mDoHIO_entry_c {
public:
    daNpc_yamiS_HIO_c();

    void listenPropertyEvent(const JORPropertyEvent*);
    void genMessage(JORMContext*);

    daNpc_yamiS_HIOParam m;
};

#define NPC_YAMIS_HIO_CLASS daNpc_yamiS_HIO_c
#else
#define NPC_YAMIS_HIO_CLASS daNpc_yamiS_Param_c
#endif

/**
 * @ingroup actors-npcs
 * @class daNpc_yamiS_c
 * @brief Twili (Short)
 *
 * @details
 *
 */
class daNpc_yamiS_c : public daNpcT_c {
public:
    typedef BOOL (daNpc_yamiS_c::*cutFunc)(int);
    typedef int (daNpc_yamiS_c::*actionFunc)(void*);

    /* 80B4656C */ ~daNpc_yamiS_c();
    /* 80B466A4 */ cPhs__Step create();
    /* 80B46958 */ int CreateHeap();
    /* 80B46DA8 */ int Delete();
    /* 80B46DDC */ int Execute();
    /* 80B46DFC */ int Draw();
    /* 80B46EA4 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80B46EC4 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80B46F1C */ u8 getType();
    /* 80B46F54 */ u32 getFlowNodeNo();
    /* 80B46FB8 */ BOOL isDelete();
    /* 80B47040 */ void reset();
    /* 80B47254 */ void afterJntAnm(int);
    /* 80B472E0 */ void setParam();
    /* 80B473DC */ void setAfterTalkMotion();
    /* 80B4743C */ void srchActors();
    /* 80B47440 */ BOOL evtTalk();
    /* 80B47524 */ BOOL evtCutProc();
    /* 80B475EC */ void action();
    /* 80B476D8 */ void beforeMove();
    /* 80B47750 */ void setAttnPos();
    /* 80B4797C */ void setCollision();
    /* 80B47AE8 */ int drawDbgInfo();
    /* 80B47AF0 */ void drawGhost();
    /* 80B47B5C */ int selectAction();
    /* 80B47BA4 */ BOOL chkAction(int (daNpc_yamiS_c::*)(void*));
    /* 80B47BD0 */ int setAction(int (daNpc_yamiS_c::*)(void*));
    /* 80B47C78 */ int wait(void*);
    /* 80B47F50 */ int talk(void*);
    /* 80B4815C */ BOOL cutStopper(int);
    /* 80B481F0 */ BOOL _cutStopper_Init(int const&);
    /* 80B48238 */ BOOL _cutStopper_Main(int const&);
    /* 80B494D8 */ daNpc_yamiS_c(
        daNpcT_faceMotionAnmData_c const* i_faceMotionAnmData,
        daNpcT_motionAnmData_c const* i_motionAnmData,
        daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_faceMotionSequenceData,
        int i_faceMotionStepNum,
        daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_motionSequenceData, int i_motionStepNum,
        daNpcT_evtData_c const* i_evtData, char** i_arcNames)
        : daNpcT_c(i_faceMotionAnmData, i_motionAnmData, i_faceMotionSequenceData,
                   i_faceMotionStepNum, i_motionSequenceData, i_motionStepNum, i_evtData,
                   i_arcNames) {}
    /* 80B49598 */ u16 getEyeballMaterialNo() { return 1; }
    /* 80B495A0 */ s32 getHeadJointNo() { return 4; }
    /* 80B495A8 */ s32 getNeckJointNo() { return 3; }
    /* 80B495B0 */ s32 getBackboneJointNo() { return 1; }
    /* 80B495B8 */ BOOL checkChangeJoint(int i_joint) { return i_joint == 4; }
    /* 80B495C8 */ BOOL checkRemoveJoint(int i_joint) { return i_joint == 6; }
    /* 80B495D8 */ BOOL evtEndProc() {
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
    /* 0xE40 */ NPC_YAMIS_HIO_CLASS* mpHIO;
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

STATIC_ASSERT(sizeof(daNpc_yamiS_c) == 0xfcc);

#endif /* D_A_NPC_YAMIS_H */
