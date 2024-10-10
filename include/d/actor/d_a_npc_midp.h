#ifndef D_A_NPC_MIDP_H
#define D_A_NPC_MIDP_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_midP_c
 * @brief Midna (True Form)
 *
 * @details
 *
 */
class daNpc_midP_c : public fopAc_ac_c {
public:
    /* 80A70C6C */ ~daNpc_midP_c();
    /* 80A70D90 */ void create();
    /* 80A71074 */ void CreateHeap();
    /* 80A714BC */ void Delete();
    /* 80A714F0 */ void Execute();
    /* 80A71510 */ void Draw();
    /* 80A715D4 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80A715F4 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80A7164C */ void getType();
    /* 80A7166C */ void isDelete();
    /* 80A7168C */ void reset();
    /* 80A717D4 */ void afterJntAnm(int);
    /* 80A71860 */ void ctrlBtk();
    /* 80A7199C */ void setParam();
    /* 80A71A98 */ void setAfterTalkMotion();
    /* 80A71AF8 */ void srchActors();
    /* 80A71AFC */ void evtTalk();
    /* 80A71BFC */ void evtCutProc();
    /* 80A71CC4 */ void action();
    /* 80A71DB0 */ void beforeMove();
    /* 80A71E28 */ void setAttnPos();
    /* 80A72064 */ void setCollision();
    /* 80A7216C */ bool drawDbgInfo();
    /* 80A72174 */ void drawGhost();
    /* 80A721E0 */ void selectAction();
    /* 80A72228 */ void chkAction(int (daNpc_midP_c::*)(void*));
    /* 80A72254 */ void setAction(int (daNpc_midP_c::*)(void*));
    /* 80A722FC */ void wait(void*);
    /* 80A72548 */ void talk(void*);
    /* 80A737D0 */ daNpc_midP_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                daNpcT_evtData_c const*, char**);
    /* 80A7390C */ s32 getEyeballRMaterialNo();
    /* 80A73914 */ s32 getEyeballLMaterialNo();
    /* 80A7391C */ s32 getHeadJointNo();
    /* 80A73924 */ s32 getNeckJointNo();
    /* 80A7392C */ s32 getBackboneJointNo();
    /* 80A73934 */ void checkChangeJoint(int);
    /* 80A73944 */ void checkRemoveJoint(int);

    static void* mCutNameList;
    static u8 mCutList[12];

private:
    /* 0x568 */ u8 field_0x568[0xfa0 - 0x568];
};

STATIC_ASSERT(sizeof(daNpc_midP_c) == 0xfa0);

class daNpc_midP_Param_c {
public:
    /* 80A73954 */ ~daNpc_midP_Param_c();

    static u8 const m[140];
};


#endif /* D_A_NPC_MIDP_H */
