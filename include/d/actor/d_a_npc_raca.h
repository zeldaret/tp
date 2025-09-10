#ifndef D_A_NPC_RACA_H
#define D_A_NPC_RACA_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Raca_c
 * @brief Falbi
 *
 * @details
 *
*/

struct daNpc_Raca_HIOParam {
    /* 0x0 */ daNpcT_HIOParam common;
};

class daNpc_Raca_HIO_c : public mDoHIO_entry_c {
    /* 0x8 */ daNpc_Raca_HIOParam param;
};

class daNpc_Raca_Param_c {
public:
    /* 80AB8DFC */ ~daNpc_Raca_Param_c();

    static daNpc_Raca_HIOParam const m;
};

class daNpc_Raca_c : public daNpcT_c {
public:
    typedef int (daNpc_Raca_c::*cutFunc)(int);

    /* 80AB5CAC */ ~daNpc_Raca_c();
    /* 80AB5DFC */ void create();
    /* 80AB60B8 */ void CreateHeap();
    /* 80AB6514 */ void Delete();
    /* 80AB6548 */ void Execute();
    /* 80AB6568 */ void Draw();
    /* 80AB65FC */ void createHeapCallBack(fopAc_ac_c*);
    /* 80AB661C */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80AB6674 */ void srchNi(void*, void*);
    /* 80AB6700 */ void getNiP();
    /* 80AB67CC */ void getType();
    /* 80AB67EC */ void isDelete();
    /* 80AB681C */ void reset();
    /* 80AB6984 */ void afterJntAnm(int);
    /* 80AB6A10 */ void setParam();
    /* 80AB6B0C */ void setAfterTalkMotion();
    /* 80AB6BB0 */ void srchActors();
    /* 80AB6C14 */ BOOL evtTalk();
    /* 80AB6D14 */ BOOL evtCutProc();
    /* 80AB6DDC */ void action();
    /* 80AB6EC8 */ void beforeMove();
    /* 80AB6F40 */ void setAttnPos();
    /* 80AB7180 */ void setCollision();
    /* 80AB72B4 */ int drawDbgInfo();
    /* 80AB72BC */ void selectAction();
    /* 80AB73B0 */ void chkAction(int (daNpc_Raca_c::*)(void*));
    /* 80AB73DC */ void setAction(int (daNpc_Raca_c::*)(void*));
    /* 80AB7484 */ void wait(void*);
    /* 80AB7710 */ void walk(void*);
    /* 80AB7918 */ void talk(void*);
    /* 80AB8CCC */ daNpc_Raca_c(
            daNpcT_faceMotionAnmData_c const* i_faceMotionAnmData,
            daNpcT_motionAnmData_c const* i_motionAnmData,
            daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_faceMotionSequenceData,
            int i_faceMotionStepNum,
            daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_motionSequenceData,
            int i_motionStepNum,
            daNpcT_evtData_c const* i_evtData,
            char** i_arcNames)
        : daNpcT_c(i_faceMotionAnmData, i_motionAnmData, i_faceMotionSequenceData,
        i_faceMotionStepNum, i_motionSequenceData, i_motionStepNum, i_evtData,
        i_arcNames) {}
    /* 80AB8DAC */ u16 getEyeballMaterialNo();
    /* 80AB8DB4 */ s32 getHeadJointNo();
    /* 80AB8DBC */ s32 getNeckJointNo();
    /* 80AB8DC4 */ s32 getBackboneJointNo();
    /* 80AB8DCC */ BOOL checkChangeJoint(int);
    /* 80AB8DDC */ BOOL checkRemoveJoint(int);
    /* 80AB8DEC */ s32 getFootLJointNo();
    /* 80AB8DF4 */ s32 getFootRJointNo();

    static void* mCutNameList;
    static u8 mCutList[12];

private:
    /* 0xE40 */ daNpc_Raca_HIO_c* mHIO;
    /* 0xE44 */ dCcD_Cyl mCyl;
    /* 0xF80 */ u8 mType;
    /* 0xF81 */ u8 field_0xf81[0xf84 - 0xf81];
    /* 0xF84 */ daNpcT_ActorMngr_c mActorMngr[1];
    /* 0xF8C */ u8 field_0xf8c[0xFa4 - 0xf8c];
    /* 0xFA4 */ daNpcT_Path_c mPath;
    /* 0xFCC */ u8 field_0xfcc[0xfd4 - 0xfcc];
};

STATIC_ASSERT(sizeof(daNpc_Raca_c) == 0xfd4);

#endif /* D_A_NPC_RACA_H */
