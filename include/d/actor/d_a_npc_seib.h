#ifndef D_A_NPC_SEIB_H
#define D_A_NPC_SEIB_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_seiB_c
 * @brief Faron Spirit
 *
 * @details
 *
 */
class daNpc_seiB_c : public daNpcT_c {
public:
    /* 80AC50EC */ ~daNpc_seiB_c();
    /* 80AC5188 */ int create();
    /* 80AC53C8 */ void CreateHeap();
    /* 80AC5520 */ void Delete();
    /* 80AC5554 */ void Execute();
    /* 80AC5574 */ void Draw();
    /* 80AC5608 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80AC5628 */ u8 getType();
    /* 80AC5648 */ u32 getFlowNodeNo();
    /* 80AC5664 */ bool isDelete();
    /* 80AC566C */ void reset();
    /* 80AC57C4 */ void setParam();
    /* 80AC58F0 */ void srchActors();
    /* 80AC58F4 */ BOOL evtTalk();
    /* 80AC59F4 */ BOOL evtCutProc();
    /* 80AC5ABC */ void action();
    /* 80AC5B44 */ void beforeMove();
    /* 80AC5BC4 */ void setAttnPos();
    /* 80AC5C20 */ int drawDbgInfo();
    /* 80AC5C28 */ bool afterSetMotionAnm(int, int, f32, int);
    /* 80AC5DC0 */ void selectAction();
    /* 80AC5E08 */ void chkAction(int (daNpc_seiB_c::*)(void*));
    /* 80AC5E34 */ void setAction(int (daNpc_seiB_c::*)(void*));
    /* 80AC5EDC */ void ctrlWaitAnm();
    /* 80AC6140 */ void wait(void*);
    /* 80AC616C */ void talk(void*);
    /* 80AC6F74 */ daNpc_seiB_c(daNpcT_faceMotionAnmData_c const* param_1, daNpcT_motionAnmData_c const* param_2,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_3, int param_4,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_5, int param_6,
                                daNpcT_evtData_c const* param_7, char** param_8) :
                                daNpcT_c(param_1, param_2, param_3, param_4, param_5, param_6, param_7, param_8)
                                {}

    static void* mCutNameList;
    static u8 mCutList[12];

private:
    /* 0xE40 */ u8 field_0xe40[0xe44 - 0xe40];
    /* 0xE44 */ u8 mType;
    /* 0xE45 */ u8 field_0xe45[0xe68 - 0xe45];
};

STATIC_ASSERT(sizeof(daNpc_seiB_c) == 0xe68);

class daNpc_seiB_Param_c {
public:
    /* 80AC6FB8 */ ~daNpc_seiB_Param_c();
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
        /* 0x94 */ u32 field_0x94;
        /* 0x98 */ u32 field_0x98;
        /* 0x9C */ u32 field_0x9c;
        /* 0x100 */ u32 field_0x100;
        /* 0x104 */ u32 field_0x104;
        /* 0x108 */ u32 field_0x108;
    };

    static const Data m;
};


#endif /* D_A_NPC_SEIB_H */
