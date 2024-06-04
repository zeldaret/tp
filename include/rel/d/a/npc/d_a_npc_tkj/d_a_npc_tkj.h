#ifndef D_A_NPC_TKJ_H
#define D_A_NPC_TKJ_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpcTkj_c
 * @brief Oocca
 *
 * @details
 *
 */
class daNpcTkj_c : public fopAc_ac_c {
public:
    /* 8057372C */ ~daNpcTkj_c();
    /* 80573850 */ void create();
    /* 80573B18 */ void CreateHeap();
    /* 80573F68 */ void Delete();
    /* 80573F9C */ void Execute();
    /* 80573FBC */ void Draw();
    /* 80574058 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80574078 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 805740D0 */ void getType();
    /* 80574108 */ void getFlowNodeNo();
    /* 80574124 */ void isDelete();
    /* 8057413C */ void reset();
    /* 80574268 */ void setAfterTalkMotion();
    /* 805742C8 */ void srchActors();
    /* 805742D4 */ void evtTalk();
    /* 805743B8 */ void evtCutProc();
    /* 8057449C */ void action();
    /* 80574524 */ void setAttnPos();
    /* 80574770 */ void setCollision();
    /* 80574850 */ bool drawDbgInfo();
    /* 80574858 */ void selectAction();
    /* 805748A8 */ void chkAction(int (daNpcTkj_c::*)(void*));
    /* 805748D4 */ void setAction(int (daNpcTkj_c::*)(void*));
    /* 8057497C */ void wait(void*);
    /* 80574B30 */ void talk(void*);
    /* 80574D28 */ void cutLv7Start(int);
    /* 80575280 */ void setParam();
    /* 8057538C */ void beforeMove();
    /* 805763B0 */ daNpcTkj_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                              daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                              daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                              daNpcT_evtData_c const*, char**);
    /* 805764EC */ s32 getEyeballMaterialNo();
    /* 805764F4 */ s32 getHeadJointNo();
    /* 805764FC */ s32 getNeckJointNo();
    /* 80576504 */ s32 getBackboneJointNo();
    /* 8057650C */ void checkChangeJoint(int);
    /* 8057651C */ void checkRemoveJoint(int);

    static void* mCutNameList[2];
    static u8 mCutList[24];

private:
    /* 0x568 */ u8 field_0x568[0xfa4 - 0x568];
};
STATIC_ASSERT(sizeof(daNpcTkj_c) == 0xfa4);

class daNpc_Tkj_Param_c {
public:
    /* 8057652C */ ~daNpc_Tkj_Param_c();

    static u8 const m[140];
};

#endif /* D_A_NPC_TKJ_H */
