#ifndef D_A_NPC_BESU_H
#define D_A_NPC_BESU_H

#if DEBUG
#include "SSystem/SComponent/c_counter.h"
#endif
#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Besu_c
 * @brief Beth
 *
 * @details
 *
 */
class daNpc_Besu_c : public daNpcT_c {
public:
    typedef int (daNpc_Besu_c::*cutFunc)(int);
    typedef int (daNpc_Besu_c::*actionFunc)(void*);

    /* 80536E4C */ ~daNpc_Besu_c();
    /* 8053701C */ int create();
    /* 805372FC */ int CreateHeap();
    /* 80537914 */ int Delete();
    /* 80537948 */ int Execute();
    /* 80537968 */ int Draw();
    /* 805379FC */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80537A1C */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80537A74 */ u8 getType();
    /* 80537B34 */ BOOL isDelete();
    /* 80537DE4 */ void reset();
    /* 80537FD0 */ BOOL chkNurse();
    /* 80537FFC */ BOOL chkBesu3();
    /* 80538028 */ void afterJntAnm(int);
    /* 805380A4 */ void setParam();
    /* 805382D0 */ BOOL checkChangeEvt();
    /* 80538490 */ void setAfterTalkMotion();
    /* 8053853C */ void srchActors();
    /* 805387D0 */ BOOL evtTalk();
    /* 80538870 */ BOOL evtCutProc();
    /* 80538938 */ void action();
    /* 80538B54 */ void beforeMove();
    /* 80538C18 */ void setAttnPos();
    /* 805391B8 */ void setCollision();
    /* 80539494 */ int drawDbgInfo();
    /* 8053949C */ void drawOtherMdl();
    /* 805395F4 */ int setCupAnm(int, int, f32);
    /* 805396C4 */ bool afterSetMotionAnm(int, int, f32, int);
    /* 805396F8 */ daNpcT_faceMotionAnmData_c getFaceMotionAnm(daNpcT_faceMotionAnmData_c);
    /* 805397B0 */ void changeAnm(int*, int*);
    /* 80539840 */ void changeBck(int*, int*);
    /* 805398DC */ void changeBtp(int*, int*);
    /* 80539968 */ void changeBtk(int*, int*);
    /* 80539994 */ int selectAction();
    /* 80539ACC */ int chkAction(actionFunc);
    /* 80539AF8 */ int setAction(actionFunc);
    /* 80539BA0 */ void mop(int, int);
    /* 80539CF4 */ int cutConversationAboutSaru(int);
    /* 80539E48 */ int cutConversationAboutPachinko(int);
    /* 8053A45C */ int cutConversationAboutWoodSwd(int);
    /* 8053A7A0 */ int cutSwdTutorial(int);
    /* 8053AA6C */ int cutFindMonkey(int);
    /* 8053AF5C */ int cutGetWoodSwd(int);
    /* 8053B058 */ int cutCacaricoConversation(int);
    /* 8053B250 */ int cutSurprise(int);
    /* 8053B530 */ int cutConversationInHotel(int);
    /* 8053B820 */ int cutConversationAboutDeathMt(int);
    /* 8053BA60 */ int cutConversationAboutGoron(int);
    /* 8053BD18 */ int cutNurse(int);
    /* 8053BE84 */ int cutClothTry(int);
    /* 8053BF60 */ int cutThankYou(int);
    /* 8053C08C */ int wait(void*);
    /* 8053CAA0 */ int swdTutorial(void*);
    /* 8053CBB8 */ int nurse(void*);
    /* 8053CF78 */ int giveHotWater(void*);
    /* 8053D078 */ int talk(void*);
    /* 8053E588 */ daNpc_Besu_c(
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
        // "construct"
        OS_REPORT("|%06d:%x|daNpc_Besu_c -> コンストラクト\n", g_Counter.mCounter0, this);
    }
    /* 8053E6A8 */ u16 getEyeballMaterialNo() { return 2; }
    /* 8053E6B0 */ s32 getHeadJointNo() { return 4; }
    /* 8053E6B8 */ s32 getNeckJointNo() { return 3; }
    /* 8053E6C0 */ s32 getBackboneJointNo() { return true; }
    /* 8053E6C8 */ BOOL checkChangeJoint(int arg0) { return arg0 == 4; }
    /* 8053E6D8 */ BOOL checkRemoveJoint(int arg0) { return arg0 == 6; }

    u32 getFlowNodeNo() { 
        u16 nodeNo = home.angle.x;
        u32 rv;
        if (nodeNo == 0xffff) {
            rv = -1;
        } else {
            rv = nodeNo;
        }
        return rv;
    }

    u8 getPathID() { return (fopAcM_GetParam(this) & 0xff00) >> 8; }
    u8 getBitSW() { return (fopAcM_GetParam(this) & 0xff0000) >> 16; }

    static char* mCutNameList[15];
    static cutFunc mCutList[15];

private:
    /* 0x0E40 */ mDoExt_McaMorfSO* mpCupModelMorf;
    /* 0x0E44 */ u8 field_0xe44[0x0E48 - 0xE44];
    /* 0x0E48 */ J3DModel* mpClothModel[1];
    /* 0x0E4C */ dCcD_Cyl mCyl1;
    /* 0x0F88 */ dCcD_Cyl mCyl2;
    /* 0x10C4 */ u8 mType;
    /* 0x10C8 */ daNpcT_ActorMngr_c mActorMngr[7];
    /* 0x1100 */ actionFunc mNextAction;
    /* 0x110C */ actionFunc mAction;
    /* 0x1118 */ int field_0x1118;
    /* 0x111C */ int field_0x111c;
    /* 0x1120 */ int field_0x1120;
    /* 0x1124 */ int field_0x1124;
    /* 0x1128 */ int field_0x1128;
    /* 0x112C */ u8 field_0x112c;
    /* 0x112D */ u8 field_0x112d;
    /* 0x112E */ u8 field_0x112e;
    /* 0x112F */ u8 field_0x112f;
    /* 0x1130 */ u8 field_0x1130;
    /* 0x1131 */ u8 field_0x1131[0x1134 - 0x1131];
    /* 0x1134 */ u8 field_0x1134;
};

STATIC_ASSERT(sizeof(daNpc_Besu_c) == 0x1138);

struct daNpc_Besu_HIOParam {
    /* 0x00 */ daNpcT_HIOParam common;
    /* 0x8C */ f32 field_0x8c;
};

class daNpc_Besu_Param_c {
public:
    /* 8053E6E8 */ virtual ~daNpc_Besu_Param_c() {}

    static const daNpc_Besu_HIOParam m;
};

#endif /* D_A_NPC_BESU_H */
