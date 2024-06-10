#ifndef D_A_NPC_RACA_H
#define D_A_NPC_RACA_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Raca_c
 * @brief Falbi
 *
 * @details
 *
 */
class daNpc_Raca_c : public fopAc_ac_c {
public:
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
    /* 80AB6C14 */ void evtTalk();
    /* 80AB6D14 */ void evtCutProc();
    /* 80AB6DDC */ void action();
    /* 80AB6EC8 */ void beforeMove();
    /* 80AB6F40 */ void setAttnPos();
    /* 80AB7180 */ void setCollision();
    /* 80AB72B4 */ bool drawDbgInfo();
    /* 80AB72BC */ void selectAction();
    /* 80AB73B0 */ void chkAction(int (daNpc_Raca_c::*)(void*));
    /* 80AB73DC */ void setAction(int (daNpc_Raca_c::*)(void*));
    /* 80AB7484 */ void wait(void*);
    /* 80AB7710 */ void walk(void*);
    /* 80AB7918 */ void talk(void*);
    /* 80AB8CCC */ daNpc_Raca_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                daNpcT_evtData_c const*, char**);
    /* 80AB8DAC */ s32 getEyeballMaterialNo();
    /* 80AB8DB4 */ s32 getHeadJointNo();
    /* 80AB8DBC */ s32 getNeckJointNo();
    /* 80AB8DC4 */ bool getBackboneJointNo();
    /* 80AB8DCC */ void checkChangeJoint(int);
    /* 80AB8DDC */ void checkRemoveJoint(int);
    /* 80AB8DEC */ s32 getFootLJointNo();
    /* 80AB8DF4 */ s32 getFootRJointNo();

    static void* mCutNameList;
    static u8 mCutList[12];

private:
    /* 0x568 */ u8 field_0x568[0xfd4 - 0x568];
};

STATIC_ASSERT(sizeof(daNpc_Raca_c) == 0xfd4);

class daNpc_Raca_Param_c {
public:
    /* 80AB8DFC */ ~daNpc_Raca_Param_c();

    static u8 const m[140];
};


#endif /* D_A_NPC_RACA_H */
