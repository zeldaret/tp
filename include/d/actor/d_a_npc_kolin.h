#ifndef D_A_NPC_KOLIN_H
#define D_A_NPC_KOLIN_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Kolin_c
 * @brief Colin
 *
 * @details
 *
*/

struct daNpc_Kolin_HIOParam {
    /* 0x00 */ daNpcT_HIOParam common;
    /* 0x8C */ f32 start_distance;      // 走りはじめ距離   - Start Distance
    /* 0x90 */ f32 follow_distance;     // 追従距離         - Follow Distance
    /* 0x94 */ f32 run_speed;           // 走る速度         - Run Speed
    /* 0x98 */ s16 shy_walk_time;       // いじけ歩き時間   - Shy Walk Time
    /* 0x9A */ s16 sulk_time;           // いじけ時間       - Sulk Time
    /* 0x9C */ f32 yeah_yeah;           // ハイハイ         - Yeah Yeah (Likely a sarcastic connotation)
};

class daNpc_Kolin_Param_c {
public:
    /* 8055A4E8 */ virtual ~daNpc_Kolin_Param_c() {}

    static daNpc_Kolin_HIOParam const m;
};

class daNpc_Kolin_c : public daNpcT_c {
public:
    typedef int (daNpc_Kolin_c::*cutFunc)(int);
    typedef int (daNpc_Kolin_c::*actionFunc)(void*);

    /* 80553FEC */ ~daNpc_Kolin_c();
    /* 80554138 */ cPhs__Step create();
    /* 80554414 */ int CreateHeap();
    /* 80554930 */ int Delete();
    /* 80554964 */ int Execute();
    /* 80554984 */ int Draw();
    /* 80554A18 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80554A38 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80554A90 */ u8 getType();
    /* 80554B30 */ BOOL isDelete();
    /* 80554CB0 */ void reset();
    /* 805552DC */ void srchActors();
    /* 80555E38 */ int selectAction();
    /* 80555F28 */ BOOL chkAction(actionFunc);
    /* 80555F54 */ int setAction(actionFunc);
    /* 80555FFC */ void calcFollowSpeedAndAngle(fopAc_ac_c*, int, int);
    /* 805563BC */ void followPlayer(int);
    /* 805567AC */ void lookup(u8);
    /* 805568AC */ int cutNoRide(int);
    /* 80556A04 */ int cutHail(int);
    /* 80556DB4 */ int cutGiveMeWoodSwd(int);
    /* 80557054 */ int cutGetWoodSwd(int);
    /* 805576C4 */ int cutConversationAboutLoopHole(int);
    /* 805579DC */ int cutCacaricoConversation(int);
    /* 80557BD4 */ int cutConversationAboutDeathMt(int);
    /* 80557C6C */ int cutConversationAboutGoron(int);
    /* 80557D04 */ int cutClothTry(int);
    /* 80557E38 */ int cutThankYou(int);
    /* 80557ED8 */ int wait(void*);
    /* 80558698 */ int timidWalk(void*);
    /* 80558AF8 */ int follow(void*);
    /* 80558C4C */ int clothWait(void*);
    /* 80558E90 */ int talk(void*);
#if DEBUG
    int test(void*);
#endif
    /* 8055A3B8 */ daNpc_Kolin_c(
            daNpcT_faceMotionAnmData_c const* i_faceMotionAnmData,
            daNpcT_motionAnmData_c const* i_motionAnmData,
            daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_faceMotionSequenceData,
            int i_faceMotionStepNum,
            daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_motionSequenceData,
            int i_motionStepNum,
            daNpcT_evtData_c const* i_evtData,
            char** i_arcNames)
        : daNpcT_c(i_faceMotionAnmData, i_motionAnmData, i_faceMotionSequenceData,
        i_faceMotionStepNum, i_motionSequenceData, i_motionStepNum, i_evtData,
        i_arcNames) {}
    /* 8055A4B8 */ virtual int checkChangeJoint(int i_joint) { return i_joint == 4; }
    /* 8055A4C8 */ virtual int checkRemoveJoint(int i_joint) { return i_joint == 8; }
    /* 8055A4B0 */ virtual s32 getBackboneJointNo() { return 1; }
    /* 8055A4A8 */ virtual s32 getNeckJointNo() { return 3; }
    /* 8055A4A0 */ virtual s32 getHeadJointNo() { return 4; }
    /* 8055A4D8 */ virtual s32 getFootLJointNo() { return 22; }
    /* 8055A4E0 */ virtual s32 getFootRJointNo() { return 25; }
    /* 8055A498 */ virtual u16 getEyeballMaterialNo() { return 2; }
    /* 80554EBC */ virtual void afterJntAnm(int);
    /* 80554F48 */ virtual void setParam();
    /* 80555118 */ virtual BOOL checkChangeEvt();
    /* 80555448 */ virtual BOOL evtTalk();
    /* 805554E8 */ virtual BOOL evtCutProc();
    /* 8055523C */ virtual void setAfterTalkMotion();
    /* 805555B0 */ virtual void action();
    /* 8055574C */ virtual void beforeMove();
    /* 80555810 */ virtual void setAttnPos();
    /* 80555B48 */ virtual void setCollision();
    /* 80555CE4 */ virtual int drawDbgInfo();
    /* 80555CEC */ virtual void drawOtherMdl();
    /* 80555DC4 */ virtual void changeAnm(int*, int*);
    /* 80555DEC */ virtual void changeBck(int*, int*);

