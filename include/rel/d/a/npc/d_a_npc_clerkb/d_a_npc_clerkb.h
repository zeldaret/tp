#ifndef D_A_NPC_CLERKB_H
#define D_A_NPC_CLERKB_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_clerkB_c
 * @brief Malver
 *
 * @details
 *
 */
class daNpc_clerkB_c : public fopAc_ac_c {
public:
    /* 80995F2C */ ~daNpc_clerkB_c();
    /* 80996090 */ void create();
    /* 80996338 */ void CreateHeap();
    /* 809967C4 */ void Delete();
    /* 809967F8 */ void Execute();
    /* 809968D0 */ void Draw();
    /* 80996964 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80996984 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 809969DC */ void getType();
    /* 809969FC */ void beforeStartSeqAction(dMsgFlow_c*, int);
    /* 80996CCC */ void beforeSelectSeqAction(dMsgFlow_c*, int);
    /* 80996F7C */ void isDelete();
    /* 80996FAC */ void reset();
    /* 809970E0 */ void afterJntAnm(int);
    /* 80997188 */ void setParam();
    /* 809972BC */ void setAfterTalkMotion();
    /* 80997360 */ void srchActors();
    /* 809973BC */ void evtTalk();
    /* 80997598 */ void evtCutProc();
    /* 80997660 */ void action();
    /* 8099774C */ void beforeMove();
    /* 809977C4 */ void setAttnPos();
    /* 80997A1C */ void setCollision();
    /* 80997B50 */ bool drawDbgInfo();
    /* 80997B58 */ void drawOtherMdl();
    /* 80997BB8 */ void drawGhost();
    /* 80997C44 */ void selectAction();
    /* 80997CC0 */ void chkAction(int (daNpc_clerkB_c::*)(void*));
    /* 80997CEC */ void setAction(int (daNpc_clerkB_c::*)(void*));
    /* 80997D94 */ void setSe();
    /* 80997E54 */ void wait(void*);
    /* 809980AC */ void tend(void*);
    /* 80998328 */ void talk(void*);
    /* 80998520 */ void shop(void*);
    /* 80999680 */ daNpc_clerkB_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                                  daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                  daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                  daNpcT_evtData_c const*, char**);
    /* 809997AC */ s32 getEyeballMaterialNo();
    /* 809997B4 */ s32 getHeadJointNo();
    /* 809997BC */ s32 getNeckJointNo();
    /* 809997C4 */ bool getBackboneJointNo();
    /* 809997CC */ void checkChangeJoint(int);
    /* 809997DC */ void checkRemoveJoint(int);

    static void* mCutNameList;
    static u8 mCutList[12];

private:
    /* 0x568 */ u8 field_0x568[0x1118 - 0x568];
};
STATIC_ASSERT(sizeof(daNpc_clerkB_c) == 0x1118);

class daNpc_clerkB_Param_c {
public:
    /* 809997EC */ ~daNpc_clerkB_Param_c();

    static u8 const m[148];
};


#endif /* D_A_NPC_CLERKB_H */
