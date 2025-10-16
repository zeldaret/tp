#ifndef D_A_NPC_TOBY_H
#define D_A_NPC_TOBY_H

#include "dolphin/types.h"
#include "d/actor/d_a_npc.h"

struct daNpc_Toby_HIOParam {
    /* 0x00 */ daNpcT_HIOParam common;
    /* 0x8C */ f32 performance_speed;
    /* 0x90 */ f32 speedup_performance;
    /* 0x94 */ f32 init_play_speed;
    /* 0x98 */ f32 switching_speed;
};

class daNpc_Toby_Param_c {
public:
    /* 80B24978 */ virtual ~daNpc_Toby_Param_c() {}

    static const daNpc_Toby_HIOParam m;
};

#if DEBUG
class daNpc_Toby_HIO_c : public mDoHIO_entry_c {
public:
    daNpc_Toby_HIO_c();

    void listenPropertyEvent(const JORPropertyEvent*);
    void genMessage(JORMContext*);

    daNpc_Toby_HIOParam m;
};

#define NPC_TOBY_HIO_CLASS daNpc_Toby_HIO_c
#else
#define NPC_TOBY_HIO_CLASS daNpc_Toby_Param_c
#endif

/**
 * @ingroup actors-npcs
 * @class daNpc_Toby_c
 * @brief Fyer
 *
 * @details
 *
 */
class daNpc_Toby_c : public daNpcT_c {
public:
    typedef int (daNpc_Toby_c::*cutFunc)(int);
    typedef int (daNpc_Toby_c::*actionFunc)(void*);

    /* 80B1E64C */ ~daNpc_Toby_c();
    /* 80B1E798 */ int create();
    /* 80B1EA60 */ int CreateHeap();
    /* 80B1EF28 */ int Delete();
    /* 80B1EF5C */ int Execute();
    /* 80B1EF7C */ int Draw();
    /* 80B1F010 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80B1F030 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80B1F088 */ static void* srchToby(void*, void*);
    /* 80B1F124 */ fopAc_ac_c* getOtherTobyP(int);
    /* 80B1F200 */ u8 getType();
    /* 80B1F274 */ int isDelete();
    /* 80B1F384 */ void reset();
    /* 80B1F5AC */ void afterJntAnm(int);
    /* 80B1F638 */ void setParam();
    /* 80B1F784 */ BOOL checkChangeEvt();
    /* 80B1F950 */ void setAfterTalkMotion();
    /* 80B1FA08 */ void srchActors();
    /* 80B1FB34 */ BOOL evtTalk();
    /* 80B1FBD4 */ BOOL evtCutProc();
    /* 80B1FC9C */ void action();
    /* 80B1FE68 */ void beforeMove();
    /* 80B1FF2C */ void setAttnPos();
    /* 80B20278 */ void setCollision();
    /* 80B2042C */ int drawDbgInfo();
    /* 80B20434 */ void drawOtherMdl();
    /* 80B2050C */ bool afterSetFaceMotionAnm(int, int, f32, int);
    /* 80B20568 */ bool afterSetMotionAnm(int, int, f32, int);
    /* 80B205F4 */ int selectAction();
    /* 80B20710 */ int chkAction(actionFunc);
    /* 80B2073C */ int setAction(actionFunc);
    /* 80B207E4 */ int cutTobyHouseFire(int);
    /* 80B20AB0 */ int cutTalkToOneself(int);
    /* 80B20FC0 */ int cutRepairSCannon(int);
    /* 80B215B4 */ int cutSCannon(int);
    /* 80B219F4 */ int cutConversationAboutSCannon(int);
    /* 80B22434 */ int cutConversationAboutZra(int);
    /* 80B22614 */ int chkAttnZra();
    /* 80B226B0 */ int wait(void*);
    /* 80B22D98 */ int walk(void*);
    /* 80B22FAC */ int play(void*);
    /* 80B23344 */ int talk(void*);
#if DEBUG
    int test(void*);
#endif
    /* 80B24840 */ daNpc_Toby_c(
        daNpcT_faceMotionAnmData_c const* i_faceMotionAnmData,
        daNpcT_motionAnmData_c const* i_motionAnmData,
        daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_faceMotionSequenceData,
        int i_faceMotionStepNum,
        daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_motionSequenceData, int i_motionStepNum,
        daNpcT_evtData_c const* i_evtData, char** i_arcNames)
        : daNpcT_c(i_faceMotionAnmData, i_motionAnmData, i_faceMotionSequenceData,
                   i_faceMotionStepNum, i_motionSequenceData, i_motionStepNum, i_evtData,
                   i_arcNames) {
        // "|%06d:%x|daNpc_Toby_c -> Construct\n"
        OS_REPORT("|%06d:%x|daNpc_Toby_c -> コンストラクト\n", g_Counter.mCounter0, this);
    }
    /* 80B24920 */ u16 getEyeballMaterialNo() { return 2; }
    /* 80B24928 */ s32 getHeadJointNo() { return 4; }
    /* 80B24930 */ s32 getNeckJointNo() { return 3; }
    /* 80B24938 */ s32 getBackboneJointNo() { return 1; }
    /* 80B24940 */ BOOL checkChangeJoint(int arg0) { return arg0 == 4; }
    /* 80B24950 */ BOOL checkRemoveJoint(int arg0) { return arg0 == 8; }
    /* 80B24960 */ s32 getFootLJointNo() { return 24; }
    /* 80B24968 */ s32 getFootRJointNo() { return 27; }
    /* 80B24970 */ BOOL chkXYItems() { return TRUE; }

    int getFlowNodeNo() {
        u16 nodeNo = home.angle.x;
        u32 rv;
        if (nodeNo == 0xffff) {
            rv = -1;
        } else {
            rv = nodeNo;
        }

        return rv;
    }

    u8 getPathID() { return (fopAcM_GetParam(this) & 0xFF00) >> 8; }
    u8 getBitSW() { return (fopAcM_GetParam(this) & 0xFF0000) >> 16; }

    static char* mCutNameList[7];
    static cutFunc mCutList[7];

private:
    /* 0x0E40 */ NPC_TOBY_HIO_CLASS* mpHIO;
    /* 0x0E44 */ J3DModel* mpTobyModels[1];
    /* 0x0E48 */ dCcD_Cyl mCyl1;
    /* 0x0F84 */ u8 mType;
    /* 0x0F88 */ daNpcT_ActorMngr_c mActorMngr[4];
    /* 0x0FA8 */ actionFunc mActFunc_0;
    /* 0x0FB4 */ actionFunc mActFunc_1;
    /* 0x0FC0 */ daNpcT_Path_c mPath;
    /* 0x0FE8 */ cXyz field_0x0FE8;
    /* 0x0FF4 */ int field_0x0FF4;
    /* 0x0FF8 */ f32 mPlaySpeed;
    /* 0x0FFC */ u16 field_0x0FFC;
    /* 0x0FFE */ u8 field_0x0FFE;
    /* 0x0FFF */ u8 field_0x0FFF;
    /* 0x1000 */ u8 field_0x1000;
    /* 0x1001 */ bool field_0x1001;
    /* 0x1002 */ bool field_0x1002;
    /* 0x1003 */ u8 field_0x1003;
    /* 0x1004 */ u8 field_0x1004;
};

STATIC_ASSERT(sizeof(daNpc_Toby_c) == 0x1008);

#endif /* D_A_NPC_TOBY_H */
