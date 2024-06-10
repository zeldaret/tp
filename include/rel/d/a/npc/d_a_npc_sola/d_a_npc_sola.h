#ifndef D_A_NPC_SOLA_H
#define D_A_NPC_SOLA_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_solA_c
 * @brief  Soldier A (Castle Town?)
 *
 * @details
 *
 */
class daNpc_solA_c : public fopAc_ac_c {
public:
    /* 80AECBAC */ ~daNpc_solA_c();
    /* 80AECCD0 */ void create();
    /* 80AECF58 */ void CreateHeap();
    /* 80AED0F8 */ void Delete();
    /* 80AED12C */ void Execute();
    /* 80AED14C */ void Draw();
    /* 80AED1E8 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80AED208 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80AED260 */ bool getType();
    /* 80AED268 */ void getFlowNodeNo();
    /* 80AED284 */ void isDelete();
    /* 80AED294 */ void reset();
    /* 80AED3B8 */ void setParam();
    /* 80AED4A4 */ void setAfterTalkMotion();
    /* 80AED504 */ void srchActors();
    /* 80AED508 */ void evtTalk();
    /* 80AED608 */ void evtCutProc();
    /* 80AED6D0 */ void action();
    /* 80AED758 */ void beforeMove();
    /* 80AED7D0 */ void setAttnPos();
    /* 80AED9DC */ void setCollision();
    /* 80AEDABC */ bool drawDbgInfo();
    /* 80AEDAC4 */ void drawOtherMdl();
    /* 80AEDAC8 */ void selectAction();
    /* 80AEDB10 */ void chkAction(int (daNpc_solA_c::*)(void*));
    /* 80AEDB3C */ void setAction(int (daNpc_solA_c::*)(void*));
    /* 80AEDBE4 */ void wait(void*);
    /* 80AEDD60 */ void talk(void*);
    /* 80AEEF40 */ daNpc_solA_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                daNpcT_evtData_c const*, char**);
    /* 80AEF07C */ s32 getHeadJointNo();
    /* 80AEF084 */ s32 getNeckJointNo();
    /* 80AEF08C */ bool getBackboneJointNo();

    static void* mCutNameList;
    static u8 mCutList[12];

private:
    /* 0x568 */ u8 field_0x568[0xfa0 - 0x568];
};

STATIC_ASSERT(sizeof(daNpc_solA_c) == 0xfa0);

class daNpc_solA_Param_c {
public:
    /* 80AEF094 */ ~daNpc_solA_Param_c();

    static u8 const m[140];
};


#endif /* D_A_NPC_SOLA_H */
