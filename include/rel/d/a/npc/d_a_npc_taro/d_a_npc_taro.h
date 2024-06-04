#ifndef D_A_NPC_TARO_H
#define D_A_NPC_TARO_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Taro_c
 * @brief Talo
 *
 * @details
 *
 */
class daNpc_Taro_c : public fopAc_ac_c {
public:
    /* 80565E8C */ ~daNpc_Taro_c();
    /* 8056604C */ void create();
    /* 80566340 */ void CreateHeap();
    /* 80566910 */ void Delete();
    /* 80566944 */ void Execute();
    /* 80566964 */ void Draw();
    /* 805669F8 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80566A18 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80566A70 */ void srchArrow(void*, void*);
    /* 80566B0C */ void srchNpc(void*, void*);
    /* 80566BD4 */ void getArrowP();
    /* 80566CCC */ void getType();
    /* 80566D7C */ void isDelete();
    /* 80566FA4 */ void reset();
    /* 805671F4 */ void afterJntAnm(int);
    /* 80567280 */ void setParam();
    /* 8056747C */ void checkChangeEvt();
    /* 8056757C */ void evtEndProc();
    /* 805675B8 */ void setAfterTalkMotion();
    /* 8056767C */ void srchActors();
    /* 805679F0 */ void evtTalk();
    /* 80567A90 */ void evtCutProc();
    /* 80567C90 */ void action();
    /* 80567EB4 */ void beforeMove();
    /* 80567F78 */ void setAttnPos();
    /* 805682E8 */ void setCollision();
    /* 80568590 */ bool drawDbgInfo();
    /* 80568598 */ void drawOtherMdl();
    /* 805686A0 */ void getFaceMotionAnm(daNpcT_faceMotionAnmData_c);
    /* 80568738 */ void selectAction();
    /* 80568828 */ void chkAction(int (daNpc_Taro_c::*)(void*));
    /* 80568854 */ void setAction(int (daNpc_Taro_c::*)(void*));
    /* 805688FC */ void setSwingVoice();
    /* 80568A2C */ void cutConversationAboutPachinko(int);
    /* 80568C58 */ void cutConversationAboutWoodSwd(int);
    /* 80568E00 */ void cutSwdTutorial(int);
    /* 80569880 */ void cutHail(int);
    /* 80569AFC */ void cutFindMonkey(int);
    /* 8056A120 */ void cutHelpMe(int);
    /* 8056A460 */ void cutAppearanceMoi(int);
    /* 8056B000 */ void cutGiveMeWoodSwd(int);
    /* 8056B68C */ void cutGetWoodSwd(int);
    /* 8056C14C */ void cutConversationWithMaro(int);
    /* 8056C5B4 */ void cutCacaricoConversation(int);
    /* 8056C8CC */ void cutArrowTutorial(int);
    /* 8056D0B8 */ void cutCaution(int);
    /* 8056D310 */ void cutTagPush1(int);
    /* 8056D5C0 */ void cutNotGonnaLet(int);
    /* 8056DFAC */ void cutTagPush4(int);
    /* 8056E270 */ void wait(void*);
    /* 8056F2A8 */ void swdTutorial(void*);
    /* 8056F418 */ void talk_withMaro(void*);
    /* 8056F7E8 */ void practice(void*);
    /* 8056FC20 */ void nurse(void*);
    /* 8056FDCC */ void talk(void*);
    /* 8057148C */ daNpc_Taro_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                daNpcT_evtData_c const*, char**);
    /* 805715AC */ s32 getEyeballMaterialNo();
    /* 805715B4 */ s32 getHeadJointNo();
    /* 805715BC */ s32 getNeckJointNo();
    /* 805715C4 */ bool getBackboneJointNo();
    /* 805715CC */ void checkChangeJoint(int);
    /* 805715DC */ void checkRemoveJoint(int);
    /* 805715EC */ s32 getFootLJointNo();
    /* 805715F4 */ s32 getFootRJointNo();

    static void* mCutNameList[17];
    static u8 mCutList[204];

private:
    /* 0x568 */ u8 field_0x568[0x11ac - 0x568];
};
STATIC_ASSERT(sizeof(daNpc_Taro_c) == 0x11ac);

class daNpc_Taro_Param_c {
public:
    /* 805715FC */ ~daNpc_Taro_Param_c();

    static u8 const m[144];
};


#endif /* D_A_NPC_TARO_H */
