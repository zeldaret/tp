#ifndef D_A_NPC_YKM_H
#define D_A_NPC_YKM_H

#include "d/a/d_a_npc.h"
#include "rel/d/a/npc/d_a_npc_ykw/d_a_npc_ykw.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_ykM_c
 * @brief Yeto
 *
 * @details
 *
 */
class daNpc_ykM_c : public fopAc_ac_c {
public:
    /* 80B534EC */ ~daNpc_ykM_c();
    /* 80B53698 */ void create();
    /* 80B53990 */ void CreateHeap();
    /* 80B540BC */ void Delete();
    /* 80B540F0 */ void Execute();
    /* 80B54110 */ void Draw();
    /* 80B541F8 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80B54218 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80B54270 */ void srchGadget(void*, void*);
    /* 80B5430C */ void getTomatoPureeP();
    /* 80B543DC */ void getCheeseP();
    /* 80B544B0 */ void srchYkm(void*, void*);
    /* 80B5454C */ void getOtherYkmP(int);
    /* 80B54628 */ void srchYkw(void*, void*);
    /* 80B546C4 */ void getOtherYkwP(int);
    /* 80B547A0 */ void getType();
    /* 80B54808 */ void isDelete();
    /* 80B548A8 */ void reset();
    /* 80B54B44 */ void afterJntAnm(int);
    /* 80B54BD0 */ void setParam();
    /* 80B54E5C */ void checkChangeEvt();
    /* 80B55004 */ void setAfterTalkMotion();
    /* 80B550A4 */ void srchActors();
    /* 80B55254 */ void evtTalk();
    /* 80B552F4 */ void evtCutProc();
    /* 80B553BC */ void action();
    /* 80B55658 */ void beforeMove();
    /* 80B5571C */ void afterMoved();
    /* 80B55A64 */ void setAttnPos();
    /* 80B560B4 */ void setCollision();
    /* 80B5641C */ bool drawDbgInfo();
    /* 80B56424 */ void drawOtherMdl();
    /* 80B56624 */ void setFishAnm(int, int, f32);
    /* 80B566E8 */ void setLeafAnm(int, f32);
    /* 80B567B4 */ void afterSetMotionAnm(int, int, f32, int);
    /* 80B5680C */ void selectAction();
    /* 80B56954 */ void chkAction(int (daNpc_ykM_c::*)(void*));
    /* 80B56980 */ void setAction(int (daNpc_ykM_c::*)(void*));
    /* 80B56A28 */ void chkContinueAttnPlayer();
    /* 80B56AB4 */ void chkTouchPlayer();
    /* 80B56B84 */ void cutSlideDown(int);
    /* 80B572C8 */ void cutMeetingAgain(int);
    /* 80B57638 */ void cutGetTomatoPuree(int);
    /* 80B5806C */ void cutGetTaste(int);
    /* 80B58A38 */ void cutLv5DungeonClear(int);
    /* 80B59500 */ void cutFindWolf(int);
    /* 80B59748 */ void cutStartSnowboardRace(int);
    /* 80B59B90 */ void cutEndSnowboardRace(int);
    /* 80B5A0B8 */ void cutHug(int);
    /* 80B5A128 */ void setDialogueMotion();
    /* 80B5A224 */ void dialogue();
    /* 80B5A3FC */ void wait(void*);
    /* 80B5ABA8 */ void cook(void*);
    /* 80B5B260 */ void race(void*);
    /* 80B5BE08 */ void talk(void*);
    /* 80B5D588 */ daNpc_ykM_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                               daNpcT_evtData_c const*, char**);
    /* 80B5D688 */ s32 getEyeballMaterialNo();
    /* 80B5D690 */ s32 getHeadJointNo();
    /* 80B5D698 */ s32 getNeckJointNo();
    /* 80B5D6A0 */ bool getBackboneJointNo();
    /* 80B5D6A8 */ void checkChangeJoint(int);
    /* 80B5D6B8 */ void checkRemoveJoint(int);

    static void* mCutNameList[10];
    static u8 mCutList[120];
private:
    /* 0x568 */ u8 field_0x568[0x158c - 0x568];
};

STATIC_ASSERT(sizeof(daNpc_ykM_c) == 0x158c);

class daNpc_ykM_Param_c {
public:
    /* 80B5D6C8 */ ~daNpc_ykM_Param_c();

    static u8 const m[200];
};

#endif /* D_A_NPC_YKM_H */
