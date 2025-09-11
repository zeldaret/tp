#ifndef D_A_NPC_RACA_H
#define D_A_NPC_RACA_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Raca_c
 * @brief Falbi
 *
 * @details
 *
*/

struct daNpc_Raca_HIOParam {
    /* 0x0 */ daNpcT_HIOParam common;
};

class daNpc_Raca_HIO_c : public mDoHIO_entry_c {
    /* 0x8 */ daNpc_Raca_HIOParam param;
};

class daNpc_Raca_Param_c {
public:
    /* 80AB8DFC */ virtual ~daNpc_Raca_Param_c() {}

    static daNpc_Raca_HIOParam const m;
};

class daNpc_Raca_c : public daNpcT_c {
public:
    enum Material {
        /* 0x0 */ SC_EYE,
        /* 0x1 */ RACA_BODY_M,
        /* 0x2 */ RACA_EYEBALL_M,
        /* 0x3 */ RACA_FACE_M,
    };

    enum Joint {
        /* 0x00 */ JNT_CENTER,
        /* 0x01 */ JNT_BACKBONE1,
        /* 0x02 */ JNT_BACKBONE2,
        /* 0x03 */ JNT_NECK,
        /* 0x04 */ JNT_HEAD,
        /* 0x05 */ JNT_CHIN,
        /* 0x06 */ JNT_MAYU_L,
        /* 0x07 */ JNT_MAYU_R,
        /* 0x08 */ JNT_MOUTH,
        /* 0x09 */ JNT_SHOULDERL,
        /* 0x0A */ JNT_ARML1,
        /* 0x0B */ JNT_ARML2,
        /* 0x0C */ JNT_HANDL,
        /* 0x0D */ JNT_FINGERL,
        /* 0x0E */ JNT_THUMBL,
        /* 0x0F */ JNT_SHOULDERR,
        /* 0x10 */ JNT_ARMR1,
        /* 0x11 */ JNT_ARMR2,
        /* 0x12 */ JNT_HANDR,
        /* 0x13 */ JNT_FINGERR,
        /* 0x14 */ JNT_THUMBR,
        /* 0x15 */ JNT_WAIST,
        /* 0x16 */ JNT_LEGL1,
        /* 0x17 */ JNT_LEGL2,
        /* 0x18 */ JNT_FOOTL,
        /* 0x19 */ JNT_LEGR1,
        /* 0x1A */ JNT_LEGR2,
        /* 0x1B */ JNT_FOOTR,
    }; 

    typedef int (daNpc_Raca_c::*actionFunc)(void*);
    typedef int (daNpc_Raca_c::*cutFunc)(int);

    /* 80AB5CAC */ ~daNpc_Raca_c();
    /* 80AB5DFC */ cPhs__Step create();
    /* 80AB60B8 */ int CreateHeap();
    /* 80AB6514 */ int Delete();
    /* 80AB6548 */ int Execute();
    /* 80AB6568 */ int Draw();
    /* 80AB65FC */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80AB661C */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80AB6674 */ static void* srchNi(void*, void*);
    /* 80AB6700 */ fopAc_ac_c* getNiP();
    /* 80AB67CC */ u8 getType();
    /* 80AB67EC */ BOOL isDelete();
    /* 80AB681C */ void reset();
    /* 80AB6984 */ void afterJntAnm(int);
    /* 80AB6A10 */ void setParam();
    /* 80AB6B0C */ void setAfterTalkMotion();
    /* 80AB6BB0 */ void srchActors();
    /* 80AB6C14 */ BOOL evtTalk();
    /* 80AB6D14 */ BOOL evtCutProc();
    /* 80AB6DDC */ void action();
    /* 80AB6EC8 */ void beforeMove();
    /* 80AB6F40 */ void setAttnPos();
    /* 80AB7180 */ void setCollision();
    /* 80AB72B4 */ int drawDbgInfo();
    /* 80AB72BC */ BOOL selectAction();
    /* 80AB73B0 */ BOOL chkAction(actionFunc);
    /* 80AB73DC */ BOOL setAction(actionFunc);
    /* 80AB7484 */ int wait(void*);
    /* 80AB7710 */ int walk(void*);
    /* 80AB7918 */ int talk(void*);
    /* 80AB8CCC */ daNpc_Raca_c(
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
    /* 80AB8DAC */ u16 getEyeballMaterialNo() { return RACA_EYEBALL_M; }
    /* 80AB8DB4 */ s32 getHeadJointNo() { return JNT_HEAD; }
    /* 80AB8DBC */ s32 getNeckJointNo() { return JNT_NECK; }
    /* 80AB8DC4 */ s32 getBackboneJointNo() { return JNT_BACKBONE1; }
    /* 80AB8DCC */ BOOL checkChangeJoint(int i_joint) { return i_joint == JNT_HEAD; }
    /* 80AB8DDC */ BOOL checkRemoveJoint(int i_joint) { return i_joint == JNT_MOUTH; }
    /* 80AB8DEC */ s32 getFootLJointNo() { return JNT_FOOTL; }
    /* 80AB8DF4 */ s32 getFootRJointNo() { return JNT_FOOTR; }

    int getFlowNodeNo() {
        u16 nodeNo = home.angle.x;
        if (nodeNo == 0xffff) {
            return -1;
        }

        return nodeNo;
    }
    u8 getPathID() { return (fopAcM_GetParam(this) & 0xFF00) >> 8; }
    u8 getBitSW() { return (fopAcM_GetParam(this) & 0xFF0000) >> 16; }

    static char* mCutNameList;
    static cutFunc mCutList[1];

private:
    /* 0xE40 */ daNpc_Raca_HIO_c* mHIO;
    /* 0xE44 */ dCcD_Cyl mCyl;
    /* 0xF80 */ u8 mType;
    /* 0xF84 */ daNpcT_ActorMngr_c mActorMngr[1];
    /* 0xF8C */ actionFunc mPrevAction;
    /* 0xF98 */ actionFunc mAction;
    /* 0xFA4 */ daNpcT_Path_c mPath;
    /* 0xFCC */ bool field_0xfcc;
    /* 0xFCD */ u8 field_0xfcd[0xfd0 - 0xfcd];
    /* 0xFD0 */ u8 field_0xfd0;
};

STATIC_ASSERT(sizeof(daNpc_Raca_c) == 0xfd4);

#endif /* D_A_NPC_RACA_H */
