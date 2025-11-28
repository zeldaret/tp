#ifndef D_A_NPC_PACHI_BESU_H
#define D_A_NPC_PACHI_BESU_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Pachi_Besu_c
 * @brief Beth (Slingshot Tutorial)
 *
 * @details
 *
*/

struct daNpc_Pachi_Besu_HIOParam {
    /* 0x0 */ daNpcT_HIOParam common;
};

class daNpc_Pachi_Besu_HIO_c : public mDoHIO_entry_c {
    /* 0x8 */ daNpc_Pachi_Besu_HIOParam param;
};

class daNpc_Pachi_Besu_Param_c {
public:
    /* 80A96A00 */ virtual ~daNpc_Pachi_Besu_Param_c() {}

    static daNpc_Pachi_Besu_HIOParam const m;
};

class daNpc_Pachi_Besu_c : public daNpcT_c {
public:
    typedef BOOL (daNpc_Pachi_Besu_c::*actionFunc)(void*);
    typedef BOOL (daNpc_Pachi_Besu_c::*cutFunc)(int);

    /* 80A92D6C */ ~daNpc_Pachi_Besu_c();
    /* 80A92EA4 */ cPhs__Step create();
    /* 80A9317C */ int CreateHeap();
    /* 80A93608 */ int Delete();
    /* 80A9363C */ int Execute();
    /* 80A9365C */ int Draw();
    /* 80A936F0 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80A93710 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80A93768 */ u8 getType();
    /* 80A93788 */ BOOL isDelete();
    /* 80A937A8 */ void reset();
    /* 80A93910 */ void afterJntAnm(int);
    /* 80A9398C */ void setParam();
    /* 80A93A88 */ void afterMoved();
    /* 80A93D70 */ BOOL checkChangeEvt();
    /* 80A93D78 */ void setAfterTalkMotion();
    /* 80A93E24 */ void srchActors();
    /* 80A93EAC */ BOOL evtTalk();
    /* 80A93FB0 */ BOOL evtCutProc();
    /* 80A94078 */ void action();
    /* 80A94220 */ void beforeMove();
    /* 80A94298 */ void setAttnPos();
    /* 80A944F0 */ void setCollision();
    /* 80A94620 */ int drawDbgInfo();
    /* 80A94628 */ BOOL selectAction();
    /* 80A946A4 */ BOOL chkAction(actionFunc);
    /* 80A946D0 */ BOOL setAction(actionFunc);
    /* 80A94778 */ BOOL wait(void*);
    /* 80A949EC */ BOOL talk(void*);
    #ifdef DEBUG
    BOOL test(void*);
    #endif
    /* 80A94A7C */ BOOL _turn_to_link(s16);
    /* 80A94B24 */ BOOL _turn_pos(cXyz const&);
    /* 80A94AC8 */ BOOL _turn_pos(cXyz const&, s16);
    /* 80A94B64 */ BOOL cutTutrialBegin(int);
    /* 80A94BF8 */ BOOL _cutTutrialBegin_Init(int const&);
    /* 80A94C00 */ BOOL _cutTutrialBegin_Main(int const&);
    /* 80A94C08 */ BOOL cutTutrialBegin_Skip(int);
    /* 80A94C9C */ BOOL _cutTutrialBegin_Skip_Init(int const&);
    /* 80A94CA4 */ BOOL _cutTutrialBegin_Skip_Main(int const&);
    /* 80A94CAC */ BOOL cutTutrialClear(int);
    /* 80A94D40 */ BOOL _cutTutrialClear_Init(int const&);
    /* 80A94E38 */ BOOL _cutTutrialClear_Main(int const&);
    /* 80A94ECC */ BOOL cutTalk(int);
    /* 80A94F60 */ BOOL _cutTalk_Init(int const&);
    /* 80A94F68 */ BOOL _cutTalk_Main(int const&);
    /* 80A94FC4 */ BOOL cutTalk2(int);
    /* 80A95058 */ BOOL _cutTalk2_Init(int const&);
    /* 80A95060 */ BOOL _cutTalk2_Main(int const&);
    /* 80A950BC */ BOOL cut1stHit_KakasiBody(int);
    /* 80A95150 */ BOOL _cut1stHit_KakasiBody_Init(int const&);
    /* 80A951DC */ BOOL _cut1stHit_KakasiBody_Main(int const&);
    /* 80A95270 */ BOOL cutTutrialSelectGiveUp(int);
    /* 80A95304 */ BOOL _cutTutrialSelectGiveUp_Init(int const&);
    /* 80A9530C */ BOOL _cutTutrialSelectGiveUp_Main(int const&);
    /* 80A95408 */ BOOL cutTutrialGiveUp(int);
    /* 80A9549C */ BOOL _cutTutrialGiveUp_Init(int const&);
    /* 80A954A4 */ BOOL _cutTutrialGiveUp_Main(int const&);
    /* 80A954E0 */ BOOL cutTutrialContinue(int);
    /* 80A95574 */ BOOL _cutTutrialContinue_Init(int const&);
    /* 80A9557C */ BOOL _cutTutrialContinue_Main(int const&);
    /* 80A955B8 */ BOOL cutTutrialCaution(int);
    /* 80A9564C */ BOOL _cutTutrialCaution_Init(int const&);
    /* 80A95654 */ BOOL _cutTutrialCaution_Main(int const&);
    /* 80A968F4 */ daNpc_Pachi_Besu_c(
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
    /* 80A969C0 */ u16 getEyeballMaterialNo() { return 2; }
    /* 80A969C8 */ s32 getHeadJointNo() { return 4; }
    /* 80A969D0 */ s32 getNeckJointNo() { return 3; }
    /* 80A969D8 */ s32 getBackboneJointNo() { return 1; }
    /* 80A969E0 */ BOOL checkChangeJoint(int i_joint) { return i_joint == 4; }
    /* 80A969F0 */ BOOL checkRemoveJoint(int i_joint) { return i_joint == 6; }

    u32 getFlowNodeNo() { 
        u16 nodeNo = home.angle.x;
        if (nodeNo == 0xffff) {
            return -1;
        }
        return nodeNo;
    }
    int getPathID() { return (fopAcM_GetParam(this) & 0xFF00) >> 8; }
    int getBitSW() { return (fopAcM_GetParam(this) & 0xFF0000) >> 16; }
    void setFMotion_None() { mFMotion = 0; }
    void setFMotion_Hit() { mFMotion = 1; }
    void setFMotion_Mad() { mFMotion = 2; }
    void setFMotion_LookBros() { mFMotion = 3; }
    void setFMotion_LookNone() { mFMotion = 4; }
    void talkOff() { mTalk = 0; }
    void setTagPos(cXyz const& i_pos) { mTagPos = i_pos; }
    void setLookPos(cXyz const& i_pos) { mLookPos = i_pos; }

    static char* mCutNameList[11];
    static cutFunc mCutList[11];

private:
    /* 0xE40 */ daNpc_Pachi_Besu_HIO_c* mHIO;
    /* 0xE44 */ dCcD_Cyl mCyl;
    /* 0xF80 */ u8 mType;
    /* 0xF81 */ u8 mTalk;
    /* 0xF84 */ cXyz mTagPos;
    /* 0xF90 */ cXyz mLookPos;
    /* 0xF9C */ u16 field_0xf9c;
    /* 0xF9E */ u8 mFMotion;
    /* 0xFA0 */ daNpcT_ActorMngr_c mActorMngrs[2];
    /* 0xFB0 */ actionFunc mNextAction;
    /* 0xFBC */ actionFunc mAction;
    /* 0xFC8 */ u8 field_0xfc8;
};

STATIC_ASSERT(sizeof(daNpc_Pachi_Besu_c) == 0xfcc);

#endif /* D_A_NPC_PACHI_BESU_H */
