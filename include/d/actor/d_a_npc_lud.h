#ifndef D_A_NPC_LUD_H
#define D_A_NPC_LUD_H

#include "d/actor/d_a_npc.h"

struct daNpc_Lud_HIOParam {
    /* 0x00 */ daNpcT_HIOParam common;
    /* 0x8C */ f32 play_speed;
};

class daNpc_Lud_Param_c {
public:
    /* 80A6FD10 */ virtual ~daNpc_Lud_Param_c() {}

    static const daNpc_Lud_HIOParam m;
};

#if DEBUG
class daNpc_Lud_HIO_c : public mDoHIO_entry_c {
public:
    daNpc_Lud_HIO_c();

    void listenPropertyEvent(const JORPropertyEvent*);
    void genMessage(JORMContext*);

    daNpc_Lud_HIOParam m;
};

#define NPC_LUD_HIO_CLASS daNpc_Lud_HIO_c
#else
#define NPC_LUD_HIO_CLASS daNpc_Lud_Param_c
#endif

/**
 * @ingroup actors-npcs
 * @class daNpc_Lud_c
 * @brief Luda
 *
 * @details
 *
 */
class daNpc_Lud_c : public daNpcT_c {
public:
    typedef int (daNpc_Lud_c::*actionFunc)(void*);
    typedef int (daNpc_Lud_c::*cutFunc)(int);

    /* 80A6ABAC */ ~daNpc_Lud_c();
    /* 80A6ACF4 */ int create();
    /* 80A6AFA8 */ int CreateHeap();
    /* 80A6B5FC */ int Delete();
    /* 80A6B630 */ int Execute();
    /* 80A6B650 */ int Draw();
    /* 80A6B6E4 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80A6B704 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80A6B75C */ u8 getType();
    /* 80A6B7CC */ BOOL isDelete();
    /* 80A6B954 */ void reset();
    /* 80A6BB1C */ void afterJntAnm(int);
    /* 80A6BBA8 */ void setParam();
    /* 80A6BD44 */ BOOL checkChangeEvt();
    /* 80A6BE6C */ void setAfterTalkMotion();
    /* 80A6BEE4 */ void srchActors();
    /* 80A6BFA4 */ BOOL evtTalk();
    /* 80A6C044 */ BOOL evtCutProc();
    /* 80A6C10C */ void action();
    /* 80A6C2E4 */ void beforeMove();
    /* 80A6C3A8 */ void setAttnPos();
    /* 80A6C8EC */ void setCollision();
    /* 80A6CA9C */ int drawDbgInfo();
    /* 80A6CAA4 */ void drawOtherMdl();
    /* 80A6CC2C */ bool setBowlAnm(int, int, f32);
    /* 80A6CCFC */ bool afterSetMotionAnm(int, int, f32, int);
    /* 80A6CD30 */ int selectAction();
    /* 80A6CDF4 */ BOOL chkAction(actionFunc);
    /* 80A6CE20 */ int setAction(actionFunc);
    /* 80A6CEC8 */ void mop(int, int);
    /* 80A6D01C */ int cutHurry(int);
    /* 80A6D160 */ int cutConversationInHotel(int);
    /* 80A6D450 */ int cutConversationAboutDeathMt(int);
    /* 80A6D708 */ int cutConversationAboutGoron(int);
    /* 80A6D998 */ int cutNurse(int);
    /* 80A6DC48 */ int cutClothTry(int);
    /* 80A6DCE8 */ int cutThankYou(int);
    /* 80A6DE14 */ int wait(void*);
    /* 80A6E32C */ int nurse(void*);
    /* 80A6E6EC */ int giveSoup(void*);
    /* 80A6E7EC */ int talk(void*);
    /* 80A6FC04 */ daNpc_Lud_c(
        daNpcT_faceMotionAnmData_c const* i_faceMotionAnmData,
        daNpcT_motionAnmData_c const* i_motionAnmData,
        daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_faceMotionSequenceData,
        int i_faceMotionStepNum,
        daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_motionSequenceData, int i_motionStepNum,
        daNpcT_evtData_c const* i_evtData, char** i_arcNames)
        : daNpcT_c(i_faceMotionAnmData, i_motionAnmData, i_faceMotionSequenceData,
                   i_faceMotionStepNum, i_motionSequenceData, i_motionStepNum, i_evtData,
                   i_arcNames) {}
    /* 80A6FCD0 */ u16 getEyeballMaterialNo() { return 1; }
    /* 80A6FCD8 */ s32 getHeadJointNo() { return 4; }
    /* 80A6FCE0 */ s32 getNeckJointNo() { return 3; }
    /* 80A6FCE8 */ s32 getBackboneJointNo() { return 1; }
    /* 80A6FCF0 */ BOOL checkChangeJoint(int param_0) { return param_0 == 4; }
    /* 80A6FD00 */ BOOL checkRemoveJoint(int param_0) { return param_0 == 10; }

    int getFlowNodeNo() {
        u16 nodeNo = home.angle.x;
        if (nodeNo == 0xffff) {
            return -1;
        }
        return nodeNo;
    }
    u8 getBitSW() { return (fopAcM_GetParam(this) & 0xff0000) >> 16; }

    static char* mCutNameList[8];
    static cutFunc mCutList[8];

private:
    /* 0xE40 */ mDoExt_McaMorfSO* mpBowlMorf;
    /* 0xE44 */ NPC_LUD_HIO_CLASS* mpHIO;
    /* 0xE48 */ J3DModel* mpModel[2];
    /* 0xE50 */ dCcD_Cyl mCyl;
    /* 0xF8C */ u8 mType;
    /* 0xF90 */ daNpcT_ActorMngr_c mActorMngr[3];
    /* 0xFA8 */ actionFunc field_0xfa8;
    /* 0xFB4 */ actionFunc mAction;
    /* 0xFC0 */ int field_0xfc0;
    /* 0xFC4 */ int field_0xfc4;
    /* 0xFC8 */ int field_0xfc8;
    /* 0xFCC */ int field_0xfcc;
    /* 0xFD0 */ s16 field_0xfd0;
    /* 0xFD2 */ u8 field_0xfd2;
    /* 0xFD3 */ u8 field_0xfd3;
    /* 0xFD4 */ u8 field_0xfd4;
    /* 0xFD5 */ u8 field_0xfd5;
    /* 0xFD8 */ int field_0xfd8;
};

STATIC_ASSERT(sizeof(daNpc_Lud_c) == 0xfdc);

#endif /* D_A_NPC_LUD_H */
