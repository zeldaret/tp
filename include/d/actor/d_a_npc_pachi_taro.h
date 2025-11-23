#ifndef D_A_NPC_PACHI_TARO_H
#define D_A_NPC_PACHI_TARO_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Pachi_Taro_c
 * @brief Talo (Slingshot Tutorial)
 *
 * @details
 *
*/

struct daNpc_Pachi_Taro_HIOParam {
    /* 0x0 */ daNpcT_HIOParam common;
};

class daNpc_Pachi_Taro_Param_c {
public:
    /* 80AA1598 */ virtual ~daNpc_Pachi_Taro_Param_c() {}

    static daNpc_Pachi_Taro_HIOParam const m;
};

#if DEBUG
class daNpc_Pachi_Taro_HIO_c : public mDoHIO_entry_c {
public:
    daNpc_Pachi_Taro_HIO_c();
    void listenPropertyEvent(const JORPropertyEvent*);
    void genMessage(JORMContext*);

    /* 0x8 */ daNpc_Pachi_Taro_HIOParam m;
};
#define NPC_PACHI_TARO_HIO_CLASS daNpc_Pachi_Taro_HIO_c
#else
#define NPC_PACHI_TARO_HIO_CLASS daNpc_Pachi_Taro_Param_c
#endif

class daNpc_Pachi_Taro_c : public daNpcT_c {
public:
    enum Material {
        /* 0x0 */ MAT_SC_EYE,
        /* 0x1 */ MAT_TARO_BODY_M,
        /* 0x2 */ MAT_TARO_EYBALL_M,
        /* 0x3 */ MAT_TARO_FACE_M,
    };

    enum Joint {
        /* 0x00 */ JNT_CENTER,
        /* 0x01 */ JNT_BACKBONE1,
        /* 0x02 */ JNT_BACKBONE2,
        /* 0x03 */ JNT_NECK,
        /* 0x04 */ JNT_HEAD,
        /* 0x05 */ JNT_CHINE,
        /* 0x06 */ JNT_HEADBAND,
        /* 0x07 */ JNT_MOUTH,
        /* 0x08 */ JNT_SHOULDERL,
        /* 0x09 */ JNT_ARML1,
        /* 0x0A */ JNT_ARML2,
        /* 0x0B */ JNT_HANDL,
        /* 0x0C */ JNT_SHOULDERR,
        /* 0x0D */ JNT_ARMR1,
        /* 0x0E */ JNT_ARMR2,
        /* 0x0F */ JNT_HANDR,
        /* 0x10 */ JNT_WAIST,
        /* 0x11 */ JNT_LEGL1,
        /* 0x12 */ JNT_LEGL2,
        /* 0x13 */ JNT_FOOTL,
        /* 0x14 */ JNT_LEGR1,
        /* 0x15 */ JNT_LEGR2,
        /* 0x16 */ JNT_FOOTR,
        /* 0x17 */ JNT_SKART1,
        /* 0x18 */ JNT_SKART2,
    };

    typedef int (daNpc_Pachi_Taro_c::*actionFunc)(void*);
    typedef int (daNpc_Pachi_Taro_c::*cutFunc)(int);

