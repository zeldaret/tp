#ifndef D_A_NPC_GRM_H
#define D_A_NPC_GRM_H

#include "d/actor/d_a_npc.h"
#include "d/d_shop_system.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_grM_c
 * @brief Goron Adult (Shopkeeper)
 *
 * @details
 *
 */
class daNpc_grM_c : public dShopSystem_c {
public:
    typedef int (daNpc_grM_c::*cutFunc)(int);
    typedef int (daNpc_grM_c::*actionFunc)(void*);

    enum JOINT {
        /* 0X00 */ JNT_CENTER,
        /* 0X01 */ JNT_BACKBONE1,
        /* 0X02 */ JNT_BACKBONE2,
        /* 0X03 */ JNT_NECK,
        /* 0X04 */ JNT_HEAD,
        /* 0X05 */ JNT_CHIN,
        /* 0X06 */ JNT_MAYU,
        /* 0X07 */ JNT_MOUTH,
        /* 0X08 */ JNT_SHOULDERL,
        /* 0X09 */ JNT_ARML1,
        /* 0X0A */ JNT_ARML2,
        /* 0X0B */ JNT_HANDL,
        /* 0X0C */ JNT_FINGERL1,
        /* 0X0D */ JNT_THUMBL,
        /* 0X0E */ JNT_SHOULDERR,
        /* 0X0F */ JNT_ARMR1,
        /* 0X10 */ JNT_ARMR2,
        /* 0X11 */ JNT_HANDR,
        /* 0X12 */ JNT_FINGERR1,
        /* 0X13 */ JNT_THUMBR,
        /* 0X14 */ JNT_WAIST,
        /* 0X15 */ JNT_LEGL1,
        /* 0X16 */ JNT_LEGL2,
        /* 0X17 */ JNT_FOOTL,
        /* 0X18 */ JNT_LEGR1,
        /* 0X19 */ JNT_LEGR2,
        /* 0X1A */ JNT_FOOTR
    };

    enum Material {
        /* 0x0 */ MAT_SC_EYE,
        /* 0x1 */ MAT_GRA_A_EYEBALL,
        /* 0x2 */ MAT_GRA_A_FACE_M,
        /* 0x3 */ MAT_GRA_M,
    };

    /* 809D406C */ ~daNpc_grM_c();
    /* 809D4194 */ cPhs__Step create();
    /* 809D441C */ int CreateHeap();
    /* 809D45C4 */ int Delete();
    /* 809D45F8 */ int Execute();
    /* 809D46D4 */ int Draw();
    /* 809D4768 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 809D4788 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 809D47E0 */ bool getType();
    /* 809D47E8 */ int getFlowNodeNo();
    /* 809D4804 */ u8 getMaxNumItem();
    /* 809D4810 */ BOOL isDelete();
    /* 809D4820 */ void reset();
    /* 809D4944 */ void afterJntAnm(int);
    /* 809D49D0 */ void setParam();
    /* 809D4B24 */ void setAfterTalkMotion();
    /* 809D4BB8 */ void srchActors();
    /* 809D4BBC */ BOOL evtProc();
    /* 809D4E2C */ BOOL evtTalk();
    /* 809D4FD0 */ BOOL evtCutProc();
    /* 809D5098 */ void action();
    /* 809D51F4 */ void beforeMove();
    /* 809D526C */ void setAttnPos();
    /* 809D54C8 */ void setCollision();
    /* 809D55F8 */ int drawDbgInfo();
    /* 809D5600 */ void drawOtherMdl();
    /* 809D5660 */ BOOL selectAction();
    /* 809D56A8 */ BOOL chkAction(actionFunc);
    /* 809D56D4 */ BOOL setAction(actionFunc);
    /* 809D577C */ int cutTalkSpa(int);
    /* 809D58F4 */ int tend(void*);
    /* 809D5AAC */ int talk(void*);
    /* 809D5C30 */ int shop(void*);
    /* 809D5E20 */ daNpc_grM_c(
        daNpcT_faceMotionAnmData_c const* i_faceMotionAnmData,
        daNpcT_motionAnmData_c const* i_motionAnmData,
        daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_faceMotionSequenceData,
        int i_faceMotionStepNum,
        daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_motionSequenceData, int i_motionStepNum,
        daNpcT_evtData_c const* i_evtData, char** i_arcNames)
        : dShopSystem_c(i_faceMotionAnmData, i_motionAnmData, i_faceMotionSequenceData,
                        i_faceMotionStepNum, i_motionSequenceData, i_motionStepNum, i_evtData,
                        i_arcNames) {}
    /* 809D5F98 */ u16 getEyeballMaterialNo() { return MAT_GRA_A_EYEBALL; }
    /* 809D5FA0 */ s32 getHeadJointNo() { return JNT_HEAD; }
    /* 809D5FA8 */ s32 getNeckJointNo() { return JNT_NECK; }
    /* 809D5FB0 */ s32 getBackboneJointNo() { return JNT_BACKBONE1; }
    /* 809D5FB8 */ BOOL checkChangeJoint(int param_0) { return param_0 == JNT_HEAD; }
    /* 809D5FC8 */ BOOL checkRemoveJoint(int param_0) { return param_0 == JNT_MOUTH; }

    static char* mCutNameList[2];
    static cutFunc mCutList[2];

private:
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

STATIC_ASSERT(sizeof(daNpc_grM_c) == 0x10e4);

struct daNpc_grM_HIOParam {
    /* 0x0 */ daNpcT_HIOParam common;
};

class daNpc_grM_HIO_c : public mDoHIO_entry_c {
public:
    /* 0x8 */ daNpc_grM_HIOParam param;
};

class daNpc_grM_Param_c {
public:
    /* 809D5FD8 */ virtual ~daNpc_grM_Param_c() {}

    static daNpc_grM_HIOParam const m;
};

#endif /* D_A_NPC_GRM_H */
