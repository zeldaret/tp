#ifndef D_A_NPC_KKRI_H
#define D_A_NPC_KKRI_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Kkri_c
 * @brief Coro
 *
 * @details
 *
 */
class daNpc_Kkri_c : public daNpcT_c {
public:
    typedef int (daNpc_Kkri_c::*ActionFunc)(void*);
    
    /* 8054F4F8 */ int create();
    /* 8054F7D0 */ int CreateHeap();
    /* 8054FC10 */ int Delete();
    /* 8054FC44 */ int Execute();
    /* 8054FC64 */ int Draw();
    /* 8054FD00 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 8054FD20 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 8054FD78 */ static void* srchYm(void*, void*);
    /* 8054FE20 */ int getType();
    /* 8054FE58 */ int isDelete();
    /* 8054FE8C */ void reset();
    /* 8055032C */ void srchActors();
    /* 80550CA8 */ int selectAction();
    /* 80550D44 */ BOOL chkAction(ActionFunc);
    /* 80550D70 */ BOOL setAction(ActionFunc);
    /* 80550E18 */ int cutConversationAboutSoup(int);
    /* 80550F70 */ int cutYmLook(int);
    /* 80551084 */ int sleep();
    /* 805512E0 */ int wait(void*);
    /* 80551538 */ int sitWait1(void*);
    /* 80551A4C */ int fearWait(void*);
    /* 80551DA4 */ int talk(void*);

    /* 80553304 */ daNpc_Kkri_c(daNpcT_faceMotionAnmData_c const* i_faceMotionAnmData,
                                   daNpcT_motionAnmData_c const* i_motionAnmData,
                                   daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_faceMotionSequenceData,
                                   int i_faceMotionStepNum,
                                   daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_motionSequenceData, int i_motionStepNum,
                                   daNpcT_evtData_c const* i_evtData, char** i_arcNames)
                    : daNpcT_c(i_faceMotionAnmData, i_motionAnmData, i_faceMotionSequenceData,
                               i_faceMotionStepNum, i_motionSequenceData, i_motionStepNum, i_evtData,
                               i_arcNames)
                    {
                        OS_REPORT("|%06d:%x|daNpc_Kkri_c -> コンストラクト\n", g_Counter.mCounter0, this);
                    }

    /* 8054F3AC */ virtual ~daNpc_Kkri_c();
    /* 80553404 */ virtual BOOL checkChangeJoint(int i_jointNo) { return i_jointNo == 6; }
    /* 80553414 */ virtual BOOL checkRemoveJoint(int i_jointNo) { return i_jointNo == 10; }
    /* 805533FC */ virtual s32 getBackboneJointNo() { return 1; }
    /* 805533F4 */ virtual s32 getNeckJointNo() { return 3; }
    /* 805533EC */ virtual s32 getHeadJointNo() { return 4; }
    /* 805533E4 */ virtual u16 getEyeballMaterialNo() { return 2; }
    /* 805500A0 */ virtual void setParam();
    /* 8054FFEC */ virtual BOOL checkChangeEvt();
    /* 80550398 */ virtual BOOL evtTalk();
    /* 80550438 */ virtual BOOL evtCutProc();
    /* 80550270 */ virtual void setAfterTalkMotion();
    /* 80550500 */ virtual void action();
    /* 805505F8 */ virtual void beforeMove();
    /* 805506BC */ virtual void setAttnPos();
    /* 80550ADC */ virtual void setCollision();
    /* 80550CA0 */ virtual int drawDbgInfo();

    int getFlowNodeNo() {
        u16 prm = home.angle.x;
        return prm == 0xFFFF ? -1 : prm;
    }

    u8 getPathID() { return (fopAcM_GetParam(this) & 0xFF00) >> 8; }
    u8 getBitSW() { return (fopAcM_GetParam(this) & 0xFF0000) >> 16; }
    u8 getBitSW2() { return (fopAcM_GetParam(this) & 0xFF000000) >> 24; }

    MtxP getBd3Mtx() {
        return mpMorf[0]->getModel()->getAnmMtx(0x11);
    }

    MtxP getBd2Mtx() {
        return mpMorf[0]->getModel()->getAnmMtx(6);
    }

    MtxP getBd1Mtx() {
        return mpMorf[0]->getModel()->getAnmMtx(5);
    }

    static char* mCutNameList[3];
    static int (daNpc_Kkri_c::*mCutList[])(int);

private:
    /* 0xE40 */ u8 field_0xE40[0xE44 - 0xE40];
    /* 0xE44 */ dCcD_Cyl mCcCyl;
    /* 0xF80 */ u8 mType;
    /* 0xF84 */ daNpcT_ActorMngr_c mActorMng[1];
    /* 0xF8C */ ActionFunc mSelectAction;
    /* 0xF98 */ ActionFunc mAction;
    /* 0xFA4 */ daNpcT_Path_c mPath;
    /* 0xFCC */ int field_0xfcc;
    /* 0xFD0 */ int field_0xfd0;
    /* 0xFD4 */ u8 field_0xfd4;
    /* 0xFD5 */ u8 field_0xfd5;
    /* 0xFD6 */ u8 field_0xfd6;
    /* 0xFD7 */ u8 field_0xfd7;
    /* 0xFD8 */ u8 field_0xfd8;
};

STATIC_ASSERT(sizeof(daNpc_Kkri_c) == 0xfdc);

struct daNpc_Kkri_HIOParam {
    /* 0x00 */ daNpcT_HIOParam common;
};

class daNpc_Kkri_Param_c {
public:
    /* 80553424 */ virtual ~daNpc_Kkri_Param_c() {}

    static const daNpc_Kkri_HIOParam m;
};


#endif /* D_A_NPC_KKRI_H */
