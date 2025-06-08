#ifndef D_A_NPC_GND_H
#define D_A_NPC_GND_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Gnd_c
 * @brief Ganondorf
 *
 * @details
 *
 */
class daNpc_Gnd_c : public daNpcT_c {
public:
    typedef int (daNpc_Gnd_c::*cutFunc)(int);

    enum Type {
        TYPE_0,
        TYPE_1,
    };

    /* 809BB60C */ ~daNpc_Gnd_c();
    /* 809BB730 */ int create();
    /* 809BB9D4 */ int CreateHeap();
    /* 809BBE2C */ int Delete();
    /* 809BBE60 */ int Execute();
    /* 809BBE80 */ int Draw();
    /* 809BBF44 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 809BBF64 */ int ctrlJointCallBack(J3DJoint*, int);
    /* 809BBFBC */ u8 getType();
    /* 809BBFDC */ int getFlowNodeNo();
    /* 809BBFF8 */ int isDelete();
    /* 809BC028 */ void reset();
    /* 809BC168 */ void afterJntAnm(int);
    /* 809BC1F4 */ BOOL ctrlBtk();
    /* 809BC328 */ void setParam();
    /* 809BC448 */ void setAfterTalkMotion();
    /* 809BC4A8 */ void srchActors();
    /* 809BC4AC */ BOOL evtTalk();
    /* 809BC5AC */ BOOL evtCutProc();
    /* 809BC674 */ void action();
    /* 809BC760 */ void beforeMove();
    /* 809BC7D8 */ void setAttnPos();
    /* 809BCA14 */ void setCollision();
    /* 809BCB48 */ int drawDbgInfo();
    /* 809BCB50 */ bool afterSetMotionAnm(int, int, f32, int);
    /* 809BCCE8 */ void selectAction();
    /* 809BCD30 */ void chkAction(int (daNpc_Gnd_c::*)(void*));
    /* 809BCD5C */ void setAction(int (daNpc_Gnd_c::*)(void*));
    /* 809BCE04 */ void wait(void*);
    /* 809BD050 */ void talk(void*);
    /* 809BE2D0 */ daNpc_Gnd_c(daNpcT_faceMotionAnmData_c const* param_1, daNpcT_motionAnmData_c const* param_2,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_3, int param_4,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_5, int param_6,
                               daNpcT_evtData_c const* param_7, char** param_8) :
                               daNpcT_c(param_1, param_2, param_3, param_4, param_5, param_6, param_7, param_8)
                                {}
    /* 809BE40C */ s32 getEyeballRMaterialNo();
    /* 809BE414 */ s32 getEyeballLMaterialNo();
    /* 809BE41C */ s32 getHeadJointNo();
    /* 809BE424 */ s32 getNeckJointNo();
    /* 809BE42C */ s32 getBackboneJointNo();

    static char* mCutNameList;
    static cutFunc mCutList[1];

private:
    /* 0xE40 */ u8 field_0xe40[0xf80 - 0xe40];
    /* 0xF80 */ u8 mType;
    /* 0xF81 */ u8 field_0xf81[0xfa0 - 0xf81];
};

STATIC_ASSERT(sizeof(daNpc_Gnd_c) == 0xfa0);

class daNpc_Gnd_Param_c {
public:
    /* 809BE434 */ ~daNpc_Gnd_Param_c();

    struct Data {
        /* 0x00 */ f32 field_0x00;
        /* 0x04 */ f32 field_0x04;
        /* 0x08 */ f32 field_0x08;
        /* 0x0C */ f32 field_0x0c;
        /* 0x10 */ f32 field_0x10;
        /* 0x14 */ f32 field_0x14;
        /* 0x18 */ f32 field_0x18;
        /* 0x1C */ f32 field_0x1c;
        /* 0x20 */ f32 field_0x20;
        /* 0x24 */ f32 field_0x24;
        /* 0x28 */ f32 field_0x28;
        /* 0x2C */ f32 field_0x2c;
        /* 0x30 */ f32 field_0x30;
        /* 0x34 */ f32 field_0x34;
        /* 0x38 */ f32 field_0x38;
        /* 0x3C */ f32 field_0x3c;
        /* 0x40 */ f32 field_0x40;
        /* 0x44 */ f32 field_0x44;
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


#endif /* D_A_NPC_GND_H */
