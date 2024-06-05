#ifndef D_A_NPC_GND_H
#define D_A_NPC_GND_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Gnd_c
 * @brief Ganondorf
 *
 * @details
 *
 */
class daNpc_Gnd_c : public fopAc_ac_c {
public:
    /* 809BB60C */ ~daNpc_Gnd_c();
    /* 809BB730 */ void create();
    /* 809BB9D4 */ void CreateHeap();
    /* 809BBE2C */ void Delete();
    /* 809BBE60 */ void Execute();
    /* 809BBE80 */ void Draw();
    /* 809BBF44 */ void createHeapCallBack(fopAc_ac_c*);
    /* 809BBF64 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 809BBFBC */ void getType();
    /* 809BBFDC */ void getFlowNodeNo();
    /* 809BBFF8 */ void isDelete();
    /* 809BC028 */ void reset();
    /* 809BC168 */ void afterJntAnm(int);
    /* 809BC1F4 */ void ctrlBtk();
    /* 809BC328 */ void setParam();
    /* 809BC448 */ void setAfterTalkMotion();
    /* 809BC4A8 */ void srchActors();
    /* 809BC4AC */ void evtTalk();
    /* 809BC5AC */ void evtCutProc();
    /* 809BC674 */ void action();
    /* 809BC760 */ void beforeMove();
    /* 809BC7D8 */ void setAttnPos();
    /* 809BCA14 */ void setCollision();
    /* 809BCB48 */ bool drawDbgInfo();
    /* 809BCB50 */ void afterSetMotionAnm(int, int, f32, int);
    /* 809BCCE8 */ void selectAction();
    /* 809BCD30 */ void chkAction(int (daNpc_Gnd_c::*)(void*));
    /* 809BCD5C */ void setAction(int (daNpc_Gnd_c::*)(void*));
    /* 809BCE04 */ void wait(void*);
    /* 809BD050 */ void talk(void*);
    /* 809BE2D0 */ daNpc_Gnd_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                               daNpcT_evtData_c const*, char**);
    /* 809BE40C */ s32 getEyeballRMaterialNo();
    /* 809BE414 */ s32 getEyeballLMaterialNo();
    /* 809BE41C */ s32 getHeadJointNo();
    /* 809BE424 */ s32 getNeckJointNo();
    /* 809BE42C */ bool getBackboneJointNo();

    static void* mCutNameList;
    static u8 mCutList[12];

private:
    /* 0x568 */ u8 field_0x568[0xfa0 - 0x568];
};
STATIC_ASSERT(sizeof(daNpc_Gnd_c) == 0xfa0);

class daNpc_Gnd_Param_c {
public:
    /* 809BE434 */ ~daNpc_Gnd_Param_c();

    static u8 const m[140];
};


#endif /* D_A_NPC_GND_H */
