#ifndef D_A_NPC_LEN_H
#define D_A_NPC_LEN_H

#include "d/actor/d_a_npc.h"

struct daNpc_Len_HIOParam {
    /* 0x00 */ daNpcT_HIOParam common;
    /* 0x8C */ s16 field_0x8c;
    /* 0x8E */ s16 field_0x8e;
    /* 0x90 */ f32 field_0x90;
};

class daNpc_Len_Param_c {
public:
    /* 80A68E38 */ virtual ~daNpc_Len_Param_c() {}

    static const daNpc_Len_HIOParam m;
};

#if DEBUG
class daNpc_Len_HIO_c : public mDoHIO_entry_c {
public:
    daNpc_Len_HIO_c();

    void listenPropertyEvent(const JORPropertyEvent*);
    void genMessage(JORMContext*);

    daNpc_Len_HIOParam m;
};

#define NPC_LEN_HIO_CLASS daNpc_Len_HIO_c
#else
#define NPC_LEN_HIO_CLASS daNpc_Len_Param_c
#endif

/**
 * @ingroup actors-npcs
 * @class daNpc_Len_c
 * @brief Renado
 *
 * @details
 *
 */

class daNpc_Len_c : public daNpcT_c {
public:
    typedef int (daNpc_Len_c::*actionFunc)(void*);
    typedef int (daNpc_Len_c::*cutFunc)(int);

    /* 80A6432C */ ~daNpc_Len_c();
    /* 80A64478 */ int create();
    /* 80A64740 */ int CreateHeap();
    /* 80A64BE0 */ int Delete();
    /* 80A64C14 */ int Execute();
    /* 80A64C34 */ int Draw();
    /* 80A64CC8 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80A64CE8 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80A64D40 */ u8 getType();
    /* 80A64DB8 */ BOOL isDelete();
    /* 80A64FBC */ void reset();
    /* 80A6516C */ void afterJntAnm(int);
    /* 80A65278 */ void setParam();
    /* 80A6546C */ BOOL checkChangeEvt();
    /* 80A6556C */ void setAfterTalkMotion();
    /* 80A65624 */ void srchActors();
    /* 80A65710 */ BOOL evtTalk();
    /* 80A657B0 */ BOOL evtCutProc();
    /* 80A65878 */ void action();
    /* 80A65A60 */ void beforeMove();
    /* 80A65B24 */ void setAttnPos();
    /* 80A65E28 */ void setCollision();
    /* 80A65F80 */ int drawDbgInfo();
    /* 80A65F88 */ int selectAction();
    /* 80A66004 */ BOOL chkAction(actionFunc);
    /* 80A66030 */ int setAction(actionFunc);
    /* 80A660D8 */ BOOL checkStartDemo13StbEvt(fopAc_ac_c*, f32, f32, f32, f32, f32, f32, f32);
    /* 80A661B4 */ int cutConversationInHotel(int);
    /* 80A66664 */ int cutHurry(int);
    /* 80A668B8 */ int cutTakeWoodStatue(int);
    /* 80A66C74 */ int wait(void*);
    /* 80A6736C */ int patrol(void*);
    /* 80A67794 */ int talk(void*);
    /* 80A68D00 */ daNpc_Len_c(
        daNpcT_faceMotionAnmData_c const* i_faceMotionAnmData,
        daNpcT_motionAnmData_c const* i_motionAnmData,
        daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_faceMotionSequenceData,
        int i_faceMotionStepNum,
        daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_motionSequenceData, int i_motionStepNum,
        daNpcT_evtData_c const* i_evtData, char** i_arcNames)
        : daNpcT_c(i_faceMotionAnmData, i_motionAnmData, i_faceMotionSequenceData,
                   i_faceMotionStepNum, i_motionSequenceData, i_motionStepNum, i_evtData,
                   i_arcNames) {}
    /* 80A68DE0 */ u16 getEyeballMaterialNo() { return 1; }
    /* 80A68DE8 */ s32 getHeadJointNo() { return 4; }
    /* 80A68DF0 */ s32 getNeckJointNo() { return 3; }
    /* 80A68DF8 */ s32 getBackboneJointNo() { return 1; }
    /* 80A68E00 */ BOOL checkChangeJoint(int i_joint) { return i_joint == 4; }
    /* 80A68E10 */ BOOL checkRemoveJoint(int i_joint) { return i_joint == 9; }
    /* 80A68E20 */ s32 getFootLJointNo() { return 29; }
    /* 80A68E28 */ s32 getFootRJointNo() { return 32; }
    /* 80A68E30 */ BOOL chkXYItems() { return TRUE; }

    static char* mCutNameList[4];
    static cutFunc mCutList[4];

    int getFlowNodeNo() {
        u16 nodeNo = home.angle.x;
        if (nodeNo == 0xffff) {
            return -1;
        }
        return nodeNo;
    }
    u8 getPathID() { return (fopAcM_GetParam(this) & 0xFF00) >> 8; }
    u8 getBitSW() { return (fopAcM_GetParam(this) & 0xff0000) >> 16; }

private:
    /* 0xE40 */ NPC_LEN_HIO_CLASS* mpHIO;
    /* 0xE44 */ dCcD_Cyl mCyl;
    /* 0xF80 */ u8 mType;
    /* 0xF84 */ daNpcT_ActorMngr_c mActorMngr[4];
    /* 0xFA4 */ daNpcT_Path_c mPath;
    /* 0xFCC */ actionFunc field_0xfcc;
    /* 0xFD8 */ actionFunc mAction;
    /* 0xFE4 */ int field_0xfe4;
    /* 0xFE8 */ int field_0xfe8;
    /* 0xFEC */ u8 field_0xfec;
    /* 0xFED */ u8 field_0xfed;
    /* 0xFEE */ u8 field_0xfee;
    /* 0xFF0 */ int field_0xff0;
};

STATIC_ASSERT(sizeof(daNpc_Len_c) == 0xff4);

#endif /* D_A_NPC_LEN_H */
