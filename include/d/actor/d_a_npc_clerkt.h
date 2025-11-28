#ifndef D_A_NPC_CLERKT_H
#define D_A_NPC_CLERKT_H

#include "d/actor/d_a_npc.h"
#include "d/d_shop_system.h"

struct daNpcClerkt_HIOParam {
    /* 0x00 */ daNpcT_HIOParam common;
};

class daNpcClerkt_Param_c {
public:
    /* 80B2CD94 */ virtual ~daNpcClerkt_Param_c() {}

    static const daNpcClerkt_HIOParam m;
};

#if DEBUG
class daNpcClerkt_HIO_c : public mDoHIO_entry_c {
public:
    daNpcClerkt_HIO_c();

    void listenPropertyEvent(const JORPropertyEvent*);
    void genMessage(JORMContext*);

    daNpcClerkt_HIOParam m;
};

#define NPC_CLERKT_HIO_CLASS daNpcClerkt_HIO_c
#else
#define NPC_CLERKT_HIO_CLASS daNpcClerkt_Param_c
#endif

/**
 * @ingroup actors-npcs
 * @class daNpcClerkT_c
 * @brief Ooccaa (City in the Sky Shop)
 *
 * @details
 *
 */
class daNpcClerkT_c : public dShopSystem_c {
public:
    typedef int (daNpcClerkT_c::*cutFunc)(int);
    typedef int (daNpcClerkT_c::*actionFunc)(void*);

    enum Type {
        TYPE_SHOP,
        TYPE_1,
    };

    enum FaceMotion {
        /* 0x01 */ FACE_MOT_UNK_1 = 1,
    };

    enum Motion {
        /* 0x0 */ MOT_UNK_0,
    };

    /* 8099A14C */ ~daNpcClerkT_c();
    /* 8099A28C */ int create();
    /* 8099A530 */ int CreateHeap();
    /* 8099A96C */ int Delete();
    /* 8099A9A0 */ int Execute();
    /* 8099AA80 */ int Draw();
    /* 8099AB14 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 8099AB34 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 8099AB8C */ int isDelete();
    /* 8099ABBC */ void reset();
    /* 8099ACF0 */ void afterJntAnm(int);
    /* 8099AD74 */ BOOL evtTalk();
    /* 8099AF18 */ BOOL evtCutProc();
    /* 8099AFE0 */ void action();
    /* 8099B0CC */ int drawDbgInfo();
    /* 8099B0D4 */ void drawOtherMdl();
    /* 8099B134 */ int selectAction();
    /* 8099B1B0 */ int chkAction(int (daNpcClerkT_c::*)(void*));
    /* 8099B1DC */ int setAction(int (daNpcClerkT_c::*)(void*));
    /* 8099B284 */ int wait(void*);
    /* 8099B4DC */ int tend(void*);
    /* 8099B60C */ int talk(void*);
    /* 8099B804 */ int shop(void*);
    /* 8099BCE8 */ inline void setParam();
    /* 8099BE48 */ inline void setAfterTalkMotion();
    /* 8099BEA8 */ inline void beforeMove();
    /* 8099BF20 */ inline void setAttnPos();
    /* 8099C1A0 */ inline void setCollision();
    /* 8099CF9C */ daNpcClerkT_c(
        daNpcT_faceMotionAnmData_c const* i_faceMotionAnmData,
        daNpcT_motionAnmData_c const* i_motionAnmData,
        daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_faceMotionSequenceData,
        int i_faceMotionStepNum,
        daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_motionSequenceData, int i_motionStepNum,
        daNpcT_evtData_c const* i_evtData, char** i_arcNames)
        : dShopSystem_c(i_faceMotionAnmData, i_motionAnmData, i_faceMotionSequenceData,
                        i_faceMotionStepNum, i_motionSequenceData, i_motionStepNum, i_evtData,
                        i_arcNames) {}
    /* 8099D068 */ u16 getEyeballMaterialNo() { return 2; }
    /* 8099D070 */ BOOL checkChangeJoint(int i_joint) { return i_joint == 17; }
    /* 8099D080 */ BOOL checkRemoveJoint(int i_joint) { return i_joint == 19; }
    /* 8099D090 */ s32 getBackboneJointNo() { return 15; }
    /* 8099D098 */ s32 getNeckJointNo() { return 16; }
    /* 8099D0A0 */ s32 getHeadJointNo() { return 17; }

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

    void srchActors() {
        switch (mType) {
        case TYPE_SHOP:
            if (mActorMngr[0].getActorP() == NULL) {
                mActorMngr[0].entry(getShopItemTagP());
            }
            break;
        }
    }

    static char* mCutNameList[1];
    static cutFunc mCutList[1];

private:
    /* 0x0F7C */ NPC_CLERKT_HIO_CLASS* mpHIO;
    /* 0x0F80 */ dCcD_Cyl mCyl;
    /* 0x10BC */ u8 mType;
    /* 0x10C0 */ daNpcT_ActorMngr_c mActorMngr[1];
    /* 0x10C8 */ actionFunc mNextAction;
    /* 0x10D4 */ actionFunc mAction;
    /* 0x10E0 */ int mShopProcess;
    /* 0x10E4 */ int field_0x10e4;
    /* 0x10E8 */ u8 field_0x10e8;
    /* 0x10E9 */ u8 field_0x10e9;
    /* 0x10EA */ u8 mShopFlag;
    /* 0x10EB */ u8 field_0x10eb;
    /* 0x10EC */ int field_0x10ec;
};

STATIC_ASSERT(sizeof(daNpcClerkT_c) == 0x10f0);

#endif /* D_A_NPC_CLERKT_H */
