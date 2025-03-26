#ifndef D_A_NPC_ZANT_H
#define D_A_NPC_ZANT_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Zant_c
 * @brief Zant
 *
 * @details
 *
 */
class daNpc_Zant_c : public daNpcT_c {
public:
    enum Type {
        TYPE_0,
        TYPE_1,
    };

    /* 80B6C1AC */ ~daNpc_Zant_c();
    /* 80B6C2D0 */ int create();
    /* 80B6C574 */ void CreateHeap();
    /* 80B6C700 */ int Delete();
    /* 80B6C734 */ int Execute();
    /* 80B6C754 */ int Draw();
    /* 80B6C7E8 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80B6C808 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80B6C860 */ u8 getType();
    /* 80B6C880 */ u32 getFlowNodeNo();
    /* 80B6C89C */ int isDelete();
    /* 80B6C8CC */ void reset();
    /* 80B6C9F0 */ void afterJntAnm(int);
    /* 80B6C9F4 */ void setParam();
    /* 80B6CAF0 */ void setAfterTalkMotion();
    /* 80B6CB50 */ void srchActors();
    /* 80B6CB54 */ BOOL evtTalk();
    /* 80B6CC54 */ BOOL evtCutProc();
    /* 80B6CD1C */ void action();
    /* 80B6CE08 */ void beforeMove();
    /* 80B6CE80 */ void setAttnPos();
    /* 80B6D074 */ void setCollision();
    /* 80B6D1A8 */ int drawDbgInfo();
    /* 80B6D1B0 */ void drawGhost();
    /* 80B6D21C */ void selectAction();
    /* 80B6D264 */ void chkAction(int (daNpc_Zant_c::*)(void*));
    /* 80B6D290 */ void setAction(int (daNpc_Zant_c::*)(void*));
    /* 80B6D338 */ void wait(void*);
    /* 80B6D584 */ void talk(void*);
    /* 80B6E800 */ daNpc_Zant_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                daNpcT_evtData_c const*, char**);

    static void* mCutNameList;
    static u8 mCutList[12];

private:
    /* 0x568 */ u8 field_0xe40[0xfa0 - 0xe40];
    /* 0xE44 */ dCcD_Cyl mCyl;
    /* 0xF80 */ u8 mType;
};

// STATIC_ASSERT(sizeof(daNpc_Zant_c) == 0xfa0);

class daNpc_Zant_Param_c {
public:
    /* 80B6E93C */ ~daNpc_Zant_Param_c();

    static u8 const m[140];
};


#endif /* D_A_NPC_ZANT_H */
