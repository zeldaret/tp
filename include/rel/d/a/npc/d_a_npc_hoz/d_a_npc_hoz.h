#ifndef D_A_NPC_HOZ_H
#define D_A_NPC_HOZ_H

#include "d/a/d_a_npc.h"

class daNpc_Hoz_c : public daNpcT_c {
public:
    enum Type {
        /* 0 */ TYPE_0,
        /* 1 */ TYPE_1,
        /* 2 */ TYPE_2,
        /* 3 */ TYPE_3,
        /* 4 */ TYPE_4,
        /* 5 */ TYPE_5,
        /* 6 */ TYPE_6,
    };

    /* 80A0150C */ ~daNpc_Hoz_c();
    /* 80A01658 */ void create();
    /* 80A01904 */ void CreateHeap();
    /* 80A01D54 */ void Delete();
    /* 80A01D88 */ void Execute();
    /* 80A01DA8 */ void Draw();
    /* 80A01E44 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80A01E64 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80A01F54 */ u8 getType();
    /* 80A01FC8 */ void getFlowNodeNo();
    /* 80A01FE4 */ bool isDelete();
    /* 80A01FEC */ void reset();
    /* 80A021DC */ void setParam();
    /* 80A0236C */ void setAfterTalkMotion();
    /* 80A02370 */ void srchActors();
    /* 80A02374 */ bool checkChangeEvt();
    /* 80A023EC */ bool evtTalk();
    /* 80A024D0 */ bool evtEndProc();
    /* 80A0260C */ bool evtCutProc();
    /* 80A026D4 */ int evtProc();
    /* 80A02918 */ void action();
    /* 80A029A0 */ void beforeMove();
    /* 80A02A18 */ void setAttnPos();
    /* 80A02C50 */ void setCollision();
    /* 80A02DD4 */ void evtOrder();
    /* 80A02F78 */ int drawDbgInfo();
    /* 80A02F80 */ void selectAction();
    /* 80A030A8 */ void chkAction(int (daNpc_Hoz_c::*)(void*));
    /* 80A030D4 */ void setAction(int (daNpc_Hoz_c::*)(void*));
    /* 80A0317C */ void wait(void*);
    /* 80A03304 */ void waitBattle(void*);
    /* 80A03578 */ void waitTwilightBattle(void*);
    /* 80A037E4 */ void waitBoat(void*);
    /* 80A03BDC */ void waitBoat2(void*);
    /* 80A03F8C */ void waitBoat1_5(void*);
    /* 80A04400 */ void waitTw(void*);
    /* 80A045FC */ void talk(void*);
    /* 80A0487C */ void ECut_boatRace(int);
    /* 80A04BE4 */ void ECut_beforeBattle(int);
    /* 80A04CDC */ void ECut_afterBattle(int);
    /* 80A04E24 */ void ECut_beforeBlast(int);
    /* 80A04F6C */ void ECut_afterBlast(int);
    /* 80A050B4 */ void ECut_yMushi(int);
    /* 80A051C8 */ void ECut_talkBreak(int);
    /* 80A064E4 */ daNpc_Hoz_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                               daNpcT_evtData_c const*, char**);
    /* 80A065A4 */ bool getEyeballMaterialNo();
    /* 80A065AC */ s32 getHeadJointNo();
    /* 80A065B4 */ s32 getNeckJointNo();
    /* 80A065BC */ s32 getBackboneJointNo();
    /* 80A065C4 */ bool checkChangeJoint(int);
    /* 80A065D4 */ bool checkRemoveJoint(int);

    bool getGameStartFlag() { return mGameStartFlag; }

    static void* mCutNameList[8];
    static u8 mCutList[96];

    /* 0xE40 */ u8 field_0xe40[0x14d];
    /* 0xF8D */ bool mGameStartFlag;
    /* 0xF8E */ u8 field_0xf8e[0x3a];
};

STATIC_ASSERT(sizeof(daNpc_Hoz_c) == 0xFC8);

struct daNpc_Hoz_Param_c {
    /* 80A065E4 */ ~daNpc_Hoz_Param_c();

    static u8 const m[144];
};

#endif /* D_A_NPC_HOZ_H */
