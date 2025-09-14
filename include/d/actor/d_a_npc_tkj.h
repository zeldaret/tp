#ifndef D_A_NPC_TKJ_H
#define D_A_NPC_TKJ_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpcTkj_c
 * @brief Oocca
 *
 * @details
 *
 */
class daNpcTkj_c : public daNpcT_c {
public:
    typedef int (daNpcTkj_c::*ActionFunc)(void*);

    /* 80573850 */ int create();
    /* 80573B18 */ int CreateHeap();
    /* 80573F68 */ int Delete();
    /* 80573F9C */ int Execute();
    /* 80573FBC */ int Draw();
    /* 80574058 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80574078 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 805740D0 */ int getType();
    /* 80574108 */ int getFlowNodeNo();
    /* 80574124 */ int isDelete();
    /* 8057413C */ void reset();
    /* 805742C8 */ void srchActors();
    /* 80574858 */ int selectAction();
    /* 805748A8 */ BOOL chkAction(ActionFunc);
    /* 805748D4 */ int setAction(ActionFunc);
    /* 8057497C */ int wait(void*);
    /* 80574B30 */ int talk(void*);
    /* 80574D28 */ int cutLv7Start(int);
    
    /* 805763B0 */ daNpcTkj_c(daNpcT_faceMotionAnmData_c const* i_faceMotionAnmData,
                              daNpcT_motionAnmData_c const* i_motionAnmData,
                              daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_faceMotionSequenceData,
                              int i_faceMotionStepNum,
                              daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_motionSequenceData, int i_motionStepNum,
                              daNpcT_evtData_c const* i_evtData, char** i_arcNames)
                    : daNpcT_c(i_faceMotionAnmData, i_motionAnmData, i_faceMotionSequenceData,
                               i_faceMotionStepNum, i_motionSequenceData, i_motionStepNum, i_evtData,
                               i_arcNames)
                    {
                        OS_REPORT("|%06d:%x|daNpcTkj_c -> コンストラクト\n", g_Counter.mCounter0, this);
                    }

    /* 8057372C */ virtual ~daNpcTkj_c();
    /* 8057650C */ virtual BOOL checkChangeJoint(int i_jointNo) { return i_jointNo == 17; }
    /* 8057651C */ virtual BOOL checkRemoveJoint(int i_jointNo) { return i_jointNo == 19; }
    /* 80576504 */ virtual s32 getBackboneJointNo() { return 15; }
    /* 805764FC */ virtual s32 getNeckJointNo() { return 16; }
    /* 805764F4 */ virtual s32 getHeadJointNo() { return 17; }
    /* 805764EC */ virtual u16 getEyeballMaterialNo() { return 2; }
    /* 80575280 */ virtual inline void setParam();
    /* 805742D4 */ virtual BOOL evtTalk();
    /* 805743B8 */ virtual BOOL evtCutProc();
    /* 80574268 */ virtual void setAfterTalkMotion();
    /* 8057449C */ virtual void action();
    /* 8057538C */ virtual inline void beforeMove();
    /* 80574524 */ virtual void setAttnPos();
    /* 80574770 */ virtual void setCollision();
    /* 80574850 */ virtual int drawDbgInfo();

    int getPath() { return (fopAcM_GetParam(this) & 0xFF00) >> 8; }

    static char* mCutNameList[2];
    static int (daNpcTkj_c::*mCutList[])(int);

private:
    /* 0xE40 */ u8 field_0xE40[0xE44 - 0xE40];
    /* 0xE44 */ dCcD_Cyl mCcCyl;
    /* 0xF80 */ u8 mType;
    /* 0xF84 */ ActionFunc field_0xf84;
    /* 0xF90 */ ActionFunc mAction;
    /* 0xF9C */ u8 field_0xf9c;
    /* 0xFA0 */ int mItemNo;
};

STATIC_ASSERT(sizeof(daNpcTkj_c) == 0xfa4);

struct daNpc_Tkj_HIOParam {
    /* 0x00 */ daNpcT_HIOParam common;
};
class daNpc_Tkj_Param_c {
public:
    /* 8057652C */ virtual ~daNpc_Tkj_Param_c() {}

    static const daNpc_Tkj_HIOParam m;
};

#endif /* D_A_NPC_TKJ_H */
