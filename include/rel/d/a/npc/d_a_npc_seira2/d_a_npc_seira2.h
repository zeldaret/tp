#ifndef D_A_NPC_SEIRA2_H
#define D_A_NPC_SEIRA2_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Seira2_c
 * @brief Sera (Shopkeeper)
 *
 * @details
 *
 */
class daNpc_Seira2_c : public fopAc_ac_c {
public:
    /* 80AD0C0C */ ~daNpc_Seira2_c();
    /* 80AD0D58 */ void create();
    /* 80AD0FF8 */ void CreateHeap();
    /* 80AD1508 */ void Delete();
    /* 80AD153C */ void Execute();
    /* 80AD1610 */ void Draw();
    /* 80AD16A4 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80AD16C4 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80AD171C */ void getType();
    /* 80AD179C */ void getFlowNodeNo();
    /* 80AD17B8 */ void getMaxNumItem();
    /* 80AD17C4 */ void checkBottle();
    /* 80AD182C */ bool isDelete();
    /* 80AD1834 */ void reset();
    /* 80AD1968 */ void afterJntAnm(int);
    /* 80AD19EC */ void setParam();
    /* 80AD1B38 */ void setAfterTalkMotion();
    /* 80AD1BF8 */ void srchActors();
    /* 80AD1C60 */ void evtTalk();
    /* 80AD1E04 */ void evtCutProc();
    /* 80AD1ED4 */ void action();
    /* 80AD2030 */ void beforeMove();
    /* 80AD20A8 */ void setAttnPos();
    /* 80AD23A8 */ void setCollision();
    /* 80AD2550 */ bool drawDbgInfo();
    /* 80AD2558 */ void drawOtherMdl();
    /* 80AD2630 */ void setBottleAnm(int, int, f32, bool);
    /* 80AD2710 */ void afterSetMotionAnm(int, int, f32, int);
    /* 80AD2748 */ void selectAction();
    /* 80AD2870 */ void chkAction(int (daNpc_Seira2_c::*)(void*));
    /* 80AD289C */ void setAction(int (daNpc_Seira2_c::*)(void*));
    /* 80AD2944 */ void checkStageIsSeira2sShop();
    /* 80AD29BC */ void wait(void*);
    /* 80AD2B68 */ void sit(void*);
    /* 80AD2D8C */ void happy(void*);
    /* 80AD2F14 */ void worry(void*);
    /* 80AD31F0 */ void sad(void*);
    /* 80AD3508 */ void lookaround(void*);
    /* 80AD3614 */ void smile(void*);
    /* 80AD3720 */ void talk(void*);
    /* 80AD3890 */ void shop(void*);
    /* 80AD47B8 */ daNpc_Seira2_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                                  daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                  daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                  daNpcT_evtData_c const*, char**);
    /* 80AD4884 */ s32 getEyeballMaterialNo();
    /* 80AD488C */ s32 getHeadJointNo();
    /* 80AD4894 */ s32 getNeckJointNo();
    /* 80AD489C */ bool getBackboneJointNo();
    /* 80AD48A4 */ void checkChangeJoint(int);
    /* 80AD48B4 */ void checkRemoveJoint(int);

    static void* mCutNameList;
    static u8 mCutList[12];

private:
    /* 0x568 */ u8 field_0x568[0x10f4 - 0x568];
};

STATIC_ASSERT(sizeof(daNpc_Seira2_c) == 0x10f4);

class daNpc_Seira2_Param_c {
public:
    /* 80AD48C4 */ ~daNpc_Seira2_Param_c();

    static u8 const m[140];
};


#endif /* D_A_NPC_SEIRA2_H */
