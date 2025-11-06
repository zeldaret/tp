#ifndef D_A_NPC_HOZ_H
#define D_A_NPC_HOZ_H

#include "d/actor/d_a_npc.h"
#include "d/actor/d_a_startAndGoal.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Hoz_c
 * @brief Iza
 *
 * @details
 *
 */
class daNpc_Hoz_c : public daNpcT_c {
public:
    typedef int (daNpc_Hoz_c::*actionFunc)(void*);
    typedef int (daNpc_Hoz_c::*cutFunc)(int);

    enum Type {
        /* 0 */ TYPE_0,
        /* 1 */ TYPE_1,
        /* 2 */ TYPE_2,
        /* 3 */ TYPE_3,
        /* 4 */ TYPE_4,
        /* 5 */ TYPE_5,
        /* 6 */ TYPE_6,
    };

    /* 80A01658 */ int create();
    /* 80A01904 */ int CreateHeap();
    /* 80A01D54 */ int Delete();
    /* 80A01D88 */ int Execute();
    /* 80A01DA8 */ int Draw();
    /* 80A01E44 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80A01E64 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80A01F54 */ u8 getType();
    /* 80A01FC8 */ int getFlowNodeNo();
    /* 80A01FE4 */ int isDelete();
    /* 80A01FEC */ void reset();
    /* 80A02370 */ void srchActors();
    /* 80A02F80 */ int selectAction();
    /* 80A030A8 */ int chkAction(int (daNpc_Hoz_c::*)(void*));
    /* 80A030D4 */ int setAction(int (daNpc_Hoz_c::*)(void*));
    /* 80A0317C */ int wait(void*);
    /* 80A03304 */ int waitBattle(void*);
    /* 80A03578 */ int waitTwilightBattle(void*);
    /* 80A037E4 */ int waitBoat(void*);
    /* 80A03BDC */ int waitBoat2(void*);
    /* 80A03F8C */ int waitBoat1_5(void*);
    /* 80A04400 */ int waitTw(void*);
    /* 80A045FC */ int talk(void*);
    /* 80A0487C */ int ECut_boatRace(int);
    /* 80A04BE4 */ int ECut_beforeBattle(int);
    /* 80A04CDC */ int ECut_afterBattle(int);
    /* 80A04E24 */ int ECut_beforeBlast(int);
    /* 80A04F6C */ int ECut_afterBlast(int);
    /* 80A050B4 */ int ECut_yMushi(int);
    /* 80A051C8 */ int ECut_talkBreak(int);
    /* 80A064E4 */ daNpc_Hoz_c(daNpcT_faceMotionAnmData_c const* i_faceMotionAnmData,
                                   daNpcT_motionAnmData_c const* i_motionAnmData,
                                   daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_faceMotionSequenceData,
                                   int i_faceMotionStepNum,
                                   daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_motionSequenceData, int i_motionStepNum,
                                   daNpcT_evtData_c const* i_evtData, char** i_arcNames)
                    : daNpcT_c(i_faceMotionAnmData, i_motionAnmData, i_faceMotionSequenceData,
                               i_faceMotionStepNum, i_motionSequenceData, i_motionStepNum, i_evtData,
                               i_arcNames)
                    {
                        OS_REPORT("|%06d:%x|daNpc_Hoz_c -> コンストラクト\n", g_Counter.mCounter0, this);
                    }

    /* 80A0150C */ virtual ~daNpc_Hoz_c();
    /* 80A065C4 */ virtual int checkChangeJoint(int i_jointNo) { return i_jointNo == 4; }
    /* 80A065D4 */ virtual int checkRemoveJoint(int i_jointNo) { return i_jointNo == 9; }
    /* 80A065BC */ virtual s32 getBackboneJointNo() { return 1; }
    /* 80A065B4 */ virtual s32 getNeckJointNo() { return 3; }
    /* 80A065AC */ virtual s32 getHeadJointNo() { return 4; }
    /* 80A065A4 */ virtual u16 getEyeballMaterialNo() { return 1; }
    /* 80A021DC */ virtual void setParam();
    /* 80A02374 */ virtual BOOL checkChangeEvt();
    /* 80A023EC */ virtual BOOL evtTalk();
    /* 80A024D0 */ virtual BOOL evtEndProc();
    /* 80A0260C */ virtual BOOL evtCutProc();
    /* 80A0236C */ virtual void setAfterTalkMotion();
    /* 80A026D4 */ virtual int evtProc();
    /* 80A02918 */ virtual void action();
    /* 80A029A0 */ virtual void beforeMove();
    /* 80A02A18 */ virtual void setAttnPos();
    /* 80A02C50 */ virtual void setCollision();
    /* 80A02DD4 */ virtual void evtOrder();
    /* 80A02F78 */ virtual int drawDbgInfo();

    #if DEBUG
    int test(void*);
    #endif

    bool getGameStartFlag() { return mGameStartFlag; }
    void setPotBreakFlag() { mPotBreakFlag = true; }

    static char* mCutNameList[8];
    static cutFunc mCutList[];

private:
    /* 0xE40 */ u8 field_0xE40[0xE44 - 0xE40];
    /* 0xE44 */ dCcD_Cyl mCyl;
    /* 0xF80 */ u8 mType;
    /* 0xF84 */ daStartAndGoal_c* field_0xf84;
    /* 0xF88 */ u8 field_0xf88;
    /* 0xF89 */ u8 field_0xf89;
    /* 0xF8A */ u8 field_0xf8a;
    /* 0xF8B */ u8 field_0xf8b;
    /* 0xF8C */ u8 field_0xf8c;
    /* 0xF8D */ bool mGameStartFlag;
    /* 0xF8E */ bool mPotBreakFlag;
    /* 0xF90 */ cXyz field_0xf90;
    /* 0xF9C */ s16 field_0xf9c;
    /* 0xFA0 */ daNpcT_ActorMngr_c field_0xfa0;
    /* 0xFA8 */ int field_0xfa8;
    /* 0xFAC */ int (daNpc_Hoz_c::*field_0xfac)(void*);
    /* 0xFB8 */ int (daNpc_Hoz_c::*mAction)(void*);
    /* 0xFC4 */ u8 field_0xfc4;
};

STATIC_ASSERT(sizeof(daNpc_Hoz_c) == 0xFC8);

struct daNpc_Hoz_HIOParam {
    /* 0x00 */ daNpcT_HIOParam common;
    /* 0x8C */ f32 field_0x8c;
};

class daNpc_Hoz_Param_c {
public:
    /* 80A065E4 */ virtual ~daNpc_Hoz_Param_c() {}

    static const daNpc_Hoz_HIOParam m;
};

#endif /* D_A_NPC_HOZ_H */
