#ifndef D_A_NPC_ZANB_H
#define D_A_NPC_ZANB_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_zanB_c
 * @brief Zant Boss (Unused?)
 *
 * @details
 *
*/

struct daNpc_zanB_HIOParam {
    /* 0x00 */ daNpcT_HIOParam common;
};

class daNpc_zanB_Param_c {
public:
    /* 80B6BC58 */ virtual ~daNpc_zanB_Param_c() {}

    static daNpc_zanB_HIOParam const m;
};

#if DEBUG
class daNpc_zanB_HIO_c : public mDoHIO_entry_c {
public:
    daNpc_zanB_HIO_c();
    void listenPropertyEvent(const JORPropertyEvent*);
    void genMessage(JORMContext*);

    /* 0x8 */ daNpc_zanB_HIOParam m;
};
#define NPC_ZANB_HIO_CLASS daNpc_zanB_HIO_c
#else
#define NPC_ZANB_HIO_CLASS daNpc_zanB_Param_c
#endif

class daNpc_zanB_c : public daNpcT_c {
public:
    typedef int (daNpc_zanB_c::*actionFunc)(void*);
    typedef int (daNpc_zanB_c::*cutFunc)(int);
    
    /* 80B68F2C */ ~daNpc_zanB_c();
    /* 80B6904C */ cPhs__Step create();
    /* 80B69330 */ int CreateHeap();
    /* 80B6975C */ int Delete();
    /* 80B69790 */ int Execute();
    /* 80B697B0 */ int Draw();
    /* 80B69844 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80B69864 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80B698BC */ u8 getType();
    /* 80B698DC */ BOOL isDelete();
    /* 80B698E4 */ void reset();
    /* 80B69A3C */ void afterJntAnm(int);
    /* 80B69AC8 */ BOOL checkChangeEvt();
    /* 80B69B7C */ void setParam();
    /* 80B69CA8 */ void setAfterTalkMotion();
    /* 80B69D08 */ void srchActors();
    /* 80B69D0C */ BOOL evtTalk();
    /* 80B69DAC */ BOOL evtCutProc();
    /* 80B69E74 */ void action();
    /* 80B69F60 */ void beforeMove();
    /* 80B69FD8 */ void setAttnPos();
    /* 80B6A268 */ void setCollision();
    /* 80B6A408 */ int drawDbgInfo();
    /* 80B6A410 */ void drawGhost();
    /* 80B6A47C */ BOOL selectAction();
    /* 80B6A4C4 */ BOOL chkAction(actionFunc);
    /* 80B6A4F0 */ BOOL setAction(actionFunc);
    /* 80B6A598 */ int wait(void*);
    /* 80B6A874 */ int talk(void*);
    int test(void*);
    /* 80B6BADC */ daNpc_zanB_c(
                daNpcT_faceMotionAnmData_c const* i_faceMotionAnmData,
        daNpcT_motionAnmData_c const* i_motionAnmData,
        daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_faceMotionSequenceData,
        int i_faceMotionStepNum,
        daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_motionSequenceData, int i_motionStepNum,
        daNpcT_evtData_c const* i_evtData, char** i_arcNames)
        : daNpcT_c(i_faceMotionAnmData, i_motionAnmData, i_faceMotionSequenceData,
                i_faceMotionStepNum, i_motionSequenceData, i_motionStepNum, i_evtData,
                i_arcNames) {
            OS_REPORT("|%06d:%x|daNpc_zanB_c -> コンストラクト\n", g_Counter.mCounter0, this);
        }
    /* 80B6BC18 */ u16 getEyeballMaterialNo() { return 4; }
    /* 80B6BC20 */ s32 getHeadJointNo() { return 3; }
    /* 80B6BC28 */ s32 getNeckJointNo() { return 2; }
    /* 80B6BC30 */ s32 getBackboneJointNo() { return 1; }
    /* 80B6BC38 */ BOOL checkChangeJoint(int i_joint) { return i_joint == 3; }
    /* 80B6BC48 */ BOOL checkRemoveJoint(int i_joint) { return i_joint == 0x12; }

    int getFlowNodeNo() {
        u16 nodeNo = home.angle.x;
        if (nodeNo == 0xFFFF) {
            return -1;
        }
        return nodeNo;
    }

    static char* mCutNameList[1];
    static cutFunc mCutList[1];

private:
    /* 0xE40 */ NPC_ZANB_HIO_CLASS* mHIO;
    /* 0xE44 */ dCcD_Cyl mCyl;
    /* 0xF80 */ u8 mType;
    /* 0xF84 */ actionFunc mNextAction;
    /* 0xF90 */ actionFunc mAction;
    /* 0xF9C */ u8 field_0xf9c;
};

STATIC_ASSERT(sizeof(daNpc_zanB_c) == 0xfa0);

#endif /* D_A_NPC_ZANB_H */
