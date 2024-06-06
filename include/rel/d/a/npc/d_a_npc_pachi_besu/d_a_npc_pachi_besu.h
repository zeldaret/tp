#ifndef D_A_NPC_PACHI_BESU_H
#define D_A_NPC_PACHI_BESU_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Pachi_Besu_c
 * @brief Beth (Slingshot Tutorial)
 *
 * @details
 *
 */
class daNpc_Pachi_Besu_c : public fopAc_ac_c {
public:
    /* 80A92D6C */ ~daNpc_Pachi_Besu_c();
    /* 80A92EA4 */ void create();
    /* 80A9317C */ void CreateHeap();
    /* 80A93608 */ void Delete();
    /* 80A9363C */ void Execute();
    /* 80A9365C */ void Draw();
    /* 80A936F0 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80A93710 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80A93768 */ void getType();
    /* 80A93788 */ void isDelete();
    /* 80A937A8 */ void reset();
    /* 80A93910 */ void afterJntAnm(int);
    /* 80A9398C */ void setParam();
    /* 80A93A88 */ void afterMoved();
    /* 80A93D70 */ bool checkChangeEvt();
    /* 80A93D78 */ void setAfterTalkMotion();
    /* 80A93E24 */ void srchActors();
    /* 80A93EAC */ void evtTalk();
    /* 80A93FB0 */ void evtCutProc();
    /* 80A94078 */ void action();
    /* 80A94220 */ void beforeMove();
    /* 80A94298 */ void setAttnPos();
    /* 80A944F0 */ void setCollision();
    /* 80A94620 */ bool drawDbgInfo();
    /* 80A94628 */ void selectAction();
    /* 80A946A4 */ void chkAction(int (daNpc_Pachi_Besu_c::*)(void*));
    /* 80A946D0 */ void setAction(int (daNpc_Pachi_Besu_c::*)(void*));
    /* 80A94778 */ void wait(void*);
    /* 80A949EC */ void talk(void*);
    /* 80A94A7C */ void _turn_to_link(s16);
    /* 80A94B24 */ void _turn_pos(cXyz const&);
    /* 80A94AC8 */ void _turn_pos(cXyz const&, s16);
    /* 80A94B64 */ void cutTutrialBegin(int);
    /* 80A94BF8 */ bool _cutTutrialBegin_Init(int const&);
    /* 80A94C00 */ bool _cutTutrialBegin_Main(int const&);
    /* 80A94C08 */ void cutTutrialBegin_Skip(int);
    /* 80A94C9C */ bool _cutTutrialBegin_Skip_Init(int const&);
    /* 80A94CA4 */ bool _cutTutrialBegin_Skip_Main(int const&);
    /* 80A94CAC */ void cutTutrialClear(int);
    /* 80A94D40 */ void _cutTutrialClear_Init(int const&);
    /* 80A94E38 */ void _cutTutrialClear_Main(int const&);
    /* 80A94ECC */ void cutTalk(int);
    /* 80A94F60 */ bool _cutTalk_Init(int const&);
    /* 80A94F68 */ void _cutTalk_Main(int const&);
    /* 80A94FC4 */ void cutTalk2(int);
    /* 80A95058 */ bool _cutTalk2_Init(int const&);
    /* 80A95060 */ void _cutTalk2_Main(int const&);
    /* 80A950BC */ void cut1stHit_KakasiBody(int);
    /* 80A95150 */ void _cut1stHit_KakasiBody_Init(int const&);
    /* 80A951DC */ void _cut1stHit_KakasiBody_Main(int const&);
    /* 80A95270 */ void cutTutrialSelectGiveUp(int);
    /* 80A95304 */ bool _cutTutrialSelectGiveUp_Init(int const&);
    /* 80A9530C */ void _cutTutrialSelectGiveUp_Main(int const&);
    /* 80A95408 */ void cutTutrialGiveUp(int);
    /* 80A9549C */ bool _cutTutrialGiveUp_Init(int const&);
    /* 80A954A4 */ void _cutTutrialGiveUp_Main(int const&);
    /* 80A954E0 */ void cutTutrialContinue(int);
    /* 80A95574 */ bool _cutTutrialContinue_Init(int const&);
    /* 80A9557C */ void _cutTutrialContinue_Main(int const&);
    /* 80A955B8 */ void cutTutrialCaution(int);
    /* 80A9564C */ bool _cutTutrialCaution_Init(int const&);
    /* 80A95654 */ void _cutTutrialCaution_Main(int const&);
    /* 80A968F4 */ daNpc_Pachi_Besu_c(daNpcT_faceMotionAnmData_c const*,
                                      daNpcT_motionAnmData_c const*,
                                      daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                      daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                      daNpcT_evtData_c const*, char**);
    /* 80A969C0 */ s32 getEyeballMaterialNo();
    /* 80A969C8 */ s32 getHeadJointNo();
    /* 80A969D0 */ s32 getNeckJointNo();
    /* 80A969D8 */ bool getBackboneJointNo();
    /* 80A969E0 */ void checkChangeJoint(int);
    /* 80A969F0 */ void checkRemoveJoint(int);

    static void* mCutNameList[11];
    static u8 mCutList[132];

private:
    /* 0x568 */ u8 field_0x568[0xfcc - 0x568];
};

STATIC_ASSERT(sizeof(daNpc_Pachi_Besu_c) == 0xfcc);

class daNpc_Pachi_Besu_Param_c {
public:
    /* 80A96A00 */ ~daNpc_Pachi_Besu_Param_c();

    static u8 const m[140];
};


#endif /* D_A_NPC_PACHI_BESU_H */
