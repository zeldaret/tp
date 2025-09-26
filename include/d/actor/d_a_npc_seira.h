#ifndef D_A_NPC_SEIRA_H
#define D_A_NPC_SEIRA_H

#include "d/actor/d_a_npc.h"
#include "d/d_shop_system.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Seira_c
 * @brief Sera
 *
 * @details
 *
 */
class daNpc_Seira_c : public dShopSystem_c {
public:
    typedef int (daNpc_Seira_c::*cutFunc)(int);
    typedef int (daNpc_Seira_c::*actionFunc)(void*);

    /* 80ACB7CC */ ~daNpc_Seira_c();
    /* 80ACB918 */ int create();
    /* 80ACBBD4 */ int CreateHeap();
    /* 80ACC0FC */ int Delete();
    /* 80ACC130 */ int Execute();
    /* 80ACC21C */ int Draw();
    /* 80ACC2B0 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80ACC2D0 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80ACC328 */ u8 getType();
    /* 80ACC424 */ int getFlowNodeNo();
    /* 80ACC440 */ u8 checkBottle();
    /* 80ACC4A8 */ u8 getNpcType();
    /* 80ACC4C8 */ int isDelete();
    /* 80ACC4D0 */ void reset();
    /* 80ACC618 */ void afterJntAnm(int);
    /* 80ACC69C */ void setParam();
    /* 80ACC818 */ BOOL checkChangeEvt();
    /* 80ACC8C0 */ void setAfterTalkMotion();
    /* 80ACC980 */ void srchActors();
    /* 80ACCA48 */ BOOL evtTalk();
    /* 80ACCBEC */ BOOL evtCutProc();
    /* 80ACCCBC */ void action();
    /* 80ACCE58 */ void beforeMove();
    /* 80ACCED0 */ void setAttnPos();
    /* 80ACD1D0 */ void setCollision();
    /* 80ACD378 */ BOOL drawDbgInfo();
    /* 80ACD380 */ void drawOtherMdl();
    /* 80ACD458 */ bool setBottleAnm(int, int, f32, bool);
    /* 80ACD538 */ bool afterSetMotionAnm(int, int, f32, int);
    /* 80ACD570 */ void changeAnm(int*, int*);
    /* 80ACD600 */ void changeBck(int*, int*);
    /* 80ACD6AC */ void changeBtp(int*, int*);
    /* 80ACD744 */ void changeBtk(int*, int*);
    /* 80ACD770 */ int selectAction();
    /* 80ACD900 */ int chkAction(actionFunc);
    /* 80ACD92C */ int setAction(actionFunc);
    /* 80ACD9D4 */ int cutConversationAboutSaru(int);
    /* 80ACDC6C */ BOOL checkStageIsSeirasShop();
    /* 80ACDCE4 */ int getShopItemType();
    /* 80ACDD24 */ int wait(void*);
    /* 80ACDE74 */ int sit(void*);
    /* 80ACE098 */ int happy(void*);
    /* 80ACE220 */ int worry(void*);
    /* 80ACE4FC */ int sad(void*);
    /* 80ACE608 */ int lookaround(void*);
    /* 80ACE714 */ int lookaround_wait(void*);
    /* 80ACE828 */ int smile(void*);
    /* 80ACE934 */ int talk(void*);
    /* 80ACEAC4 */ int shop(void*);
    /* 80ACFB48 */ daNpc_Seira_c(
        daNpcT_faceMotionAnmData_c const* i_faceMotionAnmData,
        daNpcT_motionAnmData_c const* i_motionAnmData,
        daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_faceMotionSequenceData,
        int i_faceMotionStepNum,
        daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_motionSequenceData, int i_motionStepNum,
        daNpcT_evtData_c const* i_evtData, char** i_arcNames)
        : dShopSystem_c(i_faceMotionAnmData, i_motionAnmData, i_faceMotionSequenceData,
                   i_faceMotionStepNum, i_motionSequenceData, i_motionStepNum, i_evtData,
                   i_arcNames) {
        // "|%06d:%x|daNpc_Seira_c -> Construct\n"
        OS_REPORT("|%06d:%x|daNpc_Seira_c -> コンストラクト\n", g_Counter.mCounter0, this);
    }
    /* 80ACFC14 */ u16 getEyeballMaterialNo() { return 2; }
    /* 80ACFC1C */ s32 getHeadJointNo() { return 4; }
    /* 80ACFC24 */ s32 getNeckJointNo() { return 3; }
    /* 80ACFC2C */ s32 getBackboneJointNo() { return true; }
    /* 80ACFC34 */ BOOL checkChangeJoint(int val) { return val == 4; }
    /* 80ACFC44 */ BOOL checkRemoveJoint(int val) { return val == 8; }

    static char* mCutNameList[2];
    static cutFunc mCutList[2];

private:
    /* 0x0F7C */ mDoExt_McaMorfSO* mpSeiraMorf;
    /* 0x0F80 */ int field_0x0F80;
    /* 0x0F80 */ dCcD_Cyl mCyl1;
    /* 0x10C0 */ u8 mChkBottle;
    /* 0x10C1 */ u8 mType;
    /* 0x10C4 */ daNpcT_ActorMngr_c mActorMngr[3];
    /* 0x10DC */ actionFunc mNextAction;
    /* 0x10E8 */ actionFunc mActFunc_0;
    /* 0x10F4 */ int mEventTimer;
    /* 0x10F8 */ int mShopProcess;
    /* 0x10FC */ u8 field_0x10fc;
    /* 0x10FD */ u8 field_0x10fd;
    /* 0x10FE */ u8 mNpcType;
    /* 0x10FF */ u8 field_0x10FF;
    /* 0x1100 */ u8 mEvtBit;
    /* 0x1101 */ u8 field_0x1101[0x1104 - 0x1101];
    /* 0x1104 */ u8 field_0x1104;
};

STATIC_ASSERT(sizeof(daNpc_Seira_c) == 0x1108);

struct daNpc_Seira_HIOParam {
    /* 0x00 */ daNpcT_HIOParam common;
};

class daNpc_Seira_Param_c {
public:
    /* 80ACFC54 */ virtual ~daNpc_Seira_Param_c() {}

    static const daNpc_Seira_HIOParam m;
};


#endif /* D_A_NPC_SEIRA_H */
