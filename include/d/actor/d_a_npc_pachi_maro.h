#ifndef D_A_NPC_PACHI_MARO_H
#define D_A_NPC_PACHI_MARO_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Pachi_Maro_c
 * @brief Malo (Slingshot Tutorial)
 *
 * @details
 *
 */
class daNpc_Pachi_Maro_c : public fopAc_ac_c {
public:
    /* 80A97C8C */ ~daNpc_Pachi_Maro_c();
    /* 80A97DC4 */ void create();
    /* 80A9809C */ void CreateHeap();
    /* 80A984DC */ void Delete();
    /* 80A98510 */ void Execute();
    /* 80A98530 */ void Draw();
    /* 80A985C4 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80A985E4 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80A9863C */ void getType();
    /* 80A9865C */ void isDelete();
    /* 80A9867C */ void reset();
    /* 80A987F4 */ void afterJntAnm(int);
    /* 80A98870 */ void setParam();
    /* 80A9896C */ bool checkChangeEvt();
    /* 80A98974 */ void setAfterTalkMotion();
    /* 80A98A10 */ void srchActors();
    /* 80A98A98 */ void evtTalk();
    /* 80A98B9C */ void evtCutProc();
    /* 80A98C64 */ void action();
    /* 80A98DE8 */ void beforeMove();
    /* 80A98E60 */ void afterMoved();
    /* 80A98FB4 */ void setAttnPos();
    /* 80A9928C */ void setCollision();
    /* 80A99394 */ bool drawDbgInfo();
    /* 80A9939C */ void getFaceMotionAnm(daNpcT_faceMotionAnmData_c);
    /* 80A99428 */ void getMotionAnm(daNpcT_motionAnmData_c);
    /* 80A994B4 */ void selectAction();
    /* 80A99530 */ void chkAction(int (daNpc_Pachi_Maro_c::*)(void*));
    /* 80A9955C */ void setAction(int (daNpc_Pachi_Maro_c::*)(void*));
    /* 80A99604 */ void wait(void*);
    /* 80A9986C */ void talk(void*);
    /* 80A998FC */ void _turn_to_link(s16);
    /* 80A999A4 */ void _turn_pos(cXyz const&);
    /* 80A99948 */ void _turn_pos(cXyz const&, s16);
    /* 80A999E4 */ void cutTutrialBegin(int);
    /* 80A99A78 */ bool _cutTutrialBegin_Init(int const&);
    /* 80A99A80 */ bool _cutTutrialBegin_Main(int const&);
    /* 80A99A88 */ void cutTutrialBegin_Skip(int);
    /* 80A99B1C */ bool _cutTutrialBegin_Skip_Init(int const&);
    /* 80A99B24 */ bool _cutTutrialBegin_Skip_Main(int const&);
    /* 80A99B2C */ void cutTutrialClear(int);
    /* 80A99BC0 */ void _cutTutrialClear_Init(int const&);
    /* 80A99CB8 */ void _cutTutrialClear_Main(int const&);
    /* 80A99D4C */ void cutTalk(int);
    /* 80A99DE0 */ bool _cutTalk_Init(int const&);
    /* 80A99DE8 */ void _cutTalk_Main(int const&);
    /* 80A99E44 */ void cutTalk2(int);
    /* 80A99ED8 */ bool _cutTalk2_Init(int const&);
    /* 80A99EE0 */ void _cutTalk2_Main(int const&);
    /* 80A99F3C */ void cut1stHit_KakasiBody(int);
    /* 80A99FD0 */ void _cut1stHit_KakasiBody_Init(int const&);
    /* 80A9A05C */ void _cut1stHit_KakasiBody_Main(int const&);
    /* 80A9A0F0 */ void cutTutrialSelectGiveUp(int);
    /* 80A9A184 */ bool _cutTutrialSelectGiveUp_Init(int const&);
    /* 80A9A18C */ void _cutTutrialSelectGiveUp_Main(int const&);
    /* 80A9A288 */ void cutTutrialGiveUp(int);
    /* 80A9A31C */ bool _cutTutrialGiveUp_Init(int const&);
    /* 80A9A324 */ void _cutTutrialGiveUp_Main(int const&);
    /* 80A9A360 */ void cutTutrialContinue(int);
    /* 80A9A3F4 */ bool _cutTutrialContinue_Init(int const&);
    /* 80A9A3FC */ void _cutTutrialContinue_Main(int const&);
    /* 80A9A438 */ void cutTutrialCaution(int);
    /* 80A9A4CC */ bool _cutTutrialCaution_Init(int const&);
    /* 80A9A4D4 */ void _cutTutrialCaution_Main(int const&);
    /* 80A9B714 */ daNpc_Pachi_Maro_c(daNpcT_faceMotionAnmData_c const*,
                                      daNpcT_motionAnmData_c const*,
                                      daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                      daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                      daNpcT_evtData_c const*, char**);
    /* 80A9B7E0 */ bool getEyeballMaterialNo();
    /* 80A9B7E8 */ s32 getHeadJointNo();
    /* 80A9B7F0 */ s32 getNeckJointNo();
    /* 80A9B7F8 */ bool getBackboneJointNo();
    /* 80A9B800 */ void checkChangeJoint(int);
    /* 80A9B810 */ void checkRemoveJoint(int);

    static void* mCutNameList[11];
    static u8 mCutList[132];

private:
    /* 0x568 */ u8 field_0x568[0xfcc - 0x568];
};

STATIC_ASSERT(sizeof(daNpc_Pachi_Maro_c) == 0xfcc);

class daNpc_Pachi_Maro_Param_c {
public:
    /* 80A9B820 */ ~daNpc_Pachi_Maro_Param_c();

    static u8 const m[144];
};


#endif /* D_A_NPC_PACHI_MARO_H */