    /* 80A9C28C */ ~daNpc_Pachi_Taro_c();
    /* 80A9C3C4 */ cPhs__Step create();
    /* 80A9C69C */ int CreateHeap();
    /* 80A9CBD8 */ int Delete();
    /* 80A9CC0C */ int Execute();
    /* 80A9CC2C */ int Draw();
    /* 80A9CCC0 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80A9CCE0 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80A9CD38 */ u8 getType();
    /* 80A9CD40 */ BOOL isDelete();
    /* 80A9CD60 */ void reset();
    /* 80A9CF10 */ void afterJntAnm(int);
    /* 80A9CF9C */ void setParam();
    /* 80A9D098 */ BOOL checkChangeEvt();
    /* 80A9D0A0 */ void setAfterTalkMotion();
    /* 80A9D164 */ void srchActors();
    /* 80A9D27C */ fopAc_ac_c* srchDistTag1();
    /* 80A9D2A8 */ static void* _srch_DistTag1_main(void*, void*);
    /* 80A9D310 */ fopAc_ac_c* srchDistTag2();
    /* 80A9D33C */ static void* _srch_DistTag2_main(void*, void*);
    /* 80A9D3A4 */ fopAc_ac_c* srchEscapeTag1();
    /* 80A9D3D0 */ static void* _srch_EscapeTag1_main(void*, void*);
    /* 80A9D438 */ fopAc_ac_c* srchEscapeTag2();
    /* 80A9D464 */ static void* _srch_EscapeTag2_main(void*, void*);
    /* 80A9D4CC */ BOOL evtTalk();
    /* 80A9D5D0 */ BOOL evtCutProc();
    /* 80A9D698 */ void action();
    /* 80A9D840 */ void beforeMove();
    /* 80A9D8B8 */ void setAttnPos();
    /* 80A9DB0C */ void setCollision();
    /* 80A9DC14 */ int drawDbgInfo();
    /* 80A9DC1C */ void drawOtherMdl();
    /* 80A9DD24 */ BOOL selectAction();
    /* 80A9DDA0 */ BOOL chkAction(actionFunc);
    /* 80A9DDCC */ BOOL setAction(actionFunc);
    /* 80A9DE74 */ int wait(void*);
    /* 80A9E154 */ void setMesPat();
    /* 80A9E224 */ BOOL _turn_to_link(s16);
    /* 80A9E270 */ BOOL _turn_pos(cXyz const&, s16);
    /* 80A9E2CC */ BOOL _turn_pos(cXyz const&);
    /* 80A9E30C */ void talk_cancel();
    /* 80A9E364 */ void watch_tutrial();
    /* 80A9E3E4 */ u16 chkDistTag();
    /* 80A9E458 */ u16 chkEscapeTag();
    /* 80A9E56C */ u16 chkTarget();
    /* 80A9E700 */ void clr_tagHit();
    /* 80A9E778 */ void allTagPosSet(cXyz const&);
    /* 80A9E80C */ void allLookPosSet(cXyz const&);
    /* 80A9E8A0 */ int talk(void*);
    int test(void*);
    /* 80A9E910 */ BOOL evtEndProc();
    /* 80A9E9E8 */ int cutTutrialBegin(int);
    /* 80A9EAA0 */ int _cutTutrialBegin_Init(int const&);
    /* 80A9EB3C */ int _cutTutrialBegin_Main(int const&);
    /* 80A9EC5C */ int cutTutrialBegin_Skip(int);
    /* 80A9ECF0 */ int _cutTutrialBegin_Skip_Init(int const&);
    /* 80A9ED28 */ int _cutTutrialBegin_Skip_Main(int const&);
    /* 80A9ED40 */ int cutTutrialClear(int);
    /* 80A9EDD4 */ int _cutTutrialClear_Init(int const&);
    /* 80A9EEBC */ int _cutTutrialClear_Main(int const&);
    /* 80A9EFC0 */ int cutTalk(int);
    /* 80A9F0DC */ int _cutTalk_Init(int const&);
    /* 80A9F188 */ int _cutTalk_Main(int const&, int const&);
    /* 80A9F324 */ int cutTalk2(int);
    /* 80A9F440 */ int _cutTalk2_Init(int const&);
    /* 80A9F4EC */ int _cutTalk2_Main(int const&, int const&);
    /* 80A9F688 */ int cut1stHit_KakasiBody(int);
    /* 80A9F71C */ int _cut1stHit_KakasiBody_Init(int const&);
    /* 80A9F83C */ int _cut1stHit_KakasiBody_Main(int const&);
    /* 80A9F9C4 */ int cutTutrialSelectGiveUp(int);
    /* 80A9FA58 */ int _cutTutrialSelectGiveUp_Init(int const&);
    /* 80A9FB08 */ int _cutTutrialSelectGiveUp_Main(int const&);
    /* 80A9FCEC */ int cutTutrialGiveUp(int);
    /* 80A9FD80 */ int _cutTutrialGiveUp_Init(int const&);
    /* 80A9FE34 */ int _cutTutrialGiveUp_Main(int const&);
    /* 80A9FFAC */ int cutTutrialCaution(int);
    /* 80AA0040 */ int _cutTutrialCaution_Init(int const&);
    /* 80AA0088 */ int _cutTutrialCaution_Main(int const&);
    /* 80AA0108 */ int cutTutrialContinue(int);
    /* 80AA019C */ int _cutTutrialContinue_Init(int const&);
    /* 80AA01A4 */ int _cutTutrialContinue_Main(int const&);
    /* 80AA148C */ daNpc_Pachi_Taro_c(
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
                        OS_REPORT("|%06d:%x|daNpc_Pachi_Taro_c -> コンストラクト\n", g_Counter.mCounter0, this);
                    }
    /* 80AA1558 */ u16 getEyeballMaterialNo() { return MAT_TARO_EYBALL_M; }
    /* 80AA1560 */ s32 getHeadJointNo() { return JNT_HEAD; }
    /* 80AA1568 */ s32 getNeckJointNo() { return JNT_NECK; }
    /* 80AA1570 */ s32 getBackboneJointNo() { return JNT_BACKBONE1; }
    /* 80AA1578 */ BOOL checkChangeJoint(int i_joint) { return i_joint == JNT_HEAD; }
    /* 80AA1588 */ BOOL checkRemoveJoint(int i_joint) { return i_joint == JNT_MOUTH; }

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
    u8 getPathID() { return (fopAcM_GetParam(this) & 0xFF00) >> 8; }
    u8 getBitSW() { return (fopAcM_GetParam(this) & 0xFF0000) >> 16; }
    u8 getBitSW2() { return (fopAcM_GetParam(this) & 0xFF000000) >> 24; }
    void clrMesPat() { mMesPat = -1; }
    void setTagPos(cXyz const& i_pos) { mTagPos = i_pos; }
    void setLookPos(cXyz const& i_pos) { mLookPos = i_pos; }

