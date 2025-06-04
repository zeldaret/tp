#ifndef D_A_NPC_SARU_H
#define D_A_NPC_SARU_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Saru_c
 * @brief Monkey (Ook?)
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
    /* 80AC448C */ ~daNpc_Saru_Param_c();

    struct Data {
        /* 0x00 */ f32 field_0x00;
        /* 0x04 */ f32 field_0x04;
        /* 0x08 */ u32 field_0x08;
        /* 0x0C */ u32 field_0x0c;
        /* 0x10 */ f32 mWeight;
        /* 0x14 */ u32 field_0x14;
        /* 0x18 */ u32 field_0x18;
        /* 0x1C */ u32 field_0x1c;
        /* 0x20 */ u32 field_0x20;
        /* 0x24 */ u32 field_0x24;
        /* 0x28 */ u32 field_0x28;
        /* 0x2C */ u32 field_0x2c;
        /* 0x30 */ u32 field_0x30;
        /* 0x34 */ u32 field_0x34;
        /* 0x38 */ u32 field_0x38;
        /* 0x3C */ u32 field_0x3c;
        /* 0x40 */ u32 field_0x40;
        /* 0x44 */ u32 field_0x44;
        /* 0x48 */ u32 field_0x48;
        /* 0x4C */ u32 field_0x4c;
        /* 0x50 */ u32 field_0x50;
        /* 0x54 */ u32 field_0x54;
        /* 0x58 */ u32 field_0x58;
        /* 0x5C */ u32 field_0x5c;
        /* 0x60 */ u32 field_0x60;
        /* 0x64 */ u32 field_0x64;
        /* 0x68 */ u32 field_0x68;
        /* 0x6C */ u32 field_0x6c;
        /* 0x70 */ u32 field_0x70;
        /* 0x74 */ u32 field_0x74;
        /* 0x78 */ u32 field_0x78;
        /* 0x7C */ u32 field_0x7c;
        /* 0x80 */ u32 field_0x80;
        /* 0x84 */ u32 field_0x84;
        /* 0x88 */ u32 field_0x88;
        /* 0x8C */ u32 field_0x8c;
    };

    static const Data m;
};

class daNpc_Saru_c : public daNpcT_c {
public:
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
    /* 80AC0B64 */ void* srchYm(void*, void*);
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
    /* 80AC1B30 */ void selectAction();
    /* 80AC1B78 */ void chkAction(int (daNpc_Saru_c::*)(void*));
    /* 80AC1BA4 */ void setAction(int (daNpc_Saru_c::*)(void*));
    /* 80AC1C4C */ void setSe();
    /* 80AC216C */ void cutFindMonkey(int);
    /* 80AC2368 */ void cutHelpMe(int);
    /* 80AC2598 */ void cutYmLook(int);
    /* 80AC28A4 */ void wait(void*);
    /* 80AC2FD8 */ void talk(void*);
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

    static void* mCutNameList[4];
    static u8 mCutList[48];

private:
    #ifdef DEBUG
    /* 0xE90 */ daNpc_Saru_HIO_c* field_0xe90;
    #endif
    /* 0xE40 */ u8 field_0xe40[0xe44 - 0xe40];
    /* 0xE44 */ J3DModel* field_0xe44[2];
    /* 0xE4C */ dCcD_Cyl field_0xe4c;
    /* 0xF88 */ u8 mType;
    /* 0xF89 */ u8 field_0xf89[0xf8c - 0xf89];
    /* 0xF8C */ daNpcT_ActorMngr_c field_0xf8c;
    /* 0xF94 */ daNpcT_Path_c field_0xf94;
    /* 0xFBC */ actionFunc field_0xfbc;
    /* 0xFC8 */ u8 field_0xfc8[0xfd9 - 0xfc8];
    /* 0xFD9 */ u8 field_0xfd9;
    /* 0xFDA */ u8 field_0xfda[0xfdc - 0xfda];
    /* 0xFDC */ int field_0xfdc;
};

STATIC_ASSERT(sizeof(daNpc_Saru_c) == 0xfe0);

#endif /* D_A_NPC_SARU_H */
