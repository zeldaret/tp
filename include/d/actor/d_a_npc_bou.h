#ifndef D_A_NPC_BOU_H
#define D_A_NPC_BOU_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Bou_c
 * @brief Mayor Bo
 *
 * @details
 *
 */
class daNpc_Bou_c : public daNpcT_c {
public:
    /* 8096CF8C */ ~daNpc_Bou_c();
    /* 8096D0D8 */ void create();
    /* 8096D38C */ void CreateHeap();
    /* 8096D7B8 */ void Delete();
    /* 8096D7EC */ void Execute();
    /* 8096D80C */ void Draw();
    /* 8096D8A0 */ void createHeapCallBack(fopAc_ac_c*);
    /* 8096D8C0 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 8096D918 */ void srchCow(void*, void*);
    /* 8096D9B4 */ void getCowP();
    /* 8096DA78 */ u8 getType();
    /* 8096DADC */ void isDelete();
    /* 8096DBBC */ void reset();
    /* 8096E18C */ void srchActors();
    /* 8096ECC0 */ void selectAction();
    /* 8096ED3C */ void chkAction(int (daNpc_Bou_c::*)(void*));
    /* 8096ED68 */ void setAction(int (daNpc_Bou_c::*)(void*));
    /* 8096EE10 */ void cutWildGoat(int);
    /* 8096F2E4 */ void cutWildGoatSuccess(int);
    /* 8096F510 */ void cutWildGoatFailure(int);
    /* 8096F758 */ void cutSpeakTo(int);
    /* 8096F9A4 */ void cutConversationWithBou(int);
    /* 8096FB78 */ void cutConfidentialConversation(int);
    /* 8096FE40 */ void cutFindWolf(int);
    /* 80970278 */ void cutMeetingAgain(int);
    /* 809709EC */ void wait(void*);
    /* 80970DFC */ void talkwithJagar(void*);
    /* 80970F9C */ void talk(void*);
    /* 809726D4 */ daNpc_Bou_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                               daNpcT_evtData_c const*, char**);

    /* 809727D4 */ virtual int checkChangeJoint(int);
    /* 809727E4 */ virtual int checkRemoveJoint(int);
    /* 809727CC */ virtual s32 getBackboneJointNo();
    /* 809727C4 */ virtual s32 getNeckJointNo();
    /* 809727BC */ virtual s32 getHeadJointNo();
    /* 809727B4 */ virtual s32 getEyeballMaterialNo();
    /* 8096DD44 */ virtual void afterJntAnm(int);
    /* 8096DDC8 */ virtual void setParam();
    /* 8096DF9C */ virtual bool checkChangeEvt();
    /* 8096E27C */ virtual bool evtTalk();
    /* 8096E31C */ virtual bool evtEndProc();
    /* 8096E324 */ virtual bool evtCutProc();
    /* 8096E0EC */ virtual void setAfterTalkMotion();
    /* 8096E3EC */ virtual void action();
    /* 8096E7E0 */ virtual void beforeMove();
    /* 8096E8A4 */ virtual void setAttnPos();
    /* 8096EB14 */ virtual void setCollision();
    /* 8096EC6C */ virtual int drawDbgInfo();
    /* 8096EC74 */ virtual void changeAnm(int*, int*);

    static void* mCutNameList[9];
    static u8 mCutList[108];

    BOOL speakTo() {
        if (field_0xf80 == 4) {
            if (current.pos.absXZ(daPy_getPlayerActorClass()->current.pos) < 1100.0f && strlen(field_0x570[5].eventName) != 0) {
                u32 len = strlen(field_0x574[field_0x570[5].num]);
                if (len != 0) {
                    eventInfo.setArchiveName(field_0x574[field_0x570[5].num]);
                    dComIfGp_getEventManager().setObjectArchive(eventInfo.getArchiveName());
                }

                field_0xe1c = dComIfGp_getEventManager().getEventIdx(this, field_0x570[5].eventName, 0xFF);
                fopAcM_orderOtherEventId(this, field_0xe1c, 0xFF, 0xFFFF, 4, 1);
                return 1;
            }
        }

        return 0;
    }

private:
    /* 0xE40 */ u8 field_0xE40[0xE44 - 0xE40];
    /* 0xE44 */ dCcD_Cyl field_0xe44;
    /* 0xF80 */ u8 field_0xf80;
    /* 0xF84 */ daNpcT_ActorMngr_c field_0xf84[3];
    /* 0xF9C */ daNpcT_Path_c field_0xf9c;
    /* 0xFC4 */ u8 field_0xfc4[0xFFC - 0xFC4];
};

STATIC_ASSERT(sizeof(daNpc_Bou_c) == 0xffc);

class daNpc_Bou_Param_c {
public:
    /* 809727F4 */ ~daNpc_Bou_Param_c();

    static u8 const m[156];
};


#endif /* D_A_NPC_BOU_H */
