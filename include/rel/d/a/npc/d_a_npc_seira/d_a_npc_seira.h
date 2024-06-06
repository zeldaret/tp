#ifndef D_A_NPC_SEIRA_H
#define D_A_NPC_SEIRA_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Seira_c
 * @brief Sera
 *
 * @details
 *
 */
class daNpc_Seira_c : public fopAc_ac_c {
public:
    /* 80ACB7CC */ ~daNpc_Seira_c();
    /* 80ACB918 */ void create();
    /* 80ACBBD4 */ void CreateHeap();
    /* 80ACC0FC */ void Delete();
    /* 80ACC130 */ void Execute();
    /* 80ACC21C */ void Draw();
    /* 80ACC2B0 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80ACC2D0 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80ACC328 */ void getType();
    /* 80ACC424 */ void getFlowNodeNo();
    /* 80ACC440 */ void checkBottle();
    /* 80ACC4A8 */ void getNpcType();
    /* 80ACC4C8 */ bool isDelete();
    /* 80ACC4D0 */ void reset();
    /* 80ACC618 */ void afterJntAnm(int);
    /* 80ACC69C */ void setParam();
    /* 80ACC818 */ void checkChangeEvt();
    /* 80ACC8C0 */ void setAfterTalkMotion();
    /* 80ACC980 */ void srchActors();
    /* 80ACCA48 */ void evtTalk();
    /* 80ACCBEC */ void evtCutProc();
    /* 80ACCCBC */ void action();
    /* 80ACCE58 */ void beforeMove();
    /* 80ACCED0 */ void setAttnPos();
    /* 80ACD1D0 */ void setCollision();
    /* 80ACD378 */ bool drawDbgInfo();
    /* 80ACD380 */ void drawOtherMdl();
    /* 80ACD458 */ void setBottleAnm(int, int, f32, bool);
    /* 80ACD538 */ void afterSetMotionAnm(int, int, f32, int);
    /* 80ACD570 */ void changeAnm(int*, int*);
    /* 80ACD600 */ void changeBck(int*, int*);
    /* 80ACD6AC */ void changeBtp(int*, int*);
    /* 80ACD744 */ void changeBtk(int*, int*);
    /* 80ACD770 */ void selectAction();
    /* 80ACD900 */ void chkAction(int (daNpc_Seira_c::*)(void*));
    /* 80ACD92C */ void setAction(int (daNpc_Seira_c::*)(void*));
    /* 80ACD9D4 */ void cutConversationAboutSaru(int);
    /* 80ACDC6C */ void checkStageIsSeirasShop();
    /* 80ACDCE4 */ void getShopItemType();
    /* 80ACDD24 */ void wait(void*);
    /* 80ACDE74 */ void sit(void*);
    /* 80ACE098 */ void happy(void*);
    /* 80ACE220 */ void worry(void*);
    /* 80ACE4FC */ void sad(void*);
    /* 80ACE608 */ void lookaround(void*);
    /* 80ACE714 */ void lookaround_wait(void*);
    /* 80ACE828 */ void smile(void*);
    /* 80ACE934 */ void talk(void*);
    /* 80ACEAC4 */ void shop(void*);
    /* 80ACFB48 */ daNpc_Seira_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                 daNpcT_evtData_c const*, char**);
    /* 80ACFC14 */ s32 getEyeballMaterialNo();
    /* 80ACFC1C */ s32 getHeadJointNo();
    /* 80ACFC24 */ s32 getNeckJointNo();
    /* 80ACFC2C */ bool getBackboneJointNo();
    /* 80ACFC34 */ void checkChangeJoint(int);
    /* 80ACFC44 */ void checkRemoveJoint(int);

    static void* mCutNameList[2];
    static u8 mCutList[24];

private:
    /* 0x568 */ u8 field_0x568[0x1108 - 0x568];
};

STATIC_ASSERT(sizeof(daNpc_Seira_c) == 0x1108);

class daNpc_Seira_Param_c {
public:
    /* 80ACFC54 */ ~daNpc_Seira_Param_c();

    static u8 const m[140];
};


#endif /* D_A_NPC_SEIRA_H */
