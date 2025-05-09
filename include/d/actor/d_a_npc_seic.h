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

 struct daNpc_seiC_HIOParam {
    /* 0x00 */ u32 field_0x00;
    /* 0x04 */ u32 field_0x04;
    /* 0x08 */ u32 field_0x08;
    /* 0x0C */ u32 field_0x0c;
    /* 0x10 */ f32 mSttsWeight;
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

class daNpc_seiC_Param_c {
    public:
        /* 80AC91B0 */ virtual ~daNpc_seiC_Param_c() {};

        static const daNpc_seiC_HIOParam m;
};

class daNpc_seiC_HIO_c
#ifdef DEBUG
: public mDoHIO_entry_c 
#endif
{
public:
    void genMessage(JORMContext*);

    #ifdef DEBUG
    /* 0x08 */ daNpc_seiC_HIOParam field_0x8;
    /* 0x94 */ f32 field_0x94;                  // "強制会話距離" "Forced conversation distance" | Slider
    /* 0x98 */ f32 field_0x98;                  // "会話距離" "Conversation distance" | Slider
    #endif
};

class daNpc_seiC_c : public daNpcT_c {
public:
    typedef int (daNpc_seiC_c::*actionFunc)(void*);

    enum Type {
        TYPE_0,
        TYPE_1,
    };

    /* 80AC754C */ ~daNpc_seiC_c();
    /* 80AC75E8 */ int create();
    /* 80AC7828 */ int CreateHeap();
    /* 80AC7980 */ int Delete();
    /* 80AC79B4 */ int Execute();
    /* 80AC79D4 */ int Draw();
    /* 80AC7A68 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80AC7A88 */ u8 getType();
    /* 80AC7AA8 */ u32 getFlowNodeNo();
    /* 80AC7AC4 */ int isDelete();
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
    /* 80AC916C */ daNpc_seiC_c(daNpcT_faceMotionAnmData_c const* i_faceMotionAnmData, daNpcT_motionAnmData_c const* i_motionAnmData,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_faceMotionSequenceData, int i_faceMotionStepNum,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_motionSequenceData, int i_motionStepNum,
                                daNpcT_evtData_c const* i_evtData, char** i_arcNames)         
                                : daNpcT_c(i_faceMotionAnmData, i_motionAnmData, i_faceMotionSequenceData,
                                           i_faceMotionStepNum, i_motionSequenceData, i_motionStepNum, i_evtData,
                                           i_arcNames) {};

    static void* mCutNameList;
    static u8 mCutList[12];

private:
    /* 0xE40 */ daNpc_seiC_HIO_c* field_0xe40;
    /* 0xE44 */ u8 mType;
    /* 0xE45 */ u8 field_0xe45[0xe48 - 0xe45];
    /* 0xE48 */ actionFunc mAction;
    /* 0xE54 */ u8 field_0xe54[0xe60 - 0xe54];
    /* 0xE60 */ int field_0xe60;
};

STATIC_ASSERT(sizeof(daNpc_seiC_c) == 0xe64);

#endif /* D_A_NPC_SEIC_H */
