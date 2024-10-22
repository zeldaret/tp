#ifndef D_A_NPC_MARO_H
#define D_A_NPC_MARO_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Maro_c
 * @brief Malo
 *
 * @details
 *
 */
class daNpc_Maro_c : public fopAc_ac_c {
public:
    /* 8055B58C */ ~daNpc_Maro_c();
    /* 8055B6E0 */ void create();
    /* 8055B9A8 */ void CreateHeap();
    /* 8055BDE8 */ void Delete();
    /* 8055BE1C */ void Execute();
    /* 8055BF0C */ void Draw();
    /* 8055BFA0 */ void createHeapCallBack(fopAc_ac_c*);
    /* 8055BFC0 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 8055C018 */ void srchArrow(void*, void*);
    /* 8055C0B4 */ void getArrowP();
    /* 8055C1AC */ void srchItaMato(void*, void*);
    /* 8055C248 */ void getItaMatoP(int);
    /* 8055C330 */ void getType();
    /* 8055C3E0 */ void isDelete();
    /* 8055C614 */ void reset();
    /* 8055C834 */ void afterJntAnm(int);
    /* 8055C8B0 */ void setParam();
    /* 8055CB14 */ void checkChangeEvt();
    /* 8055CC9C */ void evtEndProc();
    /* 8055CCD8 */ void setAfterTalkMotion();
    /* 8055CD74 */ void srchActors();
    /* 8055D0D8 */ void evtTalk();
    /* 8055D1F4 */ void evtCutProc();
    /* 8055D368 */ void action();
    /* 8055D5C4 */ void beforeMove();
    /* 8055D688 */ void setAttnPos();
    /* 8055D918 */ void setCollision();
    /* 8055DA70 */ bool drawDbgInfo();
    /* 8055DA78 */ void drawOtherMdl();
    /* 8055DAD8 */ void getFaceMotionAnm(daNpcT_faceMotionAnmData_c);
    /* 8055DB64 */ void getMotionAnm(daNpcT_motionAnmData_c);
    /* 8055DBF0 */ void selectAction();
    /* 8055DD08 */ void chkAction(int (daNpc_Maro_c::*)(void*));
    /* 8055DD34 */ void setAction(int (daNpc_Maro_c::*)(void*));
    /* 8055DDDC */ void cutConversationAboutPachinko(int);
    /* 8055DF7C */ void cutConversationAboutWoodSwd(int);
    /* 8055E124 */ void cutSwdTutorial(int);
    /* 8055E414 */ void cutHail(int);
    /* 8055E578 */ void cutFindMonkey(int);
    /* 8055E968 */ void cutGiveMeWoodSwd(int);
    /* 8055ECF4 */ void cutGetWoodSwd(int);
    /* 8055F508 */ void cutConversationWithMaro(int);
    /* 8055F634 */ void cutCacaricoConversation(int);
    /* 8055F82C */ void cutSurprise(int);
    /* 8055FAF0 */ void cutArrowTutorial(int);
    /* 805611E0 */ void cutBokinTalk(int);
    /* 80561328 */ void cutMarosWhisper(int);
    /* 80561614 */ void cutTagPush1(int);
    /* 8056178C */ void cutNotGonnaLet(int);
    /* 80561E70 */ void cutTalkToKakashi(int);
    /* 80562174 */ void wait(void*);
    /* 805629A4 */ void swdTutorial(void*);
    /* 80562B14 */ void talk_withTaro(void*);
    /* 80562CA4 */ void choccai(void*);
    /* 80562EC8 */ void tend(void*);
    /* 8056319C */ void arrowTutorial(void*);
    /* 8056342C */ void talk(void*);
    /* 80563660 */ void shop(void*);
    /* 805648A4 */ daNpc_Maro_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                daNpcT_evtData_c const*, char**);
    /* 80564970 */ bool getEyeballMaterialNo();
    /* 80564978 */ s32 getHeadJointNo();
    /* 80564980 */ s32 getNeckJointNo();
    /* 80564988 */ bool getBackboneJointNo();
    /* 80564990 */ void checkChangeJoint(int);
    /* 805649A0 */ void checkRemoveJoint(int);

    static void* mCutNameList[17];
    static u8 mCutList[204];

private:
    /* 0x568 */ u8 field_0x568[0x1140 - 0x568];
};

STATIC_ASSERT(sizeof(daNpc_Maro_c) == 0x1140);

class daNpc_Maro_Param_c {
public:
    /* 805649B0 */ ~daNpc_Maro_Param_c();

    static u8 const m[144];
};


#endif /* D_A_NPC_MARO_H */
