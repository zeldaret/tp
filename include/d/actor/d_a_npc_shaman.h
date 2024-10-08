#ifndef D_A_NPC_SHAMAN_H
#define D_A_NPC_SHAMAN_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Sha_c
 * @brief Fanadi
 *
 * @details
 *
 */
class daNpc_Sha_c : public fopAc_ac_c {
public:
    /* 80AE2DCC */ ~daNpc_Sha_c();
    /* 80AE2EEC */ void create();
    /* 80AE31A0 */ void CreateHeap();
    /* 80AE35CC */ void Delete();
    /* 80AE3600 */ void Execute();
    /* 80AE3620 */ void Draw();
    /* 80AE36B4 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80AE36D4 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80AE372C */ void getType();
    /* 80AE3764 */ void isDelete();
    /* 80AE3798 */ void reset();
    /* 80AE38F0 */ void afterJntAnm(int);
    /* 80AE3974 */ void setParam();
    /* 80AE3A8C */ void checkChangeEvt();
    /* 80AE3B78 */ void setAfterTalkMotion();
    /* 80AE3C24 */ void srchActors();
    /* 80AE3C28 */ void evtTalk();
    /* 80AE3D28 */ void evtCutProc();
    /* 80AE3DF0 */ void action();
    /* 80AE3F80 */ void beforeMove();
    /* 80AE4044 */ void setAttnPos();
    /* 80AE4360 */ void setCollision();
    /* 80AE44B8 */ bool drawDbgInfo();
    /* 80AE44C0 */ void selectAction();
    /* 80AE4508 */ void chkAction(int (daNpc_Sha_c::*)(void*));
    /* 80AE4534 */ void setAction(int (daNpc_Sha_c::*)(void*));
    /* 80AE45DC */ void getSceneChangeNoTableIx();
    /* 80AE48D0 */ void setTempBit(int);
    /* 80AE4974 */ void cutPerformAugury(int);
    /* 80AE4E24 */ void wait(void*);
    /* 80AE50EC */ void talk(void*);
    /* 80AE52CC */ void query265();
    /* 80AE52F0 */ void query268();
    /* 80AE5314 */ void query267();
    /* 80AE5338 */ void query078();
    /* 80AE535C */ void query264();
    /* 80AE5380 */ void query266();
    /* 80AE53A4 */ void query542();
    /* 80AE53C8 */ void query461();
    /* 80AE53EC */ void query288();
    /* 80AE5410 */ bool query000();
    /* 80AE5418 */ bool query999();
    /* 80AE69E0 */ daNpc_Sha_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                               daNpcT_evtData_c const*, char**);
    /* 80AE6B1C */ bool getEyeballMaterialNo();
    /* 80AE6B24 */ s32 getHeadJointNo();
    /* 80AE6B2C */ s32 getNeckJointNo();
    /* 80AE6B34 */ bool getBackboneJointNo();
    /* 80AE6B3C */ void checkChangeJoint(int);
    /* 80AE6B4C */ void checkRemoveJoint(int);

    static void* mCutNameList[2];
    static u8 mCutList[24];
    static u8 mEvtBitLabels[12];
    static u8 mTmpBitLabels[12];
    static u8 mSceneChangeNoTable[192];
    static u8 mQueries[576];

private:
    /* 0x568 */ u8 field_0x568[0xfa8 - 0x568];
};

STATIC_ASSERT(sizeof(daNpc_Sha_c) == 0xfa8);

class daNpc_Sha_Param_c {
public:
    /* 80AE6B5C */ ~daNpc_Sha_Param_c();

    static u8 const m[140];
};


#endif /* D_A_NPC_SHAMAN_H */
