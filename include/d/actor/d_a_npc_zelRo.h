#ifndef D_A_NPC_ZELRO_H
#define D_A_NPC_ZELRO_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_ZelRo_c
 * @brief Zelda (Cloaked)
 *
 * @details
 *
*/

struct daNpc_ZelRo_HIOParam {
    /* 0x0 */ daNpcT_HIOParam common;
};

class daNpc_ZelRo_HIO_c : public mDoHIO_entry_c {
    /* 0x8 */ daNpc_ZelRo_HIOParam param;
};

class daNpc_ZelRo_Param_c {
public:
    /* 80B74BF0 */ virtual ~daNpc_ZelRo_Param_c() {}

    static daNpc_ZelRo_HIOParam const m;
};

class daNpc_ZelRo_c : public daNpcT_c {
public:
    enum Material {
        /* 0x0 */ SC_EYE_L_V,
        /* 0x1 */ SC_EYE_R_V,
        /* 0x2 */ ZELR_ROBE01_M_V,
        /* 0x3 */ ZELR_ROBE02_M_V,
        /* 0x4 */ ZELDA_BODY_M_V,
        /* 0x5 */ ZELDA_DOUBLESIDE_M_V,
        /* 0x6 */ ZELDA_EYEBALL_L_V,
        /* 0x7 */ ZELDA_EYEBALL_R_V,
        /* 0x8 */ ZELDA_HAIR_M_V,
        /* 0x9 */ ZELDA_JEWEL_M_V,
    };

    enum Joint {
        /* 0x00 */ JNT_CENTER,
        /* 0x01 */ JNT_BACKBONE1,
        /* 0x02 */ JNT_BACKBONE2,
        /* 0x03 */ JNT_NECK,
        /* 0x04 */ JNT_HEAD,
        /* 0x05 */ JNT_CHIN,
        /* 0x06 */ JNT_MANT,
        /* 0x07 */ JNT_MAYUL,
        /* 0x08 */ JNT_MAYUR,
        /* 0x09 */ JNT_MOMIL1,
        /* 0x0A */ JNT_MOMIL2,
        /* 0x0B */ JNT_MOMIL3,
        /* 0x0C */ JNT_MOMIR1,
        /* 0x0D */ JNT_MOMIR2,
        /* 0x0E */ JNT_MOMIR3,
        /* 0x0F */ JNT_MOUTH,
        /* 0x10 */ JNT_SHOULDERL,
        /* 0x11 */ JNT_ARML1,
        /* 0x12 */ JNT_ARML2,
        /* 0x13 */ JNT_HANDL,
        /* 0x14 */ JNT_FINGERL1,
        /* 0x15 */ JNT_FINGERL2,
        /* 0x16 */ JNT_THAMBL,
        /* 0x17 */ JNT_SHOULDERR,
        /* 0x18 */ JNT_ARMR1,
        /* 0x19 */ JNT_ARMR2,
        /* 0x1A */ JNT_HANDR,
        /* 0x1B */ JNT_FINGERR1,
        /* 0x1C */ JNT_FINGERR2,
        /* 0x1D */ JNT_THAMBR,
        /* 0x1E */ JNT_WAIST,
        /* 0x1F */ JNT_SKARTL_01,
        /* 0x20 */ JNT_SKARTL_02,
        /* 0x21 */ JNT_SKARTL_03,
        /* 0x22 */ JNT_SKARTR_01,
        /* 0x23 */ JNT_SKARTR_02,
        /* 0x24 */ JNT_SKARTR_03,
    };

    typedef int (daNpc_ZelRo_c::*actionFunc)(void*);
    typedef int (daNpc_ZelRo_c::*cutFunc)(int);

    /* 80B71FAC */ ~daNpc_ZelRo_c();
    /* 80B720E4 */ cPhs__Step create();
    /* 80B72378 */ int CreateHeap();
    /* 80B727E4 */ int Delete();
    /* 80B72818 */ int Execute();
    /* 80B72838 */ int Draw();
    /* 80B728FC */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80B7291C */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80B72974 */ u8 getType();
    /* 80B72994 */ int getFlowNodeNo();
    /* 80B729B0 */ u8 getPath();
    /* 80B729BC */ BOOL isDelete();
    /* 80B72A10 */ void reset();
    /* 80B72B8C */ void afterJntAnm(int);
    /* 80B72C18 */ BOOL ctrlBtk();
    /* 80B72D24 */ void setParam();
    /* 80B72E18 */ void setAfterTalkMotion();
    /* 80B72E78 */ void srchActors();
    /* 80B72E7C */ BOOL evtTalk();
    /* 80B72F7C */ BOOL evtCutProc();
    /* 80B73044 */ void action();
    /* 80B73194 */ void beforeMove();
    /* 80B7320C */ void setAttnPos();
    /* 80B7342C */ void setCollision();
    /* 80B7355C */ int drawDbgInfo();
    /* 80B73564 */ BOOL selectAction();
    /* 80B735AC */ BOOL chkAction(actionFunc);
    /* 80B735D8 */ BOOL setAction(actionFunc);
    /* 80B73680 */ int wait(void*);
    /* 80B7382C */ int talk(void*);
    #ifdef DEBUG
    int test(void*);
    #endif
    /* 80B74AE8 */ daNpc_ZelRo_c(
        daNpcT_faceMotionAnmData_c const* i_faceMotionAnmData,
        daNpcT_motionAnmData_c const* i_motionAnmData,
        daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_faceMotionSequenceData,
        int i_faceMotionStepNum,
        daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_motionSequenceData, int i_motionStepNum,
        daNpcT_evtData_c const* i_evtData, char** i_arcNames)
        : daNpcT_c(i_faceMotionAnmData, i_motionAnmData, i_faceMotionSequenceData,
                   i_faceMotionStepNum, i_motionSequenceData, i_motionStepNum, i_evtData,
                   i_arcNames) {}
    /* 80B74BA8 */ u16 getEyeballRMaterialNo() { return ZELDA_EYEBALL_R_V; }
    /* 80B74BB0 */ u16 getEyeballLMaterialNo() { return ZELDA_EYEBALL_L_V; }
    /* 80B74BB8 */ s32 getHeadJointNo() { return JNT_HEAD; }
    /* 80B74BC0 */ s32 getNeckJointNo() { return JNT_NECK; }
    /* 80B74BC8 */ s32 getBackboneJointNo() { return JNT_BACKBONE1; }
    /* 80B74BD0 */ BOOL checkChangeJoint(int i_joint) { return i_joint == JNT_HEAD; }
    /* 80B74BE0 */ BOOL checkRemoveJoint(int i_joint) { return i_joint == JNT_MOUTH; }

    static char* mCutNameList;
    static cutFunc mCutList[1];

private:
    /* 0xE40 */ daNpc_ZelRo_HIO_c* mHIO;
    /* 0xE44 */ dCcD_Cyl mCyl;
    /* 0xF80 */ u8 mType;
    /* 0xF84 */ actionFunc mNextAction;
    /* 0xF90 */ actionFunc mAction;
    /* 0xF9C */ daNpcT_Path_c mPath;
    /* 0xFC4 */ u8 field_0xfc4;
};

STATIC_ASSERT(sizeof(daNpc_ZelRo_c) == 0xfc8);

#endif /* D_A_NPC_ZELRO_H */
