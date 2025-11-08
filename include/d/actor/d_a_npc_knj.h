#ifndef D_A_NPC_KNJ_H
#define D_A_NPC_KNJ_H

#include "d/actor/d_a_npc.h"

struct daNpc_Knj_HIOParam {
    /* 0x00 */ daNpcT_HIOParam common;
};

class daNpc_Knj_Param_c {
public:
    /* 80A6FD10 */ virtual ~daNpc_Knj_Param_c() {}

    static const daNpc_Knj_HIOParam m;
};

#if DEBUG
class daNpc_Knj_HIO_c : public mDoHIO_entry_c {
public:
    daNpc_Knj_HIO_c();

    void listenPropertyEvent(const JORPropertyEvent*);
    void genMessage(JORMContext*);

    daNpc_Knj_HIOParam m;
};

#define NPC_KNJ_HIO_CLASS daNpc_Knj_HIO_c
#else
#define NPC_KNJ_HIO_CLASS daNpc_Knj_Param_c
#endif

/**
 * @ingroup actors-npcs
 * @class daNpc_Knj_c
 * @brief Sage
 *
 * @details
 *
 */
class daNpc_Knj_c : public daNpcT_c {
public:
    typedef int (daNpc_Knj_c::*actionFunc)(void*);
    typedef int (daNpc_Knj_c::*cutFunc)(int);

    /* 80A4356C */ ~daNpc_Knj_c();
    /* 80A43608 */ int create();
    /* 80A43848 */ int CreateHeap();
    /* 80A439A0 */ int Delete();
    /* 80A439D4 */ int Execute();
    /* 80A439F4 */ int Draw();
    /* 80A43A88 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80A43AA8 */ u8 getType();
    /* 80A43B1C */ int getFlowNodeNo();
    /* 80A43B38 */ BOOL isDelete();
    /* 80A43B40 */ void reset();
    /* 80A43C64 */ void setParam();
    /* 80A43D58 */ void srchActors();
    /* 80A43D5C */ BOOL evtTalk();
    /* 80A43E5C */ BOOL evtCutProc();
    /* 80A43F24 */ void action();
    /* 80A43FAC */ void beforeMove();
    /* 80A44024 */ void setAttnPos();
    /* 80A44080 */ BOOL drawDbgInfo();
    /* 80A44088 */ bool afterSetMotionAnm(int, int, f32, int);
    /* 80A44264 */ void drawGhost();
    /* 80A442D0 */ int selectAction();
    /* 80A44318 */ BOOL chkAction(actionFunc);
    /* 80A44344 */ int setAction(actionFunc);
    /* 80A443EC */ int wait(void*);
    /* 80A44598 */ int talk(void*);
    /* 80A45460 */ daNpc_Knj_c(
        daNpcT_faceMotionAnmData_c const* i_faceMotionAnmData,
        daNpcT_motionAnmData_c const* i_motionAnmData,
        daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_faceMotionSequenceData,
        int i_faceMotionStepNum,
        daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_motionSequenceData, int i_motionStepNum,
        daNpcT_evtData_c const* i_evtData, char** i_arcNames)
        : daNpcT_c(i_faceMotionAnmData, i_motionAnmData, i_faceMotionSequenceData,
                   i_faceMotionStepNum, i_motionSequenceData, i_motionStepNum, i_evtData,
                   i_arcNames) {}

    static char* mCutNameList[1];
    static cutFunc mCutList[1];

private:
    /* 0xE40 */ NPC_KNJ_HIO_CLASS* mpHIO;
    /* 0xE44 */ u8 mType;
    /* 0xE48 */ actionFunc mNextAction;
    /* 0xE54 */ actionFunc mAction;
    /* 0xE60 */ u8 field_0xe60[0xe64 - 0xe60];
    /* 0xE64 */ int field_0xe64;
};

STATIC_ASSERT(sizeof(daNpc_Knj_c) == 0xe68);

#endif /* D_A_NPC_KNJ_H */
