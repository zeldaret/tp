#ifndef D_A_NPC_BANS_H
#define D_A_NPC_BANS_H

#include "d/actor/d_a_npc.h"
#include "d/d_shop_system.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Bans_c
 * @brief Barnes
 *
 * @details
 *
*/

struct daNpc_Bans_HIOParam {
    /* 0x00 */ daNpcT_HIOParam common;
    /* 0x8C */ f32 run_spd;
};

class daNpc_Bans_Param_c {
public:
    /* 80967C24 */ virtual ~daNpc_Bans_Param_c() {}

    static daNpc_Bans_HIOParam const m;
};

#if DEBUG
class daNpc_Bans_HIO_c : public mDoHIO_entry_c {
public:
    daNpc_Bans_HIO_c();
    void listenPropertyEvent(const JORPropertyEvent*);
    void genMessage(JORMContext*);

    /* 0x8 */ daNpc_Bans_HIOParam m;
};
#define NPC_BANS_HIO_CLASS daNpc_Bans_HIO_c
#else
#define NPC_BANS_HIO_CLASS daNpc_Bans_Param_c
#endif

class daNpc_Bans_c : public dShopSystem_c {
public:
    typedef int (daNpc_Bans_c::*actionFunc)(void*);
    typedef int (daNpc_Bans_c::*cutFunc)(int);

    /* 809628CC */ ~daNpc_Bans_c();
    /* 80962AA0 */ cPhs__Step create();
    /* 80962D6C */ int CreateHeap();
    /* 80963338 */ int Delete();
    /* 8096336C */ int Execute();
    /* 80963444 */ int Draw();
    /* 809634E0 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80963500 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80963558 */ u8 getType();
    /* 809635BC */ BOOL isDelete();
    /* 809636C0 */ void reset();
    /* 80963840 */ void afterJntAnm(int);
    /* 809638CC */ void setParam();
    /* 80963A7C */ BOOL checkChangeEvt();
    /* 80963B30 */ void setAfterTalkMotion();
    /* 80963BA8 */ void srchActors();
    /* 80963DB0 */ BOOL evtTalk();
    /* 80963EDC */ BOOL evtCutProc();
    /* 80963FA4 */ void action();
    /* 80964148 */ void beforeMove();
    /* 80964228 */ void setAttnPos();
    /* 809646E0 */ void setCollision();
    /* 80964994 */ int drawDbgInfo();
    /* 8096499C */ void drawOtherMdl();
    /* 80964AD8 */ bool setScoopAnm(int, int, f32);
    /* 80964B9C */ bool afterSetMotionAnm(int, int, f32, int);
    /* 80964BD0 */ BOOL selectAction();
    /* 80964C4C */ BOOL chkAction(actionFunc);
    /* 80964C78 */ BOOL setAction(actionFunc);
    /* 80964D20 */ BOOL checkPlayerIn2ndFloorOfBombShop();
    /* 80964DD0 */ void orderAngerEvt();
    /* 80964EB0 */ fopAc_ac_c* getKMsgTagP();
    /* 80964F48 */ void setPrtcls();
    /* 80964FEC */ int cutAnger(int);
    /* 809658F8 */ int cutPurchase(int);
    /* 80965CCC */ int wait(void*);
    /* 809661F0 */ int tend(void*);
    /* 80966888 */ int talk(void*);
    /* 80966B24 */ int shop(void*);
    /* 80DA60D0 */ int test(void*);
    /* 80967AC4 */ daNpc_Bans_c(
        daNpcT_faceMotionAnmData_c const* i_faceMotionAnmData,
        daNpcT_motionAnmData_c const* i_motionAnmData,
        daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_faceMotionSequenceData,
        int i_faceMotionStepNum,
        daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_motionSequenceData, int i_motionStepNum,
        daNpcT_evtData_c const* i_evtData, char** i_arcNames)
        : dShopSystem_c(i_faceMotionAnmData, i_motionAnmData, i_faceMotionSequenceData,
                i_faceMotionStepNum, i_motionSequenceData, i_motionStepNum, i_evtData,
                i_arcNames) {
            OS_REPORT("|%06d:%x|daNpc_Bans_c -> コンストラクト\n", g_Counter.mCounter0, this);
        }
    /* 80967BE4 */ u16 getEyeballMaterialNo() { return 2; }
    /* 80967BEC */ s32 getHeadJointNo() { return 6; }
    /* 80967BF4 */ s32 getNeckJointNo() { return 5; }
    /* 80967BFC */ s32 getBackboneJointNo() { return 1; }
    /* 80967C04 */ BOOL checkChangeJoint(int i_joint) { return i_joint == 6; }
    /* 80967C14 */ BOOL checkRemoveJoint(int i_joint) { return i_joint == 0xB; }

    u8 getGroupId() { return (fopAcM_GetParam(this) & ~0xFFFFFFF) >> 28; }
    u8 getMaxNumItem() { return (fopAcM_GetParam(this) & 0xF000000) >> 24; }
    u8 getPathID() { return (fopAcM_GetParam(this) & 0xFF00) >> 8; }
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

    static char* mCutNameList[4];
    static cutFunc mCutList[4];

    /* 0x0F7C */ mDoExt_McaMorfSO* mpScoopMorf;
    /* 0x0F80 */ NPC_BANS_HIO_CLASS* mHIO;
    /* 0x0F84 */ J3DModel* mTubModel[1];
    /* 0x0F88 */ dCcD_Cyl mCyl1;
    /* 0x10C4 */ dCcD_Cyl mCyl2;
    /* 0x1200 */ u8 mType;
    /* 0x1204 */ daNpcT_ActorMngr_c mActorMngrs[8];
    /* 0x1244 */ actionFunc mNextAction;
    /* 0x1250 */ actionFunc mAction;
    /* 0x125C */ int mShopProcess;
    /* 0x1260 */ int mTimer;
    /* 0x1264 */ u8 mSetParamFlag;
    /* 0x1265 */ u8 mShopFlag;
    /* 0x1266 */ u8 field_0x1266;
    /* 0x1267 */ u8 mDemo13Flag;
    /* 0x1268 */ u8 mDropWaterTimer;
    /* 0x1269 */ u8 field_0x1269;
    /* 0x126A */ u8 field_0x126a;
    /* 0x126B */ u8 field_0x126b;
    /* 0x126C */ u8 field_0x126c;
};

STATIC_ASSERT(sizeof(daNpc_Bans_c) == 0x1270);

#endif /* D_A_NPC_BANS_H */
