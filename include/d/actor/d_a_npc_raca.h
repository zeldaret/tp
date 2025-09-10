#ifndef D_A_NPC_RACA_H
#define D_A_NPC_RACA_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Raca_c
 * @brief Falbi
 *
 * @details
 *
*/

struct daNpc_Raca_HIOParam {
    /* 0x0 */ daNpcT_HIOParam common;
};

class daNpc_Raca_HIO_c : public mDoHIO_entry_c {
    /* 0x8 */ daNpc_Raca_HIOParam param;
};

class daNpc_Raca_Param_c {
public:
    /* 80AB8DFC */ ~daNpc_Raca_Param_c();

    static daNpc_Raca_HIOParam const m;
};

class daNpc_Raca_c : public daNpcT_c {
public:
    typedef int (daNpc_Raca_c::*actionFunc)(void*);
    typedef int (daNpc_Raca_c::*cutFunc)(int);

    /* 80AB5CAC */ ~daNpc_Raca_c();
    /* 80AB5DFC */ cPhs__Step create();
    /* 80AB60B8 */ int CreateHeap();
    /* 80AB6514 */ int Delete();
    /* 80AB6548 */ int Execute();
    /* 80AB6568 */ int Draw();
    /* 80AB65FC */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80AB661C */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80AB6674 */ static void* srchNi(void*, void*);
    /* 80AB6700 */ fopAc_ac_c* getNiP();
    /* 80AB67CC */ u8 getType();
    /* 80AB67EC */ BOOL isDelete();
    /* 80AB681C */ void reset();
    /* 80AB6984 */ void afterJntAnm(int);
    /* 80AB6A10 */ void setParam();
    /* 80AB6B0C */ void setAfterTalkMotion();
    /* 80AB6BB0 */ void srchActors();
    /* 80AB6C14 */ BOOL evtTalk();
    /* 80AB6D14 */ BOOL evtCutProc();
    /* 80AB6DDC */ void action();
    /* 80AB6EC8 */ void beforeMove();
    /* 80AB6F40 */ void setAttnPos();
    /* 80AB7180 */ void setCollision();
    /* 80AB72B4 */ int drawDbgInfo();
    /* 80AB72BC */ BOOL selectAction();
    /* 80AB73B0 */ BOOL chkAction(actionFunc);
    /* 80AB73DC */ BOOL setAction(actionFunc);
    /* 80AB7484 */ int wait(void*);
    /* 80AB7710 */ int walk(void*);
    /* 80AB7918 */ int talk(void*);
    /* 80AB8CCC */ daNpc_Raca_c(
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
        i_arcNames) {}
    /* 80AB8DAC */ u16 getEyeballMaterialNo();
    /* 80AB8DB4 */ s32 getHeadJointNo();
    /* 80AB8DBC */ s32 getNeckJointNo();
    /* 80AB8DC4 */ s32 getBackboneJointNo();
    /* 80AB8DCC */ BOOL checkChangeJoint(int);
    /* 80AB8DDC */ BOOL checkRemoveJoint(int);
    /* 80AB8DEC */ s32 getFootLJointNo();
    /* 80AB8DF4 */ s32 getFootRJointNo();

    int getFlowNodeNo() {
        u16 nodeNo = home.angle.x;
        if (nodeNo == 0xffff) {
            return -1;
        }
        return nodeNo;
    }
    u8 getPathID() { return (fopAcM_GetParam(this) & 0xFF00) >> 8; }
    u8 getBitSW() { return (fopAcM_GetParam(this) & 0xFF0000) >> 16; }

    static char* mCutNameList;
    static cutFunc mCutList[1];

private:
    /* 0xE40 */ daNpc_Raca_HIO_c* mHIO;
    /* 0xE44 */ dCcD_Cyl mCyl;
    /* 0xF80 */ u8 mType;
    /* 0xF81 */ u8 field_0xf81[0xf84 - 0xf81];
    /* 0xF84 */ daNpcT_ActorMngr_c mActorMngr[1];
    /* 0xF8C */ actionFunc mPrevAction;
    /* 0xF98 */ actionFunc mAction;
    /* 0xFA4 */ daNpcT_Path_c mPath;
    /* 0xFCC */ u8 field_0xfcc;
    /* 0xFCD */ u8 field_0xfcd[0xfd0 - 0xfcd];
    /* 0xFD0 */ u8 field_0xfd0;
};

STATIC_ASSERT(sizeof(daNpc_Raca_c) == 0xfd4);

#endif /* D_A_NPC_RACA_H */