    static char* mCutNameList[11];
    static cutFunc mCutList[11];

    u32 getFlowNodeNo() {
        u16 nodeNo = home.angle.x;
        u32 rv;
        if (nodeNo == 0xffff) {
            rv = -1;
        } else {
            rv = nodeNo;
        }
        return rv;
    }

    u32 getPathID() { return (fopAcM_GetParam(this) & 0xFF00) >> 8; }
    u32 getBitSW() { return (fopAcM_GetParam(this) & 0xFF0000) >> 16; }

    BOOL orderNoRideEvt() {
        if (mType == 11) {
            s16 var_r28 = (s16)(fopAcM_searchPlayerAngleY(this) - home.angle.y);
            int var_r29 = 3;

            if (var_r28 < 0) {
                var_r29 = 2;
            }

            if (strlen(mpEvtData[var_r29].eventName) != 0) {
                u32 len = strlen(mpArcNames[mpEvtData[var_r29].num]);
                if (len != 0) {
                    eventInfo.setArchiveName(mpArcNames[mpEvtData[var_r29].num]);
                    dComIfGp_getEventManager().setObjectArchive(eventInfo.getArchiveName());
                }

                mEvtId = dComIfGp_getEventManager().getEventIdx(this, mpEvtData[var_r29].eventName, 0xFF);
                fopAcM_orderOtherEventId(this, mEvtId, 0xFF, 0xFFFF, 4, 1);
                return 1;
            }
        }

        return 0;
    }

private:
    /* 0x0E40 */ u8 field_0xe40[0xe44 - 0xe40];
    /* 0x0E44 */ J3DModel* mpClothModel;
    /* 0x0E48 */ dCcD_Cyl field_0xe48;
    /* 0x0F84 */ u8 mType;
    /* 0x0F88 */ daNpcT_ActorMngr_c mActorMngr[5];
    /* 0x0FB0 */ daNpcT_Path_c mPath;
    /* 0x0FD8 */ actionFunc mNextAction;
    /* 0x0FE4 */ actionFunc mAction;
    /* 0x0FF0 */ u8 field_0xff0[0xffc - 0xff0];
    /* 0x0FFC */ int field_0xffc;
    /* 0x1000 */ int field_0x1000;
    /* 0x1004 */ int field_0x1004;
    /* 0x1008 */ int field_0x1008;
    /* 0x100C */ u8 field_0x100c[0x1010 - 0x100c];
    /* 0x1010 */ f32 field_0x1010;
    /* 0x1014 */ u8 field_0x1014;
    /* 0x1015 */ u8 field_0x1015;
    /* 0x1016 */ u8 field_0x1016;
    /* 0x1017 */ u8 field_0x1017;
    /* 0x1018 */ u8 field_0x1018;
    /* 0x1019 */ u8 field_0x1019[0x101c - 0x1019];
    /* 0x101C */ u8 field_0x101c;
};

STATIC_ASSERT(sizeof(daNpc_Kolin_c) == 0x1020);

#endif /* D_A_NPC_KOLIN_H */
