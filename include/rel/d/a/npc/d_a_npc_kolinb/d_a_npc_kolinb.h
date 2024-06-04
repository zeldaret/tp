#ifndef D_A_NPC_KOLINB_H
#define D_A_NPC_KOLINB_H

#include "dolphin/types.h"
#include "d/a/d_a_npc.h"

class daNpc_Kolinb_c : public fopAc_ac_c {
public:
    /* 80A4598C */ ~daNpc_Kolinb_c();
    /* 80A45ADC */ void create();
    /* 80A45DC4 */ void CreateHeap();
    /* 80A4603C */ void Delete();
    /* 80A46070 */ void Execute();
    /* 80A46090 */ void Draw();
    /* 80A46124 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80A46144 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80A4619C */ void getType();
    /* 80A461E8 */ void isDelete();
    /* 80A462C8 */ void reset();
    /* 80A46420 */ void setParam();
    /* 80A4651C */ void checkChangeEvt();
    /* 80A465D0 */ void setAfterTalkMotion();
    /* 80A46630 */ void srchActors();
    /* 80A46634 */ void evtTalk();
    /* 80A466D4 */ void evtCutProc();
    /* 80A4679C */ void action();
    /* 80A46824 */ void beforeMove();
    /* 80A468E8 */ void setAttnPos();
    /* 80A46A4C */ void setCollision();
    /* 80A46A9C */ bool drawDbgInfo();
    /* 80A46AA4 */ void selectAction();
    /* 80A46AEC */ void chkAction(int (daNpc_Kolinb_c::*)(void*));
    /* 80A46B18 */ void setAction(int (daNpc_Kolinb_c::*)(void*));
    /* 80A46BC0 */ void cutConversationInHotel(int);
    /* 80A46C48 */ void cutConversationAboutDeathMt(int);
    /* 80A46EE4 */ void cutConversationAboutGoron(int);
    /* 80A47180 */ void cutNurse(int);
    /* 80A472EC */ void cutClothTry(int);
    /* 80A4738C */ void cutThankYou(int);
    /* 80A4742C */ void wait(void*);
    /* 80A475D4 */ void talk(void*);
    /* 80A4854C */ daNpc_Kolinb_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                                  daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                  daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                  daNpcT_evtData_c const*, char**);
    /* 80A4860C */ void getHeadJointNo();
    /* 80A48624 */ void checkChangeJoint(int);
    /* 80A4864C */ void checkRemoveJoint(int);
    /* 80A48674 */ void getBackboneJointNo();
    /* 80A4868C */ void getNeckJointNo();

    static void* mCutNameList[7];
    static u8 mCutList[84];

private:
    /* 0x568 */ u8 field_0x568[0xffc - 0x568];
};
STATIC_ASSERT(sizeof(daNpc_Kolinb_c) == 0xffc);

class daNpc_Kolinb_Param_c {
public:
    /* 80A486A4 */ ~daNpc_Kolinb_Param_c();

    static u8 const m[140];
};


#endif /* D_A_NPC_KOLINB_H */
