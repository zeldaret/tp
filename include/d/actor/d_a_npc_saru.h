#ifndef D_A_NPC_SARU_H
#define D_A_NPC_SARU_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Saru_c
 * @brief Monkey NPC
 *
 * @details
 *
*/

struct daNpc_Saru_HIOParam {
    /* 0x00 */ daNpcT_HIOParam common;
    /* 0x8C */ s16 scared_time;          // 怯える時間       - Scared Time
    /* 0x8E */ s16 field_0x8e;
};

class daNpc_Saru_Param_c : public JORReflexible {
public:
    /* 80AC448C */ virtual ~daNpc_Saru_Param_c() {}

#ifdef DEBUG
    void genMessage(JORMContext*);
#endif

    static const daNpc_Saru_HIOParam m;
};

class daNpc_Saru_HIO_c : public mDoHIO_entry_c {
public:
    daNpc_Saru_HIOParam param;
};

class daNpc_Saru_c : public daNpcT_c {
public:
    typedef int (daNpc_Saru_c::*cutFunc)(int);
    typedef int (daNpc_Saru_c::*actionFunc)(void*);

    enum Type {
        TYPE_0,
        TYPE_1,
        TYPE_2,
        TYPE_3,
    };

    enum Joint {
        /* 0x00 */ JNT_CENTER,
        /* 0x01 */ JNT_BACKBONE_1,
        /* 0x02 */ JNT_BACKBONE_2,
        /* 0x03 */ JNT_NECK,
        /* 0x04 */ JNT_HEAD,
        /* 0x05 */ JNT_CHIN,
        /* 0x06 */ JNT_MOUTH,
        /* 0x07 */ JNT_SHOULDER_L,
        /* 0x08 */ JNT_ARM_L_1,
        /* 0x09 */ JNT_ARM_L_2,
        /* 0x0A */ JNT_HAND_L,
        /* 0x0B */ JNT_SHOULDER_R,
        /* 0x0C */ JNT_ARM_R_1,
        /* 0x0D */ JNT_ARM_R_2,
        /* 0x0E */ JNT_HAND_R,
        /* 0x0F */ JNT_WAIST,
        /* 0x10 */ JNT_LEG_L_1,
        /* 0x11 */ JNT_LEG_L_2,
        /* 0x12 */ JNT_FOOT_L,
        /* 0x13 */ JNT_LEG_R_1,
        /* 0x14 */ JNT_LEG_R_2,
        /* 0x15 */ JNT_FOOR_R,
    };

    /* 80AC042C */ ~daNpc_Saru_c();
    /* 80AC0578 */ int create();
    /* 80AC082C */ int CreateHeap();
    /* 80AC0A54 */ int Delete();
    /* 80AC0A88 */ int Execute();
    /* 80AC0AA8 */ int Draw();
    /* 80AC0AEC */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80AC0B0C */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80AC0B64 */ static void* srchYm(void*, void*);
    /* 80AC0C0C */ u8 getType();
    /* 80AC0C58 */ int isDelete();
    /* 80AC0CE8 */ void reset();
    /* 80AC0EA4 */ void afterJntAnm(int);
    /* 80AC0F28 */ BOOL checkChangeEvt();
    /* 80AC0FDC */ void setParam();
    /* 80AC1110 */ void setAfterTalkMotion();
    /* 80AC1170 */ void srchActors();
    /* 80AC11D4 */ BOOL evtTalk();
    /* 80AC1274 */ BOOL evtCutProc();
    /* 80AC133C */ void action();
    /* 80AC14E4 */ void beforeMove();
    /* 80AC15B4 */ void setAttnPos();
    /* 80AC18A0 */ void setCollision();
    /* 80AC1A20 */ int drawDbgInfo();
    /* 80AC1A28 */ void drawOtherMdl();
    /* 80AC1B30 */ int selectAction();
    /* 80AC1B78 */ BOOL chkAction(int (daNpc_Saru_c::*)(void*));
    /* 80AC1BA4 */ int setAction(int (daNpc_Saru_c::*)(void*));
    /* 80AC1C4C */ void setSe();
    /* 80AC216C */ int cutFindMonkey(int);
    /* 80AC2368 */ int cutHelpMe(int);
    /* 80AC2598 */ int cutYmLook(int);
    /* 80AC28A4 */ int wait(void*);
    /* 80AC2FD8 */ int talk(void*);
    /* 80AC4394 */ daNpc_Saru_c(daNpcT_faceMotionAnmData_c const* param_1, daNpcT_motionAnmData_c const* param_2,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_3, int param_4,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_5, int param_6,
                                daNpcT_evtData_c const* param_7, char** param_8) :
                                daNpcT_c(param_1, param_2, param_3, param_4, param_5, param_6, param_7, param_8)
                                {}
    /* 80AC4474 */ s32 getHeadJointNo() { return JNT_HEAD; }
    /* 80AC447C */ s32 getNeckJointNo() { return JNT_NECK; }
    /* 80AC4484 */ s32 getBackboneJointNo() { return JNT_BACKBONE_1; }

    u32 getFlowNodeNo() {
        u16 rv = home.angle.x;
        if (rv == 0xffff) {
            return -1;
        }
        return rv;
    }

    u8 getPathID() { return (fopAcM_GetParam(this) & 0xff0000) >> 16; }
    u8 getBitSW() { return (fopAcM_GetParam(this) & 0xff00) >> 8; }

    static char* mCutNameList[4];
    static cutFunc mCutList[4];
private:
    #ifdef DEBUG
    /* 0xE90 */ daNpc_Saru_HIO_c* field_0xe90;
    #endif
    /* 0xE40 */ u8 field_0xe40[0xe44 - 0xe40];
    /* 0xE44 */ J3DModel* mpRoseModels[2];
    /* 0xE4C */ dCcD_Cyl field_0xe4c;
    /* 0xF88 */ u8 mType;
    /* 0xF8C */ daNpcT_ActorMngr_c mActrMngr[1];
    /* 0xF94 */ daNpcT_Path_c mPath;
    /* 0xFBC */ actionFunc field_0xfbc;
    /* 0xFC8 */ actionFunc field_0xfc8;
    /* 0xFD4 */ int field_0xfd4;
    /* 0xFD8 */ u8 field_0xfd8;
    /* 0xFD9 */ u8 field_0xfd9;
    /* 0xFDC */ int field_0xfdc;
};

STATIC_ASSERT(sizeof(daNpc_Saru_c) == 0xfe0);

#endif /* D_A_NPC_SARU_H */
