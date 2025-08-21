#ifndef D_A_NPC_GRMC_H
#define D_A_NPC_GRMC_H

#include "d/actor/d_a_npc.h"
#include "d/d_shop_system.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_grMC_c
 * @brief Goron Child (Shopkeeper)
 *
 * @details
 *
*/
class daNpc_grMC_c : public dShopSystem_c {
public:
    typedef int (daNpc_grMC_c::*actionFunc)(void*);

    /* 809D740C */ ~daNpc_grMC_c();
    /* 809D7534 */ cPhs__Step create();
    /* 809D77BC */ int CreateHeap();
    /* 809D79BC */ int Delete();
    /* 809D79F0 */ int Execute();
    /* 809D7AD4 */ int Draw();
    /* 809D7B18 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 809D7B38 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 809D7B90 */ u8 getType();
    /* 809D7B98 */ int getFlowNodeNo();
    /* 809D7BB4 */ u8 getMaxNumItem();
    /* 809D7BC0 */ BOOL isDelete();
    /* 809D7C34 */ void reset();
    /* 809D7D48 */ void afterJntAnm(int);
    /* 809D7DD4 */ void setParam();
    /* 809D7F28 */ void setAfterTalkMotion();
    /* 809D7FCC */ void srchActors();
    /* 809D7FD0 */ BOOL evtTalk();
    /* 809D8174 */ BOOL evtCutProc();
    /* 809D823C */ void action();
    /* 809D8398 */ void beforeMove();
    /* 809D8410 */ void setAttnPos();
    /* 809D8670 */ void setCollision();
    /* 809D87A0 */ int drawDbgInfo();
    /* 809D87A8 */ void drawOtherMdl();
    /* 809D8808 */ void selectAction();
    /* 809D8850 */ void chkAction(int (daNpc_grMC_c::*)(void*));
    /* 809D887C */ void setAction(int (daNpc_grMC_c::*)(void*));
    /* 809D8924 */ void tend(void*);
    /* 809D8AE8 */ void talk(void*);
    /* 809D8C6C */ void shop(void*);
    /* 809D8E5C */ daNpc_grMC_c(
            daNpcT_faceMotionAnmData_c const* i_faceMotionAnmData,
            daNpcT_motionAnmData_c const* i_motionAnmData,
            daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_faceMotionSequenceData,
            int i_faceMotionStepNum,
            daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_motionSequenceData,
            int i_motionStepNum,
            daNpcT_evtData_c const* i_evtData,
            char** i_arcNames)
        : dShopSystem_c(i_faceMotionAnmData, i_motionAnmData, i_faceMotionSequenceData,
        i_faceMotionStepNum, i_motionSequenceData, i_motionStepNum, i_evtData,
        i_arcNames) {}
    /* 809D8FD4 */ s32 getHeadJointNo();
    /* 809D8FDC */ s32 getNeckJointNo();
    /* 809D8FE4 */ s32 getBackboneJointNo();
    /* 809D8FEC */ BOOL checkChangeJoint(int);
    /* 809D8FFC */ BOOL checkRemoveJoint(int);
    /* 809D900C */ u16 getEyeballMaterialNo();

    static void* mCutNameList;
    static u8 mCutList[12];

private:
    /* 0x0F7C */ u8 field_0xf7c[0xf80 - 0xf7c];
    /* 0x0F80 */ dCcD_Cyl mCyl;
    /* 0x10BC */ u8 mType;
    /* 0x10BD */ u8 field_0x10bd[0x10c0 - 0x10bd];
    /* 0x10C0 */ actionFunc mNextAction;
    /* 0x10CC */ actionFunc mAction;
    /* 0x10D8 */ int field_0x10d8;
    /* 0x10DC */ u8 field_0x10dc;
    /* 0x10DD */ u8 field_0x10dd;
    /* 0x10DE */ u8 field_0x10de[0x10e4 - 0x10de];
};

STATIC_ASSERT(sizeof(daNpc_grMC_c) == 0x10e4);

struct daNpc_grMC_HIOParam {
    /* 0x0 */ daNpcT_HIOParam common;
};

class daNpc_grMC_HIO_c : public mDoHIO_entry_c {
    /* 0x8 */ daNpc_grMC_HIOParam param;
};

class daNpc_grMC_Param_c {
public:
    /* 809D9014 */ virtual ~daNpc_grMC_Param_c() {}

    static daNpc_grMC_HIOParam const m;
};


#endif /* D_A_NPC_GRMC_H */
