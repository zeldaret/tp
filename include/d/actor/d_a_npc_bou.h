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
 class daNpc_Bou_Param_c {
    public:
        /* 809727F4 */ ~daNpc_Bou_Param_c();
    
        struct Data {
            /* 0x00 */ f32 field_0x00; // 255.0f
            /* 0x04 */ f32 field_0x04; // 3.0f
            /* 0x08 */ f32 field_0x08; // 1.0f
            /* 0x0C */ f32 field_0x0c; // 600.0f
            /* 0x10 */ f32 field_0x10; // 255.0f
            /* 0x14 */ f32 field_0x14; // 200.0f
            /* 0x18 */ f32 field_0x18; // 35.0f
            /* 0x1C */ f32 field_0x1c; // 40.0f
            /* 0x20 */ f32 field_0x20; // 0.0f
            /* 0x24 */ f32 field_0x24; // 0.0f
            /* 0x28 */ f32 field_0x28; // 10.0f
            /* 0x2C */ f32 field_0x2c; // -10.0f
            /* 0x30 */ f32 field_0x30; // 30.0f
            /* 0x34 */ f32 field_0x34; // -10.0f
            /* 0x38 */ f32 field_0x38; // 45.0f
            /* 0x3C */ f32 field_0x3c; // -45.0f
            /* 0x40 */ f32 field_0x40; // 0.6f
            /* 0x44 */ f32 field_0x44; // 12.0f
            /* 0x48 */ s16 field_0x48; // 3
            /* 0x4a */ s16 field_0x4a; // 6
            /* 0x4c */ s16 field_0x4c; // 5
            /* 0x4e */ s16 field_0x4e; // 6
            /* 0x50 */ f32 field_0x50; // 110.0f
            /* 0x54 */ f32 field_0x54; // 500.0f
            /* 0x58 */ f32 field_0x58; // 300.0f
            /* 0x5c */ f32 field_0x5c; // -300.0f
            /* 0x60 */ s16 field_0x60; // 60
            /* 0x62 */ s16 field_0x62; // 8
            /* 0x64 */ f32 field_0x64; // 0.0f
            /* 0x68 */ f32 field_0x68; // 0.0f
            /* 0x6c */ f32 field_0x6c; // 4.0f
            /* 0x70 */ f32 field_0x70; // 0.0f
            /* 0x74 */ f32 field_0x74; // 0.0f
            /* 0x78 */ f32 field_0x78; // 0.0f
            /* 0x7c */ f32 field_0x7c; // 0.0f
            /* 0x80 */ f32 field_0x80; // 0.0f
            /* 0x84 */ f32 field_0x84; // 0.0f
            /* 0x88 */ f32 field_0x88; // 0.0f
            /* 0x8c */ f32 field_0x8c; // 16.0f
            /* 0x90 */ f32 field_0x90; // 1000.0f
            /* 0x94 */ f32 field_0x94; // 500.0f
            /* 0x98 */ f32 field_0x98; // -500.0f
        };
    
        static const Data m;
};

class daNpc_Bou_c : public daNpcT_c {
public:

    enum Type {
    TYPE_0,
    TYPE_1,
    TYPE_2,
    TYPE_3,
    TYPE_4,
    TYPE_5,
    };

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
    /* 8096DF9C */ virtual BOOL checkChangeEvt();
    /* 8096E27C */ virtual BOOL evtTalk();
    /* 8096E31C */ virtual BOOL evtEndProc();
    /* 8096E324 */ virtual BOOL evtCutProc();
    /* 8096E0EC */ virtual void setAfterTalkMotion();
    /* 8096E3EC */ virtual void action();
    /* 8096E7E0 */ virtual void beforeMove();
    /* 8096E8A4 */ virtual void setAttnPos();
    /* 8096EB14 */ virtual void setCollision();
    /* 8096EC6C */ virtual int drawDbgInfo();
    /* 8096EC74 */ virtual void changeAnm(int*, int*);

    static void* mCutNameList[9];
    static u8 mCutList[108];

    BOOL chkFindWolf() {
        int iVar1 = daNpcT_getDistTableIdx(field_0xfe0, field_0xfe4);
        return daNpcT_c::chkFindWolf(mCurAngle.y, iVar1, field_0xfdc, daNpc_Bou_Param_c::m.field_0x54,
            daNpc_Bou_Param_c::m.field_0x50, daNpc_Bou_Param_c::m.field_0x58, daNpc_Bou_Param_c::m.field_0x5c, 1);
    }

    int chkCondition(int i_val) {
        if (mStagger.checkStagger()) {
            return false;
        } else if (i_val != 0) {
            return true;
        } else {
            if (mMotionSeqMngr.getNo() == 3 ||
                mMotionSeqMngr.getNo() == 2 ||
                mMotionSeqMngr.getNo() == 4) {
                if (mMotionSeqMngr.getStepNo() > 0) {
                    return true;
                }
            } else if (mMotionSeqMngr.getNo() == 1) {
                return true;
            }
        }
        return false;
    }

    BOOL speakTo() {
        if (field_0xf80 == 4) {
            if (current.pos.absXZ(daPy_getPlayerActorClass()->current.pos) < 1100.0f && strlen(mpEvtData[5].eventName) != 0) {
                u32 len = strlen(mpArcNames[mpEvtData[5].num]);
                if (len != 0) {
                    eventInfo.setArchiveName(mpArcNames[mpEvtData[5].num]);
                    dComIfGp_getEventManager().setObjectArchive(eventInfo.getArchiveName());
                }

                mEvtId = dComIfGp_getEventManager().getEventIdx(this, mpEvtData[5].eventName, 0xFF);
                fopAcM_orderOtherEventId(this, mEvtId, 0xFF, 0xFFFF, 4, 1);
                return 1;
            }
        }

        return 0;
    }

private:
    /* 0xE40 */ int field_0xe40;
    /* 0xE44 */ dCcD_Cyl field_0xe44;
    /* 0xF80 */ u8 field_0xf80;
    /* 0xF84 */ daNpcT_ActorMngr_c field_0xf84[3];
    /* 0xF9C */ daNpcT_Path_c field_0xf9c;
    /* 0xFC4 */ u8 field_0xfc4[0xFDC - 0xFC4];
    /* 0xFDC */ int field_0xfdc;
    /* 0xFE0 */ int field_0xfe0;
    /* 0xFE4 */ int field_0xfe4;
    /* 0xFE8 */ u8 field_0xfe8[0xFFC - 0xFE8];
};

STATIC_ASSERT(sizeof(daNpc_Bou_c) == 0xffc);


#endif /* D_A_NPC_BOU_H */
