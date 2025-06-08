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

#ifdef DEBUG
class daNpc_Saru_HIO_c : public mDoHIO_entry_c {

};
#endif

class daNpc_Saru_Param_c {
public:
    /* 80AC448C */ virtual ~daNpc_Saru_Param_c() {};

    struct Data {
        /* 0x00 */ f32 field_0x00;
        /* 0x04 */ f32 mGravity;
        /* 0x08 */ f32 field_0x08;
        /* 0x0C */ f32 field_0x0c;
        /* 0x10 */ f32 mWeight;
        /* 0x14 */ f32 mCylH;
        /* 0x18 */ f32 mWallH;
        /* 0x1C */ f32 mWallR;
        /* 0x20 */ f32 mBodyDownAngle;
        /* 0x24 */ f32 mBodyUpAngle;
        /* 0x28 */ f32 mBodyRightAngle;
        /* 0x2C */ f32 mBodyLeftAngle;
        /* 0x30 */ f32 mHeadDownAngle;
        /* 0x34 */ f32 mHeadUpAngle;
        /* 0x38 */ f32 mHeadRightAngle;
        /* 0x3C */ f32 mHeadLeftAngle;
        /* 0x40 */ f32 field_0x40;
        /* 0x44 */ f32 mMorfFrames;
        /* 0x48 */ s16 field_0x48;
        /* 0x4A */ s16 field_0x4a;
        /* 0x4C */ s16 field_0x4c;
        /* 0x4E */ s16 field_0x4e;
        /* 0x50 */ f32 mAttnFovy;
        /* 0x54 */ f32 field_0x54;
        /* 0x58 */ f32 field_0x58;
        /* 0x5C */ f32 field_0x5c;
        /* 0x60 */ s16 field_0x60;
        /* 0x62 */ s16 field_0x62;
        /* 0x64 */ f32 field_0x64;
        /* 0x68 */ f32 field_0x68;
        /* 0x6C */ f32 field_0x6c;
        /* 0x70 */ f32 field_0x70;
        /* 0x74 */ f32 field_0x74;
        /* 0x78 */ f32 field_0x78;
        /* 0x7C */ f32 field_0x7c;
        /* 0x80 */ f32 field_0x80;
        /* 0x84 */ f32 field_0x84;
        /* 0x88 */ f32 field_0x88;
        /* 0x8C */ s16 field_0x8c;
        /* 0x8E */ s16 field_0x8e;
    };

    static const Data m;
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
    /* 80AC4474 */ s32 getHeadJointNo();
    /* 80AC447C */ s32 getNeckJointNo();
    /* 80AC4484 */ s32 getBackboneJointNo();

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
    /* 0xE44 */ J3DModel* field_0xe44[2];
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
