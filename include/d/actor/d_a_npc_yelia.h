#ifndef D_A_NPC_YELIA_H
#define D_A_NPC_YELIA_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Yelia_c
 * @brief Ilia
 *
 * @details
 *
 */
class daNpc_Yelia_c : public fopAc_ac_c {
public:
    /* 80B4D30C */ ~daNpc_Yelia_c();
    /* 80B4D458 */ void create();
    /* 80B4D754 */ void CreateHeap();
    /* 80B4DC20 */ void Delete();
    /* 80B4DC54 */ void Execute();
    /* 80B4DC74 */ void Draw();
    /* 80B4DD08 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80B4DD28 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80B4DD80 */ void getType();
    /* 80B4DDF8 */ void isDelete();
    /* 80B4DF10 */ void reset();
    /* 80B4E068 */ void afterJntAnm(int);
    /* 80B4E0F4 */ void setParam();
    /* 80B4E2C0 */ void checkChangeEvt();
    /* 80B4E5BC */ void setAfterTalkMotion();
    /* 80B4E6A0 */ void srchActors();
    /* 80B4E7C8 */ void evtTalk();
    /* 80B4E868 */ void evtCutProc();
    /* 80B4E930 */ void action();
    /* 80B4EA28 */ void beforeMove();
    /* 80B4EAEC */ void setAttnPos();
    /* 80B4EE4C */ void setCollision();
    /* 80B4EFA4 */ bool drawDbgInfo();
    /* 80B4EFAC */ void selectAction();
    /* 80B4F054 */ void chkAction(int (daNpc_Yelia_c::*)(void*));
    /* 80B4F080 */ void setAction(int (daNpc_Yelia_c::*)(void*));
    /* 80B4F128 */ void cutConversationAboutLoopHole(int);
    /* 80B4F3E0 */ void cutTWResistance(int);
    /* 80B4F534 */ void cutTakeWoodStatue(int);
    /* 80B4FDD8 */ void cutClothTry(int);
    /* 80B4FE78 */ void cutThankYou(int);
    /* 80B50084 */ void wait(void*);
    /* 80B5080C */ void horseWait(void*);
    /* 80B50A0C */ void reminiscence(void*);
    /* 80B50B60 */ void talk(void*);
    /* 80B52104 */ daNpc_Yelia_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                 daNpcT_evtData_c const*, char**);
    /* 80B521E4 */ bool getEyeballMaterialNo();
    /* 80B521EC */ s32 getHeadJointNo();
    /* 80B521F4 */ s32 getNeckJointNo();
    /* 80B521FC */ bool getBackboneJointNo();
    /* 80B52204 */ void checkChangeJoint(int);
    /* 80B52214 */ void checkRemoveJoint(int);
    /* 80B52224 */ bool chkXYItems();

    static void* mCutNameList[6];
    static u8 mCutList[72];
private:
    /* 0x568 */ u8 field_0x568[0xff0 - 0x568];
};

STATIC_ASSERT(sizeof(daNpc_Yelia_c) == 0xff0);

class daNpc_Yelia_Param_c {
public:
    /* 80B5222C */ ~daNpc_Yelia_Param_c();

    static u8 const m[140];
};

#endif /* D_A_NPC_YELIA_H */
