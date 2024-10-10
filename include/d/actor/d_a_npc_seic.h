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
class daNpc_seiC_c : public fopAc_ac_c {
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
    /* 80AC7D4C */ void evtTalk();
    /* 80AC7E4C */ void evtCutProc();
    /* 80AC7F14 */ void action();
    /* 80AC7F9C */ void beforeMove();
    /* 80AC801C */ void setAttnPos();
    /* 80AC8078 */ bool drawDbgInfo();
    /* 80AC8080 */ void afterSetMotionAnm(int, int, f32, int);
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
    /* 0x568 */ u8 field_0x568[0xe64 - 0x568];
};

STATIC_ASSERT(sizeof(daNpc_seiC_c) == 0xe64);

class daNpc_seiC_Param_c {
public:
    /* 80AC91B0 */ ~daNpc_seiC_Param_c();

    static u8 const m[148];
};


#endif /* D_A_NPC_SEIC_H */
