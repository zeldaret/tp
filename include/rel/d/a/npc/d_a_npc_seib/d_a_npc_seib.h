#ifndef D_A_NPC_SEIB_H
#define D_A_NPC_SEIB_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_seiB_c
 * @brief Faron Spirit
 *
 * @details
 *
 */
class daNpc_seiB_c : public fopAc_ac_c {
public:
    /* 80AC50EC */ ~daNpc_seiB_c();
    /* 80AC5188 */ void create();
    /* 80AC53C8 */ void CreateHeap();
    /* 80AC5520 */ void Delete();
    /* 80AC5554 */ void Execute();
    /* 80AC5574 */ void Draw();
    /* 80AC5608 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80AC5628 */ void getType();
    /* 80AC5648 */ void getFlowNodeNo();
    /* 80AC5664 */ bool isDelete();
    /* 80AC566C */ void reset();
    /* 80AC57C4 */ void setParam();
    /* 80AC58F0 */ void srchActors();
    /* 80AC58F4 */ void evtTalk();
    /* 80AC59F4 */ void evtCutProc();
    /* 80AC5ABC */ void action();
    /* 80AC5B44 */ void beforeMove();
    /* 80AC5BC4 */ void setAttnPos();
    /* 80AC5C20 */ bool drawDbgInfo();
    /* 80AC5C28 */ void afterSetMotionAnm(int, int, f32, int);
    /* 80AC5DC0 */ void selectAction();
    /* 80AC5E08 */ void chkAction(int (daNpc_seiB_c::*)(void*));
    /* 80AC5E34 */ void setAction(int (daNpc_seiB_c::*)(void*));
    /* 80AC5EDC */ void ctrlWaitAnm();
    /* 80AC6140 */ void wait(void*);
    /* 80AC616C */ void talk(void*);
    /* 80AC6F74 */ daNpc_seiB_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                daNpcT_evtData_c const*, char**);

    static void* mCutNameList;
    static u8 mCutList[12];

private:
    /* 0x568 */ u8 field_0x568[0xe68 - 0x568];
};

STATIC_ASSERT(sizeof(daNpc_seiB_c) == 0xe68);

class daNpc_seiB_Param_c {
public:
    /* 80AC6FB8 */ ~daNpc_seiB_Param_c();

    static u8 const m[148];
};


#endif /* D_A_NPC_SEIB_H */
