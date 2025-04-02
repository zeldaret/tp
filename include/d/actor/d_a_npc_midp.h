#ifndef D_A_NPC_MIDP_H
#define D_A_NPC_MIDP_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_midP_c
 * @brief Midna (True Form)
 *
 * @details
 *
 */
class daNpc_midP_c : public daNpcT_c {
public:
    typedef int (daNpc_midP_c::*cutFunc)(int);
    typedef int (daNpc_midP_c::*actionFunc)(void*);

    enum Type {
        TYPE_0,
        TYPE_1,
    };

    /* 80A70C6C */ ~daNpc_midP_c();
    /* 80A70D90 */ int create();
    /* 80A71074 */ int CreateHeap();
    /* 80A714BC */ int Delete();
    /* 80A714F0 */ int Execute();
    /* 80A71510 */ int Draw();
    /* 80A715D4 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80A715F4 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80A7164C */ u8 getType();
    /* 80A7166C */ int isDelete();
    /* 80A7168C */ void reset();
    /* 80A717D4 */ void afterJntAnm(int);
    /* 80A71860 */ BOOL ctrlBtk();
    /* 80A7199C */ void setParam();
    /* 80A71A98 */ void setAfterTalkMotion();
    /* 80A71AF8 */ void srchActors();
    /* 80A71AFC */ BOOL evtTalk();
    /* 80A71BFC */ BOOL evtCutProc();
    /* 80A71CC4 */ void action();
    /* 80A71DB0 */ void beforeMove();
    /* 80A71E28 */ void setAttnPos();
    /* 80A72064 */ void setCollision();
    /* 80A7216C */ int drawDbgInfo();
    /* 80A72174 */ void drawGhost();
    /* 80A721E0 */ int selectAction();
    /* 80A72228 */ int chkAction(int (daNpc_midP_c::*)(void*));
    /* 80A72254 */ int setAction(int (daNpc_midP_c::*)(void*));
    /* 80A722FC */ int wait(void*);
    /* 80A72548 */ int talk(void*);
    /* 80A737D0 */ daNpc_midP_c(daNpcT_faceMotionAnmData_c const* param_1, daNpcT_motionAnmData_c const* param_2,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_3, int param_4,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_5, int param_6,
                                daNpcT_evtData_c const* param_7, char** param_8) :
                                daNpcT_c(param_1, param_2, param_3, param_4, param_5, param_6, param_7, param_8) {}
    /* 80A7390C */ s32 getEyeballRMaterialNo();
    /* 80A73914 */ s32 getEyeballLMaterialNo();
    /* 80A7391C */ s32 getHeadJointNo();
    /* 80A73924 */ s32 getNeckJointNo();
    /* 80A7392C */ s32 getBackboneJointNo();
    /* 80A73934 */ BOOL checkChangeJoint(int);
    /* 80A73944 */ BOOL checkRemoveJoint(int);

    int getFlowNodeNo() {
        u16 nodeNo = home.angle.x;
        if (nodeNo == 0xffff) {
            return -1;
        }
        return nodeNo;
    }

    static char* mCutNameList;
    static cutFunc mCutList[1];

private:
    /* 0xE40 */ u8 field_0xE40[0xe44 - 0xe40];
    /* 0xE44 */ dCcD_Cyl mCyl;
    /* 0xF80 */ u8 mType;
    /* 0xF81 */ u8 field_0xf81[0xf84-0xf81];
    /* 0xF84 */ actionFunc field_0xf84;
    /* 0xF90 */ actionFunc field_0xf90;
    /* 0xF9C */ int field_0xf9c;
};

STATIC_ASSERT(sizeof(daNpc_midP_c) == 0xfa0);

class daNpc_midP_Param_c {
public:
    /* 80A73954 */ ~daNpc_midP_Param_c();

    struct Data {
        /* 0x00 */ f32 field_0x00;  // 210.0f
        /* 0x04 */ f32 mGravity;  // -3.0f
        /* 0x08 */ f32 field_0x08;  // 1.0f
        /* 0x0C */ f32 field_0x0c;  // 500.0f
        /* 0x10 */ f32 mWeight;  // 255.0f
        /* 0x14 */ f32 mCylH;  // 190.0f
        /* 0x18 */ f32 mWallH;  // 35.0f
        /* 0x1C */ f32 mWallR;  // 30.0f
        /* 0x20 */ f32 field_0x20;  // 0.0f
        /* 0x24 */ f32 field_0x24;  // 0.0f
        /* 0x28 */ f32 field_0x28;  // 10.0f
        /* 0x2C */ f32 field_0x2c;  // -10.0f
        /* 0x30 */ f32 field_0x30;  // 30.0f
        /* 0x34 */ f32 field_0x34;  // 10.0f
        /* 0x38 */ f32 field_0x38;  // 45.0f
        /* 0x3C */ f32 field_0x3c;  // -45.0f
        /* 0x40 */ f32 field_0x40;  // 0.6f
        /* 0x44 */ f32 mMorfFrames;  // 12.0f
        /* 0x48 */ s16 field_0x48;  // 3
        /* 0x4A */ s16 field_0x4a;  // 6
        /* 0x4C */ s16 field_0x4c;  // 5
        /* 0x4E */ s16 field_0x4e;  // 6
        /* 0x50 */ f32 field_0x50;  // 110.0f
        /* 0x54 */ f32 field_0x54;  // 0.0f
        /* 0x58 */ f32 field_0x58;  // 0.0f
        /* 0x5C */ f32 field_0x5c;  // 0.0f
        /* 0x60 */ s16 field_0x60;  // 60
        /* 0x62 */ s16 field_0x62;  // 8
        /* 0x64 */ int field_0x64;  // 0
        /* 0x68 */ int field_0x68;  // 0
        /* 0x6C */ f32 field_0x6c;  // 4.0f
        /* 0x70 */ f32 field_0x70;  // 0.0f
        /* 0x74 */ f32 field_0x74;  // 0.0f
        /* 0x78 */ f32 field_0x78;  // 0.0f
        /* 0x7C */ f32 field_0x7c;  // 0.0f
        /* 0x80 */ f32 field_0x80;  // 0.0f
        /* 0x84 */ f32 field_0x84;  // 0.0f
        /* 0x88 */ f32 field_0x88;  // 0.0f
    };

    static const Data m;
};


#endif /* D_A_NPC_MIDP_H */
