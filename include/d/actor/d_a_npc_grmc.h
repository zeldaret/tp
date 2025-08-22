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

struct daNpc_grMC_HIOParam {
    /* 0x0 */ daNpcT_HIOParam common;
};

class daNpc_grMC_HIO_c : public mDoHIO_entry_c {
public:
    /* 0x8 */ daNpc_grMC_HIOParam param;
};

class daNpc_grMC_Param_c {
public:
    /* 809D9014 */ virtual ~daNpc_grMC_Param_c() {}

    static daNpc_grMC_HIOParam const m;
};

class daNpc_grMC_c : public dShopSystem_c {
public:

    enum Joint {
        /* 0x00 */ JNT_CENTER,
        /* 0x01 */ JNT_BACKBONE1,
        /* 0x02 */ JNT_BACKBONE2,
        /* 0x03 */ JNT_NECK,
        /* 0x04 */ JNT_HEAD,
        /* 0x05 */ JNT_CHIN,
        /* 0x06 */ JNT_MAYU,
        /* 0x07 */ JNT_MOUTH,
        /* 0x08 */ JNT_SHOULDERL,
        /* 0x09 */ JNT_ARML1,
        /* 0x0A */ JNT_ARML2,
        /* 0x0B */ JNT_HANDL,
        /* 0x0C */ JNT_SHOULDERR,
        /* 0x0D */ JNT_ARMR1,
        /* 0x0E */ JNT_ARMR2,
        /* 0x0F */ JNT_HANDR,
        /* 0x10 */ JNT_WAIST,
        /* 0x11 */ JNT_LEGL1,
        /* 0x12 */ JNT_LEGL2,
        /* 0x13 */ JNT_FOOTL,
        /* 0x14 */ JNT_LEGR1,
        /* 0x15 */ JNT_LEGR2,
        /* 0x16 */ JNT_FOOTR,
    };

    typedef int (daNpc_grMC_c::*cutFunc)(int);
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
    /* 809D8808 */ BOOL selectAction();
    /* 809D8850 */ BOOL chkAction(actionFunc);
    /* 809D887C */ BOOL setAction(actionFunc);
    /* 809D8924 */ int tend(void*);
    /* 809D8AE8 */ int talk(void*);
    /* 809D8C6C */ int shop(void*);
    #ifdef DEBUG
    int test(void*);
    #endif
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
    /* 809D8FD4 */ s32 getHeadJointNo() { return JNT_HEAD; }
    /* 809D8FDC */ s32 getNeckJointNo() { return JNT_NECK; }
    /* 809D8FE4 */ s32 getBackboneJointNo() { return JNT_BACKBONE1; }
    /* 809D8FEC */ BOOL checkChangeJoint(int param_1) { return param_1 == JNT_HEAD; }
    /* 809D8FFC */ BOOL checkRemoveJoint(int param_1) { return param_1 == JNT_MOUTH; }
    /* 809D900C */ u16 getEyeballMaterialNo() { return 1; };

    static char* mCutNameList;
    static cutFunc mCutList[1];

private:
    #ifdef DEBUG
    /* 0xFCC */ daNpc_grMC_HIO_c* mHIO;
    #endif
    /* 0x0F7C */ u8 field_0xf7c[0xf80 - 0xf7c];
    /* 0x0F80 */ dCcD_Cyl mCyl;
    /* 0x10BC */ u8 mType;
    /* 0x10C0 */ actionFunc mNextAction;
    /* 0x10CC */ actionFunc mAction;
    /* 0x10D8 */ int field_0x10d8;
    /* 0x10DC */ u8 field_0x10dc;
    /* 0x10DD */ u8 field_0x10dd;
    /* 0x10DE */ u8 field_0x10de[0x10e0 - 0x10de];
    /* 0x10E0 */ u8 field_0x10e0;
};

STATIC_ASSERT(sizeof(daNpc_grMC_c) == 0x10e4);

#endif /* D_A_NPC_GRMC_H */
