#ifndef D_A_NPC_KKRI_H
#define D_A_NPC_KKRI_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Kkri_c
 * @brief Coro
 *
 * @details
 *
 */
class daNpc_Kkri_c : public fopAc_ac_c {
public:
    /* 8054F3AC */ ~daNpc_Kkri_c();
    /* 8054F4F8 */ void create();
    /* 8054F7D0 */ void CreateHeap();
    /* 8054FC10 */ void Delete();
    /* 8054FC44 */ void Execute();
    /* 8054FC64 */ void Draw();
    /* 8054FD00 */ void createHeapCallBack(fopAc_ac_c*);
    /* 8054FD20 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 8054FD78 */ void srchYm(void*, void*);
    /* 8054FE20 */ void getType();
    /* 8054FE58 */ void isDelete();
    /* 8054FE8C */ void reset();
    /* 8054FFEC */ void checkChangeEvt();
    /* 805500A0 */ void setParam();
    /* 80550270 */ void setAfterTalkMotion();
    /* 8055032C */ void srchActors();
    /* 80550398 */ void evtTalk();
    /* 80550438 */ void evtCutProc();
    /* 80550500 */ void action();
    /* 805505F8 */ void beforeMove();
    /* 805506BC */ void setAttnPos();
    /* 80550ADC */ void setCollision();
    /* 80550CA0 */ bool drawDbgInfo();
    /* 80550CA8 */ void selectAction();
    /* 80550D44 */ void chkAction(int (daNpc_Kkri_c::*)(void*));
    /* 80550D70 */ void setAction(int (daNpc_Kkri_c::*)(void*));
    /* 80550E18 */ void cutConversationAboutSoup(int);
    /* 80550F70 */ void cutYmLook(int);
    /* 80551084 */ void sleep();
    /* 805512E0 */ void wait(void*);
    /* 80551538 */ void sitWait1(void*);
    /* 80551A4C */ void fearWait(void*);
    /* 80551DA4 */ void talk(void*);
    /* 80553304 */ daNpc_Kkri_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                daNpcT_evtData_c const*, char**);
    /* 805533E4 */ s32 getEyeballMaterialNo();
    /* 805533EC */ s32 getHeadJointNo();
    /* 805533F4 */ s32 getNeckJointNo();
    /* 805533FC */ bool getBackboneJointNo();
    /* 80553404 */ void checkChangeJoint(int);
    /* 80553414 */ void checkRemoveJoint(int);

    static void* mCutNameList[3];
    static u8 mCutList[36];

private:
    /* 0x568 */ u8 field_0x568[0xfdc - 0x568];
};

STATIC_ASSERT(sizeof(daNpc_Kkri_c) == 0xfdc);

class daNpc_Kkri_Param_c {
public:
    /* 80553424 */ ~daNpc_Kkri_Param_c();

    static u8 const m[140];
};


#endif /* D_A_NPC_KKRI_H */
