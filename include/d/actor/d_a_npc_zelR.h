#ifndef D_A_NPC_ZELR_H
#define D_A_NPC_ZELR_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_ZelR_c
 * @brief Zelda (Cloaked & Hooded)
 *
 * @details
 *
*/

struct daNpc_ZelR_HIOParam {
    /* 0x0 */ daNpcT_HIOParam common;
};

class daNpc_ZelR_HIO_c : public mDoHIO_entry_c {
    /* 0x8 */ daNpc_ZelR_HIOParam param;
};

class daNpc_ZelR_Param_c {
public:
    /* 80B71A74 */ virtual ~daNpc_ZelR_Param_c() {};

    static const daNpc_ZelR_HIOParam m;
};

class daNpc_ZelR_c : public daNpcT_c {
public:
    typedef BOOL (daNpc_ZelR_c::*ActionFn)(void*);
    typedef BOOL (daNpc_ZelR_c::*EventFn)(int);

    enum Type {
        TYPE_0,
        TYPE_1,
    };

    /* 80B6EE2C */ ~daNpc_ZelR_c();
    /* 80B6EF64 */ int create();
    /* 80B6F1F8 */ int CreateHeap();
    /* 80B6F664 */ int Delete();
    /* 80B6F698 */ int Execute();
    /* 80B6F6B8 */ int Draw();
    /* 80B6F77C */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80B6F79C */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80B6F7F4 */ u8 getType();
    /* 80B6F814 */ u32 getFlowNodeNo();
    /* 80B6F830 */ u8 getPath();
    /* 80B6F83C */ int isDelete();
    /* 80B6F894 */ void reset();
    /* 80B6FA10 */ void afterJntAnm(int);
    /* 80B6FA9C */ BOOL ctrlBtk();
    /* 80B6FBA8 */ void setParam();
    /* 80B6FC9C */ void setAfterTalkMotion();
    /* 80B6FCFC */ void srchActors();
    /* 80B6FD00 */ BOOL evtTalk();
    /* 80B6FE00 */ BOOL evtCutProc();
    /* 80B6FEC8 */ void action();
    /* 80B70018 */ void beforeMove();
    /* 80B70090 */ void setAttnPos();
    /* 80B702B0 */ void setCollision();
    /* 80B703E0 */ int drawDbgInfo();
    /* 80B703E8 */ int selectAction();
    /* 80B70430 */ int chkAction(int (daNpc_ZelR_c::*)(void*));
    /* 80B7045C */ int setAction(int (daNpc_ZelR_c::*)(void*));
    /* 80B70504 */ int wait(void*);
    /* 80B706B0 */ BOOL talk(void*);
    /* 80B71974 */ daNpc_ZelR_c(daNpcT_faceMotionAnmData_c const* param_1, daNpcT_motionAnmData_c const* param_2,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_3, int param_4,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_5, int param_6,
                                daNpcT_evtData_c const* param_7, char** param_8) :
                                daNpcT_c(param_1, param_2, param_3, param_4, param_5, param_6, param_7, param_8)
                                 {}
    /* 80B71A34 */ u16 getEyeballRMaterialNo() { return 3; }
    /* 80B71A3C */ u16 getEyeballLMaterialNo() { return 2; }
    /* 80B71A44 */ s32 getHeadJointNo() { return 3; }
    /* 80B71A4C */ s32 getBackboneJointNo() { return 1; }
    /* 80B71A54 */ BOOL checkChangeJoint(int param_1) { return param_1 == 3; };
    /* 80B71A64 */ BOOL checkRemoveJoint(int param_1) { return param_1 == 13; };

    static char* mCutNameList;
    static EventFn mCutList[1];

private:
    /* 0xE40 */ u8 field_0xe40[0xe44 - 0xe40];
    /* 0xE44 */ dCcD_Cyl mCyl;
    /* 0xF80 */ u8 mType;
    /* 0xF84 */ ActionFn field_0xf84;
    /* 0xF90 */ ActionFn field_0xf90;
    /* 0xF9C */ daNpcT_Path_c mPath;
    /* 0xFBE */ int field_0xfc4;
};

STATIC_ASSERT(sizeof(daNpc_ZelR_c) == 0xfc8);


#endif /* D_A_NPC_ZELR_H */
