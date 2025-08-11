#ifndef D_A_NPC_KOLINB_H
#define D_A_NPC_KOLINB_H

#include "d/actor/d_a_npc.h"
#include "d/d_bg_w.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Kolinb_c
 * @brief Colin (Bedridden) / Ralis (Bedridden)
 *
 * @details
 *
*/

struct daNpc_Kolinb_HIOParam {
    /* 0x00 */ daNpcT_HIOParam common;
};

class daNpc_Kolinb_Param_c {
public:
    /* 80A486A4 */ virtual ~daNpc_Kolinb_Param_c() {}

    static daNpc_Kolinb_HIOParam const m;
};

class daNpc_Kolinb_c : public daNpcT_c {
public:
    enum Joint {
        /* 0x00 */ KOLINB_JNT_CENTER,
        /* 0x01 */ KOLINB_JNT_BED_ROOT,
        /* 0x02 */ KOLINB_JNT_MAT,
        /* 0x03 */ KOLINB_JNT_KOLIN_CENTER,
        /* 0x04 */ KOLINB_JNT_BACKBONE1,
        /* 0x05 */ KOLINB_JNT_BACKBONE2,
        /* 0x06 */ KOLINB_JNT_NECK,
        /* 0x07 */ KOLINB_JNT_HEAD,
        /* 0x08 */ KOLINB_JNT_CHIN,
        /* 0x09 */ KOLINB_JNT_MAYUL,
        /* 0x0A */ KOLINB_JNT_MAYUR,
        /* 0x0B */ KOLINB_JNT_MOUTH,
        /* 0x0C */ KOLINB_JNT_SHOULDERL,
        /* 0x0D */ KOLINB_JNT_ARML1,
        /* 0x0E */ KOLINB_JNT_ARML2,
        /* 0x0F */ KOLINB_JNT_HANDL,
        /* 0x10 */ KOLINB_JNT_FINGERL,
        /* 0x11 */ KOLINB_JNT_SHOULDERR,
        /* 0x12 */ KOLINB_JNT_ARMR1,
        /* 0x13 */ KOLINB_JNT_ARMR2,
        /* 0x14 */ KOLINB_JNT_HANDR,
        /* 0x15 */ KOLINB_JNT_FINGERR,
        /* 0x16 */ KOLINB_JNT_CLOTH_ROOT,
        /* 0x17 */ KOLINB_JNT_CLOTH,
        /* 0x18 */ KOLINB_JNT_WAIST,
        /* 0x19 */ KOLINB_JNT_PILLOW_ROOT,
        /* 0x1A */ KOLINB_JNT_PILLOW,

        /* 0x00 */ ZRCB_JNT_CENTER = 0x0,
        /* 0x01 */ ZRCB_JNT_BED_ROOT,
        /* 0x02 */ ZRCB_JNT_ZRC_CENTER,
        /* 0x03 */ ZRCB_JNT_BACKBONE1,
        /* 0x04 */ ZRCB_JNT_BACKBONE2,
        /* 0x05 */ ZRCB_JNT_NECK,
        /* 0x06 */ ZRCB_JNT_HEAD,
        /* 0x07 */ ZRCB_JNT_H_TAIL1,
        /* 0x08 */ ZRCB_JNT_H_TAIL2,
        /* 0x09 */ ZRCB_JNT_H_TAIL3,
        /* 0x0A */ ZRCB_JNT_CHIN,
        /* 0x0B */ ZRCB_JNT_EARL1,
        /* 0x0C */ ZRCB_JNT_EARL2,
        /* 0x0D */ ZRCB_JNT_EARR1,
        /* 0x0E */ ZRCB_JNT_EARR2,
        /* 0x0F */ ZRCB_JNT_MOUTH,
        /* 0x10 */ ZRCB_JNT_SHOULDERL,
        /* 0x11 */ ZRCB_JNT_ARML1,
        /* 0x12 */ ZRCB_JNT_SHOULDERR,
        /* 0x13 */ ZRCB_JNT_ARMR1,
        /* 0x14 */ ZRCB_JNT_CLOTH_ROOT,
        /* 0x15 */ ZRCB_JNT_CLOTH,
    };

