#ifndef D_A_NPC_DOC_H
#define D_A_NPC_DOC_H

#include "d/actor/d_a_npc.h"

struct daNpc_Doc_HIOParam {
    /* 0x00 */ daNpcT_HIOParam common;
    /* 0x8C */ f32 field_0x8c;
};

class daNpc_Doc_Param_c {
public:
    /* 809AA2B0 */ virtual ~daNpc_Doc_Param_c() {}

    static const daNpc_Doc_HIOParam m;
};

#if DEBUG
class daNpc_Doc_HIO_c : public mDoHIO_entry_c {
public:
    daNpc_Doc_HIO_c();
    void listenPropertyEvent(const JORPropertyEvent*);
    void genMessage(JORMContext*);

    /* 0x4 */ daNpc_Doc_HIOParam m;
};

#define NPC_DOC_HIO_CLASS daNpc_Doc_HIO_c
#else
#define NPC_DOC_HIO_CLASS daNpc_Doc_Param_c
#endif

/**
 * @ingroup actors-npcs
 * @class daNpc_Doc_c
 * @brief Dr. Borville
 *
 * @details
 *
 */
class daNpc_Doc_c : public daNpcT_c {
public:
    typedef int (daNpc_Doc_c::*actionFunc)(int);
    typedef int (daNpc_Doc_c::*cutFunc)(int);

    /* 809A6C8C */ virtual ~daNpc_Doc_c();
    /* 809A6DC0 */ int create();
    /* 809A7088 */ int CreateHeap();
    /* 809A74C8 */ int Delete();
    /* 809A74FC */ int Execute();
    /* 809A751C */ int Draw();
    /* 809A75B0 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 809A75D0 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 809A7628 */ int getType();
    /* 809A7660 */ int isDelete();
    /* 809A7694 */ void reset();
    /* 809A7C3C */ void srchActors();
    /* 809A8538 */ BOOL selectAction();
    /* 809A8620 */ int chkAction(int (daNpc_Doc_c::*)(void*));
    /* 809A864C */ int setAction(int (daNpc_Doc_c::*)(void*));
    /* 809A86F4 */ int wait(void*);
    /* 809A8A9C */ int walk(void*);
    /* 809A8C78 */ int talk(void*);
    /* 809AA18C */ daNpc_Doc_c(daNpcT_faceMotionAnmData_c const* i_faceMotionAnmData,
        daNpcT_motionAnmData_c const* i_motionAnmData,
        daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_faceMotionSequenceData,
        int i_faceMotionStepNum,
        daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_motionSequenceData, int i_motionStepNum,
        daNpcT_evtData_c const* i_evtData, char** i_arcNames)
        : daNpcT_c(i_faceMotionAnmData, i_motionAnmData, i_faceMotionSequenceData,
                   i_faceMotionStepNum, i_motionSequenceData, i_motionStepNum, i_evtData,
                   i_arcNames)
        {
            OS_REPORT("|%06d:%x|daNpc_Doc_c -> コンストラクト\n", g_Counter.mCounter0, this);
        }

    #if DEBUG
    int test(void*);
    #endif
    
    /* 809AA26C */ BOOL checkChangeJoint(int i_jointNo) { return i_jointNo == 4; }
    /* 809AA27C */ BOOL checkRemoveJoint(int i_jointNo) { return i_jointNo == 8; }
    /* 809AA264 */ s32 getBackboneJointNo() { return 1; }
    /* 809AA25C */ s32 getNeckJointNo() { return 3; }
    /* 809AA254 */ s32 getHeadJointNo() { return 4; }
    /* 809AA28C */ s32 getFootLJointNo() { return 24; }
    /* 809AA294 */ s32 getFootRJointNo() { return 27; }
    /* 809AA24C */ u16 getEyeballMaterialNo() { return 4; }
    /* 809A7918 */ void afterJntAnm(int);
    /* 809A79A4 */ void setParam();
    /* 809A7ABC */ BOOL checkChangeEvt();
    /* 809A7C40 */ BOOL evtTalk();
    /* 809A7CE0 */ BOOL evtCutProc();
    /* 809A7BC4 */ void setAfterTalkMotion();
    /* 809A7DA8 */ void action();
    /* 809A7F3C */ void beforeMove();
    /* 809A80B8 */ void setAttnPos();
    /* 809A83A8 */ void setCollision();
    /* 809AA29C */ BOOL chkXYItems() { return mType == 1; }
    /* 809A8530 */ BOOL drawDbgInfo();

    int getFlowNodeNo() {
        u16 nodeNo = home.angle.x;
        return nodeNo == 0xFFFF ? -1 : nodeNo;
    }

    int getOffHour() {
        u16 var_r31 = (u16)home.angle.z;
        var_r31 &= (u16)0x3E0;
        var_r31 = var_r31 >> 5;

        if (var_r31 < 24) {
            return var_r31;
        }

        return -1;
    }

    int getOnHour() {
        u16 var_r31 = (u16)home.angle.z;
        var_r31 &= (u16)0x1F;

        if (var_r31 < 24) {
            return var_r31;
        }

        return -1;
    }

    u8 getBitSW() {
        return (fopAcM_GetParam(this) & 0xFF0000) >> 16;
    }

    u8 getPathID() {
        return (fopAcM_GetParam(this) & 0xFF00) >> 8;
    }

    static char* mCutNameList[1];
    static cutFunc mCutList[1];

private:
    /* 0xE40 */ NPC_DOC_HIO_CLASS* mpHIO;
    /* 0xE44 */ dCcD_Cyl mCyl;
    /* 0xF80 */ u8 mType;
    /* 0xF84 */ daNpcT_Path_c mPath;
    /* 0xFAC */ int (daNpc_Doc_c::*field_0xfac)(void*);
    /* 0xFB8 */ int (daNpc_Doc_c::*mAction)(void*);
    /* 0xFC4 */ u8 field_0xfc4;
    /* 0xFC5 */ u8 field_0xfc5;
    /* 0xFC6 */ u8 field_0xfc6;
    /* 0xFC7 */ u8 field_0xfc7;
    /* 0xFC8 */ u8 field_0xfc8;
};

STATIC_ASSERT(sizeof(daNpc_Doc_c) == 0xfcc);

#endif /* D_A_NPC_DOC_H */
