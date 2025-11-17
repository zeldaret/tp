#ifndef D_A_NPC_CLERKB_H
#define D_A_NPC_CLERKB_H

#include "d/actor/d_a_npc.h"
#include "d/d_shop_system.h"

struct daNpc_clerkB_HIOParam {
    /* 0x00 */ daNpcT_HIOParam common;
    /* 0x8C */ f32 field_0x8c;
    /* 0x90 */ s16 field_0x90;
    /* 0x92 */ s16 field_0x92;
};

class daNpc_clerkB_Param_c {
public:
    /* 80B2CD94 */ virtual ~daNpc_clerkB_Param_c() {}

    static const daNpc_clerkB_HIOParam m;
};

#if DEBUG
class daNpc_clerkB_HIO_c : public mDoHIO_entry_c {
public:
    daNpc_clerkB_HIO_c();

    void listenPropertyEvent(const JORPropertyEvent*);
    void genMessage(JORMContext*);

    daNpc_clerkB_HIOParam m;
};

#define NPC_CLERKB_HIO_CLASS daNpc_clerkB_HIO_c
#else
#define NPC_CLERKB_HIO_CLASS daNpc_clerkB_Param_c
#endif

/**
 * @ingroup actors-npcs
 * @class daNpc_clerkB_c
 * @brief Malver
 *
 * @details
 *
 */
class daNpc_clerkB_c : public dShopSystem_c {
public:
    typedef int (daNpc_clerkB_c::*cutFunc)(int);
    typedef int (daNpc_clerkB_c::*actionFunc)(void*);

    enum Type {
        TYPE_SHOP,
        TYPE_1,
    };

    enum FaceMotion {
        /* 0x01 */ FACE_MOT_UNK_1 = 1,
        /* 0x02 */ FACE_MOT_UNK_2 = 2,
        /* 0x03 */ FACE_MOT_UNK_3 = 3,
        /* 0x04 */ FACE_MOT_UNK_4 = 4,
        /* 0x05 */ FACE_MOT_UNK_5 = 5,
        /* 0x06 */ FACE_MOT_UNK_6 = 6,
        /* 0x07 */ FACE_MOT_UNK_7 = 7,
        /* 0x08 */ FACE_MOT_UNK_8 = 8,
    };

    enum Motion {
        /* 0x0 */ MOT_UNK_0 = 0,
        /* 0x1 */ MOT_UNK_1 = 1,
        /* 0x2 */ MOT_UNK_2 = 2,
        /* 0x3 */ MOT_UNK_3 = 3,
        /* 0x5 */ MOT_UNK_5 = 5,
        /* 0x6 */ MOT_UNK_6 = 6,
        /* 0x7 */ MOT_UNK_7 = 7,
        /* 0x8 */ MOT_UNK_8 = 8,
    };

    /* 80995F2C */ ~daNpc_clerkB_c();
    /* 80996090 */ int create();
    /* 80996338 */ int CreateHeap();
    /* 809967C4 */ int Delete();
    /* 809967F8 */ int Execute();
    /* 809968D0 */ int Draw();
    /* 80996964 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80996984 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 809969DC */ u8 getType();
    /* 809969FC */ int beforeStartSeqAction(dMsgFlow_c*, int);
    /* 80996CCC */ int beforeSelectSeqAction(dMsgFlow_c*, int);
    /* 80996F7C */ int isDelete();
    /* 80996FAC */ void reset();
    /* 809970E0 */ void afterJntAnm(int);
    /* 80997188 */ void setParam();
    /* 809972BC */ void setAfterTalkMotion();
    /* 80997360 */ void srchActors();
    /* 809973BC */ BOOL evtTalk();
    /* 80997598 */ BOOL evtCutProc();
    /* 80997660 */ void action();
    /* 8099774C */ void beforeMove();
    /* 809977C4 */ void setAttnPos();
    /* 80997A1C */ void setCollision();
    /* 80997B50 */ int drawDbgInfo();
    /* 80997B58 */ void drawOtherMdl();
    /* 80997BB8 */ void drawGhost();
    /* 80997C44 */ int selectAction();
    /* 80997CC0 */ int chkAction(int (daNpc_clerkB_c::*)(void*));
    /* 80997CEC */ int setAction(int (daNpc_clerkB_c::*)(void*));
    /* 80997D94 */ void setSe();
    /* 80997E54 */ int wait(void*);
    /* 809980AC */ int tend(void*);
    /* 80998328 */ int talk(void*);
    /* 80998520 */ int shop(void*);
    /* 80999680 */ daNpc_clerkB_c(
        daNpcT_faceMotionAnmData_c const* i_faceMotionAnmData,
        daNpcT_motionAnmData_c const* i_motionAnmData,
        daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_faceMotionSequenceData,
        int i_faceMotionStepNum,
        daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_motionSequenceData, int i_motionStepNum,
        daNpcT_evtData_c const* i_evtData, char** i_arcNames)
        : dShopSystem_c(i_faceMotionAnmData, i_motionAnmData, i_faceMotionSequenceData,
                        i_faceMotionStepNum, i_motionSequenceData, i_motionStepNum, i_evtData,
                        i_arcNames) {}
    /* 809997AC */ u16 getEyeballMaterialNo() { return 3; }
    /* 809997B4 */ s32 getHeadJointNo() { return 4; }
    /* 809997BC */ s32 getNeckJointNo() { return 3; }
    /* 809997C4 */ s32 getBackboneJointNo() { return 1; }
    /* 809997CC */ BOOL checkChangeJoint(int i_joint) { return i_joint == 4; }
    /* 809997DC */ BOOL checkRemoveJoint(int i_joint) { return i_joint == 9; }

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

    u8 getMaxNumItem() { return (fopAcM_GetParam(this) & 0xF000000) >> 24; }

    static char* mCutNameList[1];
    static cutFunc mCutList[1];

private:
    /* 0x0F7C */ mDoExt_bpkAnm mBpkAnm2;
    /* 0x0F7C */ NPC_CLERKB_HIO_CLASS* mpHIO;
    /* 0x0F98 */ dCcD_Cyl mCyl;
    /* 0x10D4 */ u8 mType;
    /* 0x10D8 */ daNpcT_ActorMngr_c mActorMngr[1];
    /* 0x10E0 */ actionFunc mNextAction;
    /* 0x10EC */ actionFunc mAction;
    /* 0x10F8 */ csXyz field_0x10f8;
    /* 0x1100 */ int mShopProcess;
    /* 0x1104 */ int field_0x1104;
    /* 0x1108 */ f32 field_0x1108;
    /* 0x110C */ u8 field_0x110c;
    /* 0x110D */ u8 field_0x110d;
    /* 0x110E */ u8 field_0x110e;
    /* 0x110F */ u8 field_0x110f;
    /* 0x1110 */ u8 field_0x1110;
    /* 0x1111 */ u8 mShopFlag;
    /* 0x1112 */ u8 field_0x1112[0x1114 - 0x1112];
    /* 0x1114 */ u8 field_0x1114;
};

STATIC_ASSERT(sizeof(daNpc_clerkB_c) == 0x1118);

#endif /* D_A_NPC_CLERKB_H */