    typedef int (daNpc_Kolinb_c::*cutFunc)(int);
    typedef int (daNpc_Kolinb_c::*actionFunc)(void*);

    /* 80A4598C */ ~daNpc_Kolinb_c();
    /* 80A45ADC */ cPhs__Step create();
    /* 80A45DC4 */ int CreateHeap();
    /* 80A4603C */ int Delete();
    /* 80A46070 */ int Execute();
    /* 80A46090 */ int Draw();
    /* 80A46124 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80A46144 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80A4619C */ u8 getType();
    /* 80A461E8 */ BOOL isDelete();
    /* 80A462C8 */ void reset();
    /* 80A46420 */ void setParam();
    /* 80A4651C */ BOOL checkChangeEvt();
    /* 80A465D0 */ void setAfterTalkMotion();
    /* 80A46630 */ void srchActors();
    /* 80A46634 */ BOOL evtTalk();
    /* 80A466D4 */ BOOL evtCutProc();
    /* 80A4679C */ void action();
    /* 80A46824 */ void beforeMove();
    /* 80A468E8 */ void setAttnPos();
    /* 80A46A4C */ void setCollision();
    /* 80A46A9C */ int drawDbgInfo();
    /* 80A46AA4 */ int selectAction();
    /* 80A46AEC */ BOOL chkAction(actionFunc);
    /* 80A46B18 */ int setAction(actionFunc);
    /* 80A46BC0 */ int cutConversationInHotel(int);
    /* 80A46C48 */ int cutConversationAboutDeathMt(int);
    /* 80A46EE4 */ int cutConversationAboutGoron(int);
    /* 80A47180 */ int cutNurse(int);
    /* 80A472EC */ int cutClothTry(int);
    /* 80A4738C */ int cutThankYou(int);
    /* 80A4742C */ int wait(void*);
    /* 80A475D4 */ int talk(void*);
#if DEBUG
    int test(void*);
#endif
    /* 80A4854C */ daNpc_Kolinb_c(
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
    /* 80A4860C */ s32 getHeadJointNo() { return mType == 2 ? ZRCB_JNT_HEAD : KOLINB_JNT_HEAD; }
    /* 80A48624 */ BOOL checkChangeJoint(int i_joint) { return i_joint == ((mType == 2 ? ZRCB_JNT_H_TAIL1 : KOLINB_JNT_CHIN) - 1); }
    /* 80A4864C */ BOOL checkRemoveJoint(int i_joint) { return i_joint == ((mType == 2 ? ZRCB_JNT_MOUTH : KOLINB_JNT_MOUTH) - 1); }
    /* 80A48674 */ s32 getBackboneJointNo() { return mType == 2 ? ZRCB_JNT_BACKBONE1 : KOLINB_JNT_BACKBONE1; }
    /* 80A4868C */ s32 getNeckJointNo() { return mType == 2 ? ZRCB_JNT_NECK : KOLINB_JNT_NECK; }

    static char* mCutNameList[7];
    static cutFunc mCutList[7];

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

    u32 getModelType() { return fopAcM_GetParam(this) >> 28; }

private:
    /* 0xE40 */ u8 field_0xe40[0xe44 - 0xe40];
    /* 0xE44 */ dCcD_Cyl field_0xe44;
    /* 0xF80 */ Mtx mMtx;
    /* 0xFB0 */ dBgW* mpBgW;
    /* 0xFB4 */ u8 mType;
    /* 0xFB8 */ actionFunc mNextAction;
    /* 0xFC4 */ actionFunc mAction;
    /* 0xFD0 */ daNpcT_Path_c mPath;
    /* 0xFF8 */ u8 field_0xff8;
};

STATIC_ASSERT(sizeof(daNpc_Kolinb_c) == 0xffc);

#endif /* D_A_NPC_KOLINB_H */
