#ifndef D_A_NPC_GND_H
#define D_A_NPC_GND_H

#include "d/actor/d_a_npc.h"

struct daNpc_Gnd_HIOParam {
    /* 0x00 */ daNpcT_HIOParam common;
};

class daNpc_Gnd_Param_c {
public:
    /* 809BE434 */ virtual ~daNpc_Gnd_Param_c() {}

    static const daNpc_Gnd_HIOParam m;
};

#if DEBUG
class daNpc_Gnd_HIO_c : public mDoHIO_entry_c {
public:
    daNpc_Gnd_HIO_c();

    void listenPropertyEvent(const JORPropertyEvent*);
    void genMessage(JORMContext*);

    daNpc_Gnd_HIOParam m;
};

#define NPC_GND_HIO_CLASS daNpc_Gnd_HIO_c
#else
#define NPC_GND_HIO_CLASS daNpc_Gnd_Param_c
#endif

/**
 * @ingroup actors-npcs
 * @class daNpc_Gnd_c
 * @brief Ganondorf
 *
 * @details
 *
 */
class daNpc_Gnd_c : public daNpcT_c {
public:
    typedef int (daNpc_Gnd_c::*cutFunc)(int);

    enum Type {
        TYPE_0,
        TYPE_1,
    };

    /* 809BB60C */ ~daNpc_Gnd_c();
    /* 809BB730 */ int create();
    /* 809BB9D4 */ int CreateHeap();
    /* 809BBE2C */ int Delete();
    /* 809BBE60 */ int Execute();
    /* 809BBE80 */ int Draw();
    /* 809BBF44 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 809BBF64 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 809BBFBC */ u8 getType();
    /* 809BBFDC */ int getFlowNodeNo();
    /* 809BBFF8 */ int isDelete();
    /* 809BC028 */ void reset();
    /* 809BC168 */ void afterJntAnm(int);
    /* 809BC1F4 */ BOOL ctrlBtk();
    /* 809BC328 */ void setParam();
    /* 809BC448 */ void setAfterTalkMotion();
    /* 809BC4A8 */ void srchActors();
    /* 809BC4AC */ BOOL evtTalk();
    /* 809BC5AC */ BOOL evtCutProc();
    /* 809BC674 */ void action();
    /* 809BC760 */ void beforeMove();
    /* 809BC7D8 */ void setAttnPos();
    /* 809BCA14 */ void setCollision();
    /* 809BCB48 */ int drawDbgInfo();
    /* 809BCB50 */ bool afterSetMotionAnm(int, int, f32, int);
    /* 809BCCE8 */ int selectAction();
    /* 809BCD30 */ int chkAction(int (daNpc_Gnd_c::*)(void*));
    /* 809BCD5C */ int setAction(int (daNpc_Gnd_c::*)(void*));
    /* 809BCE04 */ int wait(void*);
    /* 809BD050 */ int talk(void*);
    /* 809BE2D0 */ daNpc_Gnd_c(
        daNpcT_faceMotionAnmData_c const* i_faceMotionAnmData,
        daNpcT_motionAnmData_c const* i_motionAnmData,
        daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_faceMotionSequenceData,
        int i_faceMotionStepNum,
        daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_motionSequenceData, int i_motionStepNum,
        daNpcT_evtData_c const* i_evtData, char** i_arcNames)
        : daNpcT_c(i_faceMotionAnmData, i_motionAnmData, i_faceMotionSequenceData,
                   i_faceMotionStepNum, i_motionSequenceData, i_motionStepNum, i_evtData,
                   i_arcNames) {
        // "|%06d:%x|daNpc_Gnd_c -> Construct\n"
        OS_REPORT("|%06d:%x|daNpc_Gnd_c -> コンストラクト\n", g_Counter.mCounter0, this);
    }
    /* 809BE40C */ u16 getEyeballRMaterialNo() { return 3; }
    /* 809BE414 */ u16 getEyeballLMaterialNo() { return 2; }
    /* 809BE41C */ s32 getHeadJointNo() { return 4; }
    /* 809BE424 */ s32 getNeckJointNo() { return 3; }
    /* 809BE42C */ s32 getBackboneJointNo() { return 1; }

    static char* mCutNameList[1];
    static cutFunc mCutList[1];

private:
    /* 0xE40 */ NPC_GND_HIO_CLASS* mpHIO;
    /* 0xE44 */ dCcD_Cyl mCyl1;
    /* 0xF80 */ u8 mType;
    /* 0xF84 */ int (daNpc_Gnd_c::*mNextAction)(void*);
    /* 0xF90 */ int (daNpc_Gnd_c::*mAction)(void*);
    /* 0xF9C */ u8 field_0xF9C;
};

STATIC_ASSERT(sizeof(daNpc_Gnd_c) == 0xFA0);

#endif /* D_A_NPC_GND_H */
