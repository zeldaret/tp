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
    /* 80B71A34 */ s32 getEyeballRMaterialNo();
    /* 80B71A3C */ s32 getEyeballLMaterialNo();
    /* 80B71A44 */ s32 getHeadJointNo();
    /* 80B71A4C */ s32 getBackboneJointNo();
    /* 80B71A54 */ BOOL checkChangeJoint(int param_1) { return param_1 == 3; };
    /* 80B71A64 */ BOOL checkRemoveJoint(int param_1) { return param_1 == 13; };

    static char* mCutNameList;
    static EventFn mCutList[1];

private:
    /* 0xE40 */ u8 field_0xe40[0xe44 - 0xe40];
    /* 0xE44 */ dCcD_Cyl mCyl;
    /* 0xF80 */ u8 mType;
    /* 0xF81 */ u8 field_0xf81[0xf84 - 0xf81];
    /* 0xF84 */ ActionFn field_0xf84;
    /* 0xF90 */ ActionFn field_0xf90;
    /* 0xF9C */ daNpcT_Path_c mPath;
    /* 0xFBE */ int field_0xfc4;
};

STATIC_ASSERT(sizeof(daNpc_ZelR_c) == 0xfc8);

class daNpc_ZelR_Param_c {
public:
    /* 80B71A74 */ virtual ~daNpc_ZelR_Param_c() {};

    struct Data {
        /* 0x00 */ f32 field_0x0;
        /* 0x04 */ f32 mGravity;
        /* 0x08 */ f32 field_0x8;
        /* 0x0C */ f32 field_0xc;
        /* 0x10 */ f32 mWeight;
        /* 0x14 */ f32 mCylH;
        /* 0x18 */ f32 mWallH;
        /* 0x1C */ f32 mWallR;
        /* 0x20 */ f32 field_0x20;
        /* 0x24 */ f32 field_0x24;
        /* 0x28 */ f32 field_0x28;
        /* 0x2C */ f32 field_0x2c;
        /* 0x30 */ f32 field_0x30;
        /* 0x34 */ f32 field_0x34;
        /* 0x38 */ f32 field_0x38;
        /* 0x3C */ f32 field_0x3c;
        /* 0x40 */ f32 field_0x40;
        /* 0x44 */ f32 mMorfFrames;
        /* 0x48 */ s16 field_0x48;
        /* 0x4A */ s16 field_0x4a;
        /* 0x4C */ s16 field_0x4c;
        /* 0x4E */ s16 field_0x4e;
        /* 0x50 */ f32 field_0x50;
        /* 0x54 */ f32 field_0x54;
        /* 0x58 */ f32 field_0x58;
        /* 0x5C */ f32 field_0x5c;
        /* 0x60 */ s16 field_0x60;
        /* 0x62 */ s16 field_0x62;
        /* 0x64 */ f32 field_0x64;
        /* 0x68 */ f32 field_0x68;
        /* 0x6C */ f32 field_0x6c;
        /* 0x70 */ f32 field_0x70;
        /* 0x74 */ f32 field_0x74;
        /* 0x78 */ f32 field_0x78;
        /* 0x7C */ f32 field_0x7c;
        /* 0x80 */ f32 field_0x80;
        /* 0x84 */ f32 field_0x84;
        /* 0x88 */ f32 field_0x88;
    };

    static const Data m;
};


#endif /* D_A_NPC_ZELR_H */
