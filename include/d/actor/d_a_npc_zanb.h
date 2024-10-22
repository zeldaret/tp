#ifndef D_A_NPC_ZANB_H
#define D_A_NPC_ZANB_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_zanB_c
 * @brief Zant Boss (Unused?)
 *
 * @details
 *
 */
class daNpc_zanB_c : public fopAc_ac_c {
public:
    /* 80B68F2C */ ~daNpc_zanB_c();
    /* 80B6904C */ void create();
    /* 80B69330 */ void CreateHeap();
    /* 80B6975C */ void Delete();
    /* 80B69790 */ void Execute();
    /* 80B697B0 */ void Draw();
    /* 80B69844 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80B69864 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80B698BC */ void getType();
    /* 80B698DC */ bool isDelete();
    /* 80B698E4 */ void reset();
    /* 80B69A3C */ void afterJntAnm(int);
    /* 80B69AC8 */ void checkChangeEvt();
    /* 80B69B7C */ void setParam();
    /* 80B69CA8 */ void setAfterTalkMotion();
    /* 80B69D08 */ void srchActors();
    /* 80B69D0C */ void evtTalk();
    /* 80B69DAC */ void evtCutProc();
    /* 80B69E74 */ void action();
    /* 80B69F60 */ void beforeMove();
    /* 80B69FD8 */ void setAttnPos();
    /* 80B6A268 */ void setCollision();
    /* 80B6A408 */ bool drawDbgInfo();
    /* 80B6A410 */ void drawGhost();
    /* 80B6A47C */ void selectAction();
    /* 80B6A4C4 */ void chkAction(int (daNpc_zanB_c::*)(void*));
    /* 80B6A4F0 */ void setAction(int (daNpc_zanB_c::*)(void*));
    /* 80B6A598 */ void wait(void*);
    /* 80B6A874 */ void talk(void*);
    /* 80B6BADC */ daNpc_zanB_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                daNpcT_evtData_c const*, char**);
    /* 80B6BC18 */ s32 getEyeballMaterialNo();
    /* 80B6BC20 */ s32 getHeadJointNo();
    /* 80B6BC28 */ s32 getNeckJointNo();
    /* 80B6BC30 */ bool getBackboneJointNo();
    /* 80B6BC38 */ void checkChangeJoint(int);
    /* 80B6BC48 */ void checkRemoveJoint(int);

    static void* mCutNameList;
    static u8 mCutList[12];

private:
    /* 0x568 */ u8 field_0x568[0xfa0 - 0x568];
};

STATIC_ASSERT(sizeof(daNpc_zanB_c) == 0xfa0);

class daNpc_zanB_Param_c {
public:
    /* 80B6BC58 */ ~daNpc_zanB_Param_c();

    static u8 const m[140];
};


#endif /* D_A_NPC_ZANB_H */
