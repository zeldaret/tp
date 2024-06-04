#ifndef D_A_NPC_PACHI_TARO_H
#define D_A_NPC_PACHI_TARO_H

#include "dolphin/types.h"
#include "d/a/d_a_npc.h"

class daNpc_Pachi_Taro_c : public fopAc_ac_c {
public:
    /* 80A9C28C */ ~daNpc_Pachi_Taro_c();
    /* 80A9C3C4 */ void create();
    /* 80A9C69C */ void CreateHeap();
    /* 80A9CBD8 */ void Delete();
    /* 80A9CC0C */ void Execute();
    /* 80A9CC2C */ void Draw();
    /* 80A9CCC0 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80A9CCE0 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80A9CD38 */ bool getType();
    /* 80A9CD40 */ void isDelete();
    /* 80A9CD60 */ void reset();
    /* 80A9CF10 */ void afterJntAnm(int);
    /* 80A9CF9C */ void setParam();
    /* 80A9D098 */ bool checkChangeEvt();
    /* 80A9D0A0 */ void setAfterTalkMotion();
    /* 80A9D164 */ void srchActors();
    /* 80A9D27C */ void srchDistTag1();
    /* 80A9D2A8 */ void _srch_DistTag1_main(void*, void*);
    /* 80A9D310 */ void srchDistTag2();
    /* 80A9D33C */ void _srch_DistTag2_main(void*, void*);
    /* 80A9D3A4 */ void srchEscapeTag1();
    /* 80A9D3D0 */ void _srch_EscapeTag1_main(void*, void*);
    /* 80A9D438 */ void srchEscapeTag2();
    /* 80A9D464 */ void _srch_EscapeTag2_main(void*, void*);
    /* 80A9D4CC */ void evtTalk();
    /* 80A9D5D0 */ void evtCutProc();
    /* 80A9D698 */ void action();
    /* 80A9D840 */ void beforeMove();
    /* 80A9D8B8 */ void setAttnPos();
    /* 80A9DB0C */ void setCollision();
    /* 80A9DC14 */ bool drawDbgInfo();
    /* 80A9DC1C */ void drawOtherMdl();
    /* 80A9DD24 */ void selectAction();
    /* 80A9DDA0 */ void chkAction(int (daNpc_Pachi_Taro_c::*)(void*));
    /* 80A9DDCC */ void setAction(int (daNpc_Pachi_Taro_c::*)(void*));
    /* 80A9DE74 */ void wait(void*);
    /* 80A9E154 */ void setMesPat();
    /* 80A9E224 */ void _turn_to_link(s16);
    /* 80A9E270 */ void _turn_pos(cXyz const&, s16);
    /* 80A9E2CC */ void _turn_pos(cXyz const&);
    /* 80A9E30C */ void talk_cancel();
    /* 80A9E364 */ void watch_tutrial();
    /* 80A9E3E4 */ void chkDistTag();
    /* 80A9E458 */ void chkEscapeTag();
    /* 80A9E56C */ void chkTarget();
    /* 80A9E700 */ void clr_tagHit();
    /* 80A9E778 */ void allTagPosSet(cXyz const&);
    /* 80A9E80C */ void allLookPosSet(cXyz const&);
    /* 80A9E8A0 */ void talk(void*);
    /* 80A9E910 */ void evtEndProc();
    /* 80A9E9E8 */ void cutTutrialBegin(int);
    /* 80A9EAA0 */ void _cutTutrialBegin_Init(int const&);
    /* 80A9EB3C */ void _cutTutrialBegin_Main(int const&);
    /* 80A9EC5C */ void cutTutrialBegin_Skip(int);
    /* 80A9ECF0 */ void _cutTutrialBegin_Skip_Init(int const&);
    /* 80A9ED28 */ void _cutTutrialBegin_Skip_Main(int const&);
    /* 80A9ED40 */ void cutTutrialClear(int);
    /* 80A9EDD4 */ void _cutTutrialClear_Init(int const&);
    /* 80A9EEBC */ void _cutTutrialClear_Main(int const&);
    /* 80A9EFC0 */ void cutTalk(int);
    /* 80A9F0DC */ void _cutTalk_Init(int const&);
    /* 80A9F188 */ void _cutTalk_Main(int const&, int const&);
    /* 80A9F324 */ void cutTalk2(int);
    /* 80A9F440 */ void _cutTalk2_Init(int const&);
    /* 80A9F4EC */ void _cutTalk2_Main(int const&, int const&);
    /* 80A9F688 */ void cut1stHit_KakasiBody(int);
    /* 80A9F71C */ void _cut1stHit_KakasiBody_Init(int const&);
    /* 80A9F83C */ void _cut1stHit_KakasiBody_Main(int const&);
    /* 80A9F9C4 */ void cutTutrialSelectGiveUp(int);
    /* 80A9FA58 */ void _cutTutrialSelectGiveUp_Init(int const&);
    /* 80A9FB08 */ void _cutTutrialSelectGiveUp_Main(int const&);
    /* 80A9FCEC */ void cutTutrialGiveUp(int);
    /* 80A9FD80 */ void _cutTutrialGiveUp_Init(int const&);
    /* 80A9FE34 */ void _cutTutrialGiveUp_Main(int const&);
    /* 80A9FFAC */ void cutTutrialCaution(int);
    /* 80AA0040 */ void _cutTutrialCaution_Init(int const&);
    /* 80AA0088 */ void _cutTutrialCaution_Main(int const&);
    /* 80AA0108 */ void cutTutrialContinue(int);
    /* 80AA019C */ bool _cutTutrialContinue_Init(int const&);
    /* 80AA01A4 */ void _cutTutrialContinue_Main(int const&);
    /* 80AA148C */ daNpc_Pachi_Taro_c(daNpcT_faceMotionAnmData_c const*,
                                      daNpcT_motionAnmData_c const*,
                                      daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                      daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                      daNpcT_evtData_c const*, char**);
    /* 80AA1558 */ s32 getEyeballMaterialNo();
    /* 80AA1560 */ s32 getHeadJointNo();
    /* 80AA1568 */ s32 getNeckJointNo();
    /* 80AA1570 */ bool getBackboneJointNo();
    /* 80AA1578 */ void checkChangeJoint(int);
    /* 80AA1588 */ void checkRemoveJoint(int);

    static void* mCutNameList[11];
    static u8 mCutList[132];

private:
    /* 0x568 */ u8 field_0x568[0x100c - 0x568];
};
STATIC_ASSERT(sizeof(daNpc_Pachi_Taro_c) == 0x100c);

class daNpc_Pachi_Taro_Param_c {
public:
    /* 80AA1598 */ ~daNpc_Pachi_Taro_Param_c();

    static u8 const m[140];
};


#endif /* D_A_NPC_PACHI_TARO_H */
