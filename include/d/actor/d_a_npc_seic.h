#ifndef D_A_NPC_SEIC_H
#define D_A_NPC_SEIC_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_seiC_c
 * @brief Eldin Spirit
 *
 * @details
 *
 */
class daNpc_seiC_c : public daNpcT_c {
public:
    /* 80AC754C */ ~daNpc_seiC_c();
    /* 80AC75E8 */ void create();
    /* 80AC7828 */ void CreateHeap();
    /* 80AC7980 */ void Delete();
    /* 80AC79B4 */ void Execute();
    /* 80AC79D4 */ void Draw();
    /* 80AC7A68 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80AC7A88 */ void getType();
    /* 80AC7AA8 */ void getFlowNodeNo();
    /* 80AC7AC4 */ bool isDelete();
    /* 80AC7ACC */ void reset();
    /* 80AC7C1C */ void setParam();
    /* 80AC7D48 */ void srchActors();
    /* 80AC7D4C */ BOOL evtTalk();
    /* 80AC7E4C */ BOOL evtCutProc();
    /* 80AC7F14 */ void action();
    /* 80AC7F9C */ void beforeMove();
    /* 80AC801C */ void setAttnPos();
    /* 80AC8078 */ int drawDbgInfo();
    /* 80AC8080 */ bool afterSetMotionAnm(int, int, f32, int);
    /* 80AC8218 */ void selectAction();
    /* 80AC8260 */ void chkAction(int (daNpc_seiC_c::*)(void*));
    /* 80AC828C */ void setAction(int (daNpc_seiC_c::*)(void*));
    /* 80AC8334 */ void ctrlWaitAnm();
    /* 80AC8338 */ void wait(void*);
    /* 80AC8364 */ void talk(void*);
    /* 80AC916C */ daNpc_seiC_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                daNpcT_evtData_c const*, char**);

    static void* mCutNameList;
    static u8 mCutList[12];

private:
    /* 0xE40 */ u8 field_0xe40[0xe64 - 0xe40];
};

STATIC_ASSERT(sizeof(daNpc_seiC_c) == 0xe64);

class daNpc_seiC_Param_c {
public:
    /* 80AC91B0 */ ~daNpc_seiC_Param_c();
    struct Data {
        /* 0x00 */ u32 field_0x00;
        /* 0x04 */ u32 field_0x04;
        /* 0x08 */ u32 field_0x08;
        /* 0x0C */ u32 field_0x0c;
        /* 0x10 */ u32 field_0x10;
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
        /* 0x90 */ u32 field_0x90;
    };
    static const Data m;
};


#endif /* D_A_NPC_SEIC_H */