    static char* mCutNameList[11];
    static cutFunc mCutList[11];

private:
    /* 0x0E40 */ NPC_PACHI_TARO_HIO_CLASS* mpHIO;
    /* 0x0E44 */ J3DModel* mpModels[2];
    /* 0x0E4C */ dCcD_Cyl mCyl;
    /* 0x0F88 */ u8 mType;
    /* 0x0F8C */ daNpcT_ActorMngr_c mActorMngrs[6];
    /* 0x0FBC */ actionFunc mNextAction;
    /* 0x0FC8 */ actionFunc mAction;
    /* 0x0FD4 */ int field_0xfd4;
    /* 0x0FD8 */ u8 field_0xfd8[0xfda - 0xfd8];
    /* 0x0FDA */ s16 field_0xfda;
    /* 0x0FDC */ u16 mPrevEvtNo;
    /* 0x0FDE */ u8 field_0xfde;
    /* 0x0FDF */ u8 field_0xfdf;
    /* 0x0FE0 */ u8 field_0xfe0;
    /* 0x0FE1 */ u8 mHitMsgIdx;
    /* 0x0FE2 */ u8 field_0xfe2;
    /* 0x0FE3 */ u8 field_0xfe3;
    /* 0x0FE4 */ u8 field_0xfe4[0xfe8 - 0xfe4];
    /* 0x0FE8 */ s8 mMesPat;
    /* 0x0FEC */ cXyz mTagPos;
    /* 0x0FF8 */ cXyz mLookPos;
    /* 0x1004 */ u8 field_0x1004;
    /* 0x1005 */ u8 field_0x1005;
    /* 0x1006 */ u8 field_0x1006;
    /* 0x1007 */ u8 field_0x1007;
    /* 0x1008 */ u8 field_0x1008;

};

STATIC_ASSERT(sizeof(daNpc_Pachi_Taro_c) == 0x100c);

#endif /* D_A_NPC_PACHI_TARO_H */
