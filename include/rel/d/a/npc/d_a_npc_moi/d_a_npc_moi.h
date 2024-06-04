#ifndef D_A_NPC_MOI_H
#define D_A_NPC_MOI_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Moi_c
 * @brief Rusl
 *
 * @details
 *
 */
class daNpc_Moi_c : public fopAc_ac_c {
public:
    /* 80A73F4C */ ~daNpc_Moi_c();
    /* 80A74150 */ void create();
    /* 80A74474 */ void CreateHeap();
    /* 80A749F8 */ void Delete();
    /* 80A74A2C */ void Execute();
    /* 80A74A4C */ void Draw();
    /* 80A74B80 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80A74BA0 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80A74BF8 */ void getType();
    /* 80A74C6C */ void isDelete();
    /* 80A74D8C */ void reset();
    /* 80A7513C */ void chkMoiN();
    /* 80A75160 */ void afterJntAnm(int);
    /* 80A751E4 */ void setParam();
    /* 80A75460 */ void checkChangeEvt();
    /* 80A75514 */ void setAfterTalkMotion();
    /* 80A755C8 */ void srchActors();
    /* 80A75664 */ void evtTalk();
    /* 80A75704 */ void evtCutProc();
    /* 80A757CC */ void action();
    /* 80A759F4 */ void beforeMove();
    /* 80A75AB8 */ void setAttnPos();
    /* 80A75E68 */ void setCollision();
    /* 80A760E0 */ bool drawDbgInfo();
    /* 80A760E8 */ void drawOtherMdl();
    /* 80A762A8 */ void afterSetMotionAnm(int, int, f32, int);
    /* 80A762CC */ void changeAnm(int*, int*);
    /* 80A7633C */ void changeBck(int*, int*);
    /* 80A76384 */ void changeBtp(int*, int*);
    /* 80A7643C */ void changeBtk(int*, int*);
    /* 80A764B0 */ void selectAction();
    /* 80A765CC */ void chkAction(int (daNpc_Moi_c::*)(void*));
    /* 80A765F8 */ void setAction(int (daNpc_Moi_c::*)(void*));
    /* 80A766A0 */ void chkPlayerGetWoodShield();
    /* 80A766DC */ void setSSlash(int);
    /* 80A76888 */ void chkPullOutSw();
    /* 80A768FC */ void pullOutSw();
    /* 80A76954 */ void chkSetInSw();
    /* 80A769C8 */ void setInSw();
    /* 80A76A20 */ void setSwAT();
    /* 80A76AFC */ void torch();
    /* 80A76C7C */ void injuryCheck();
    /* 80A76E10 */ void injuryTurn(cXyz);
    /* 80A76F3C */ void injuryWalk();
    /* 80A770FC */ void poise();
    /* 80A77740 */ void cutDeliveredSw(int);
    /* 80A77BA0 */ void cutAppearanceMoi(int);
    /* 80A7838C */ void cutConversationWithUri(int);
    /* 80A785FC */ void cutFindWolf(int);
    /* 80A789D8 */ void wait(void*);
    /* 80A78E0C */ void walk(void*);
    /* 80A78FF4 */ void walkOnEggshell(void*);
    /* 80A794C0 */ void rest(void*);
    /* 80A79608 */ void talk(void*);
    /* 80A7AC88 */ daNpc_Moi_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                               daNpcT_evtData_c const*, char**);
    /* 80A7AE0C */ void getEyeballMaterialNo();
    /* 80A7AE3C */ s32 getHeadJointNo();
    /* 80A7AE44 */ s32 getNeckJointNo();
    /* 80A7AE4C */ bool getBackboneJointNo();
    /* 80A7AE54 */ void checkChangeJoint(int);
    /* 80A7AE64 */ void checkRemoveJoint(int);
    /* 80A7AE74 */ s32 getFootLJointNo();
    /* 80A7AE7C */ s32 getFootRJointNo();

    static void* mCutNameList[5];
    static u8 mCutList[60];

private:
    /* 0x568 */ u8 field_0x568[0x1674 - 0x568];
};
STATIC_ASSERT(sizeof(daNpc_Moi_c) == 0x1674);

class daNpc_Moi_Param_c {
public:
    /* 80A7AE84 */ ~daNpc_Moi_Param_c();

    static u8 const m[188];
};


#endif /* D_A_NPC_MOI_H */
