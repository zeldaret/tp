#ifndef D_A_NPC_SEIREI_H
#define D_A_NPC_SEIREI_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Seirei_c
 * @brief Light Spirit Ordona
 *
 * @details
 *
*/

struct daNpc_Seirei_HIOParam {
    /* 0x00 */ daNpcT_HIOParam common;
    /* 0x8C */ f32 force_talk_dist;     // 強制会話距離 - Force Talk Distance
    /* 0x90 */ f32 talk_dist;           // 会話距離 - Talk Distance
};

class daNpc_Seirei_HIO_c : public mDoHIO_entry_c {
    /* 0x8 */ daNpc_Seirei_HIOParam param;
};

class daNpc_Seirei_Param_c {
public:
    /* 80AD7C3C */ virtual ~daNpc_Seirei_Param_c() {}

    static daNpc_Seirei_HIOParam const m;
};

class daNpc_Seirei_c : public daNpcT_c {
public:
    typedef int (daNpc_Seirei_c::*actionFunc)(void*);
    typedef BOOL (daNpc_Seirei_c::*cutFunc)(int);

    /* 80AD572C */ ~daNpc_Seirei_c();
    /* 80AD57C4 */ cPhs__Step create();
    /* 80AD5A7C */ int CreateHeap();
    /* 80AD5BC4 */ int Delete();
    /* 80AD5BF8 */ int Execute();
    /* 80AD5C18 */ int Draw();
    /* 80AD5CC0 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80AD5CE0 */ u8 getType();
    /* 80AD5D2C */ BOOL isDelete();
    /* 80AD5D34 */ void reset();
    /* 80AD5EEC */ void setParam();
    /* 80AD6048 */ BOOL checkChangeEvt();
    /* 80AD6050 */ void srchActors();
    /* 80AD6054 */ BOOL evtTalk();
    /* 80AD6154 */ BOOL evtCutProc();
    /* 80AD621C */ void action();
    /* 80AD62A4 */ void beforeMove();
    /* 80AD6330 */ void setAttnPos();
    /* 80AD6464 */ int drawDbgInfo();
    /* 80AD646C */ bool afterSetMotionAnm(int, int, f32, int);
    /* 80AD6604 */ BOOL selectAction();
    /* 80AD664C */ BOOL chkAction(actionFunc);
    /* 80AD6678 */ BOOL setAction(actionFunc);
    /* 80AD6720 */ void ctrlWaitAnm();
    /* 80AD6808 */ void setPrtcls();
    /* 80AD6A38 */ BOOL chkFirstMeeting();
    /* 80AD6ABC */ BOOL cutConversation(int);
    /* 80AD6C58 */ int wait(void*);
    /* 80AD6D30 */ int talk(void*);
    /* 80AD7BF8 */ daNpc_Seirei_c(
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
    
    int getFlowNodeNo() {
        u16 nodeNo = home.angle.x;
        if (nodeNo == 0xffff) {
            return -1;
        }

        return nodeNo;
    }
    u32 getBitSW() { return (fopAcM_GetParam(this) & 0xFF000) >> 12; }
    bool getDoBtnChkFlag() { return (fopAcM_GetParam(this) & 0x100) == 0; }

    static char* mCutNameList[2];
    static cutFunc mCutList[2];

private:
    /* 0xE40 */ daNpc_Seirei_HIO_c* mHIO;
    /* 0xE44 */ u8 mType;
    /* 0xE45 */ u8 arg0;
    /* 0xE48 */ actionFunc mNextAction;
    /* 0xE54 */ actionFunc mAction;
    /* 0xE60 */ int field_0xe60;
    /* 0xE64 */ u32 mPrtcls[7];
    /* 0xE80 */ bool field_0xe80;
    /* 0xE81 */ u8 field_0xe81[0xe84 - 0xe81];
    /* 0xE84 */ u8 field_0xe84;
};

STATIC_ASSERT(sizeof(daNpc_Seirei_c) == 0xe88);

#endif /* D_A_NPC_SEIREI_H */
