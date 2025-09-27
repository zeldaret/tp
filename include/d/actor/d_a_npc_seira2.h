#ifndef D_A_NPC_SEIRA2_H
#define D_A_NPC_SEIRA2_H

#include "d/actor/d_a_npc.h"
#include "d/d_shop_system.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Seira2_c
 * @brief Sera (Shopkeeper)
 *
 * @details
 *
 */
class daNpc_Seira2_c : public dShopSystem_c {
public:
    typedef int (daNpc_Seira2_c::*cutFunc)(int);
    typedef int (daNpc_Seira2_c::*actionFunc)(void*);

    /* 80AD0C0C */ ~daNpc_Seira2_c();
    /* 80AD0D58 */ int create();
    /* 80AD0FF8 */ int CreateHeap();
    /* 80AD1508 */ int Delete();
    /* 80AD153C */ int Execute();
    /* 80AD1610 */ int Draw();
    /* 80AD16A4 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80AD16C4 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80AD171C */ u8 getType();
    /* 80AD179C */ int getFlowNodeNo();
    /* 80AD17B8 */ u8 getMaxNumItem();
    /* 80AD17C4 */ u8 checkBottle();
    /* 80AD182C */ int isDelete();
    /* 80AD1834 */ void reset();
    /* 80AD1968 */ void afterJntAnm(int);
    /* 80AD19EC */ void setParam();
    /* 80AD1B38 */ void setAfterTalkMotion();
    /* 80AD1BF8 */ void srchActors();
    /* 80AD1C60 */ BOOL evtTalk();
    /* 80AD1E04 */ BOOL evtCutProc();
    /* 80AD1ED4 */ void action();
    /* 80AD2030 */ void beforeMove();
    /* 80AD20A8 */ void setAttnPos();
    /* 80AD23A8 */ void setCollision();
    /* 80AD2550 */ BOOL drawDbgInfo();
    /* 80AD2558 */ void drawOtherMdl();
    /* 80AD2630 */ bool setBottleAnm(int, int, f32, bool);
    /* 80AD2710 */ bool afterSetMotionAnm(int, int, f32, int);
    /* 80AD2748 */ int selectAction();
    /* 80AD2870 */ int chkAction(actionFunc);
    /* 80AD289C */ int setAction(actionFunc);
    /* 80AD2944 */ BOOL checkStageIsSeira2sShop();
    /* 80AD29BC */ int wait(void*);
    /* 80AD2B68 */ int sit(void*);
    /* 80AD2D8C */ int happy(void*);
    /* 80AD2F14 */ int worry(void*);
    /* 80AD31F0 */ int sad(void*);
    /* 80AD3508 */ int lookaround(void*);
    /* 80AD3614 */ int smile(void*);
    /* 80AD3720 */ int talk(void*);
    /* 80AD3890 */ int shop(void*);
    /* 80AD47B8 */ daNpc_Seira2_c(
        daNpcT_faceMotionAnmData_c const* i_faceMotionAnmData,
        daNpcT_motionAnmData_c const* i_motionAnmData,
        daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_faceMotionSequenceData,
        int i_faceMotionStepNum,
        daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_motionSequenceData, int i_motionStepNum,
        daNpcT_evtData_c const* i_evtData, char** i_arcNames)
        : dShopSystem_c(i_faceMotionAnmData, i_motionAnmData, i_faceMotionSequenceData,
                   i_faceMotionStepNum, i_motionSequenceData, i_motionStepNum, i_evtData,
                   i_arcNames) {
        // "|%06d:%x|daNpc_Seira2_c -> Construct\n"
        OS_REPORT("|%06d:%x|daNpc_Seira2_c -> コンストラクト\n", g_Counter.mCounter0, this);
    }
    /* 80AD4884 */ u16 getEyeballMaterialNo() { return 2; }
    /* 80AD488C */ s32 getHeadJointNo() { return 4; }
    /* 80AD4894 */ s32 getNeckJointNo() { return 3; }
    /* 80AD489C */ s32 getBackboneJointNo() { return true; }
    /* 80AD48A4 */ BOOL checkChangeJoint(int val) { return val == 4; }
    /* 80AD48B4 */ BOOL checkRemoveJoint(int val) { return val == 8; }

    static char* mCutNameList[1];
    static cutFunc mCutList[1];

private:
    /* 0x0F7C */ mDoExt_McaMorfSO* mpSeiraMorf;
    /* 0x0F80 */ int field_0x0F80;
    /* 0x0F80 */ dCcD_Cyl mCyl1;
    /* 0x10C0 */ u8 mChkBottle;
    /* 0x10C1 */ u8 mType;
    /* 0x10C4 */ daNpcT_ActorMngr_c mActorMngr[1];
    /* 0x10CC */ actionFunc mNextAction;
    /* 0x10D8 */ actionFunc mActFunc_0;
    /* 0x10D4 */ int mEventTimer;
    /* 0x10E8 */ int mShopProcess;
    /* 0x10EC */ u8 field_0x10EC;
    /* 0x10ED */ u8 field_0x10ED;
    /* 0x10EE */ u8 mEvtBit;
    /* 0x10EF */ u8 field_0x10EF[0x10F0 - 0x10EF];
    /* 0x10F0 */ u8 field_0x10F0;
};

STATIC_ASSERT(sizeof(daNpc_Seira2_c) == 0x10F4);

struct daNpc_Seira2_HIOParam {
    /* 0x00 */ daNpcT_HIOParam common;
};

class daNpc_Seira2_Param_c {
public:
    /* 80AD48C4 */ virtual ~daNpc_Seira2_Param_c() {}

    static const daNpc_Seira2_HIOParam m;
};


#endif /* D_A_NPC_SEIRA2_H */
