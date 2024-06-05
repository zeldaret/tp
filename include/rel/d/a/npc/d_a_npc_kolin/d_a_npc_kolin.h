#ifndef D_A_NPC_KOLIN_H
#define D_A_NPC_KOLIN_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Kolin_c
 * @brief Colin
 *
 * @details
 *
 */
class daNpc_Kolin_c : public fopAc_ac_c {
public:
    /* 80553FEC */ ~daNpc_Kolin_c();
    /* 80554138 */ void create();
    /* 80554414 */ void CreateHeap();
    /* 80554930 */ void Delete();
    /* 80554964 */ void Execute();
    /* 80554984 */ void Draw();
    /* 80554A18 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80554A38 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80554A90 */ void getType();
    /* 80554B30 */ void isDelete();
    /* 80554CB0 */ void reset();
    /* 80554EBC */ void afterJntAnm(int);
    /* 80554F48 */ void setParam();
    /* 80555118 */ void checkChangeEvt();
    /* 8055523C */ void setAfterTalkMotion();
    /* 805552DC */ void srchActors();
    /* 80555448 */ void evtTalk();
    /* 805554E8 */ void evtCutProc();
    /* 805555B0 */ void action();
    /* 8055574C */ void beforeMove();
    /* 80555810 */ void setAttnPos();
    /* 80555B48 */ void setCollision();
    /* 80555CE4 */ bool drawDbgInfo();
    /* 80555CEC */ void drawOtherMdl();
    /* 80555DC4 */ void changeAnm(int*, int*);
    /* 80555DEC */ void changeBck(int*, int*);
    /* 80555E38 */ void selectAction();
    /* 80555F28 */ void chkAction(int (daNpc_Kolin_c::*)(void*));
    /* 80555F54 */ void setAction(int (daNpc_Kolin_c::*)(void*));
    /* 80555FFC */ void calcFollowSpeedAndAngle(fopAc_ac_c*, int, int);
    /* 805563BC */ void followPlayer(int);
    /* 805567AC */ void lookup(u8);
    /* 805568AC */ void cutNoRide(int);
    /* 80556A04 */ void cutHail(int);
    /* 80556DB4 */ void cutGiveMeWoodSwd(int);
    /* 80557054 */ void cutGetWoodSwd(int);
    /* 805576C4 */ void cutConversationAboutLoopHole(int);
    /* 805579DC */ void cutCacaricoConversation(int);
    /* 80557BD4 */ void cutConversationAboutDeathMt(int);
    /* 80557C6C */ void cutConversationAboutGoron(int);
    /* 80557D04 */ void cutClothTry(int);
    /* 80557E38 */ void cutThankYou(int);
    /* 80557ED8 */ void wait(void*);
    /* 80558698 */ void timidWalk(void*);
    /* 80558AF8 */ void follow(void*);
    /* 80558C4C */ void clothWait(void*);
    /* 80558E90 */ void talk(void*);
    /* 8055A3B8 */ daNpc_Kolin_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                 daNpcT_evtData_c const*, char**);
    /* 8055A498 */ s32 getEyeballMaterialNo();
    /* 8055A4A0 */ s32 getHeadJointNo();
    /* 8055A4A8 */ s32 getNeckJointNo();
    /* 8055A4B0 */ bool getBackboneJointNo();
    /* 8055A4B8 */ void checkChangeJoint(int);
    /* 8055A4C8 */ void checkRemoveJoint(int);
    /* 8055A4D8 */ s32 getFootLJointNo();
    /* 8055A4E0 */ s32 getFootRJointNo();

    static void* mCutNameList[11];
    static u8 mCutList[132];

private:
    /* 0x568 */ u8 field_0x568[0x1020 - 0x568];
};
STATIC_ASSERT(sizeof(daNpc_Kolin_c) == 0x1020);

class daNpc_Kolin_Param_c {
public:
    /* 8055A4E8 */ ~daNpc_Kolin_Param_c();

    static u8 const m[160];
};


#endif /* D_A_NPC_KOLIN_H */
