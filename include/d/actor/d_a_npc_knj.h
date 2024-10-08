#ifndef D_A_NPC_KNJ_H
#define D_A_NPC_KNJ_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Knj_c
 * @brief Sage
 *
 * @details
 *
 */
class daNpc_Knj_c : public fopAc_ac_c {
public:
    /* 80A4356C */ ~daNpc_Knj_c();
    /* 80A43608 */ void create();
    /* 80A43848 */ void CreateHeap();
    /* 80A439A0 */ void Delete();
    /* 80A439D4 */ void Execute();
    /* 80A439F4 */ void Draw();
    /* 80A43A88 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80A43AA8 */ void getType();
    /* 80A43B1C */ void getFlowNodeNo();
    /* 80A43B38 */ bool isDelete();
    /* 80A43B40 */ void reset();
    /* 80A43C64 */ void setParam();
    /* 80A43D58 */ void srchActors();
    /* 80A43D5C */ void evtTalk();
    /* 80A43E5C */ void evtCutProc();
    /* 80A43F24 */ void action();
    /* 80A43FAC */ void beforeMove();
    /* 80A44024 */ void setAttnPos();
    /* 80A44080 */ bool drawDbgInfo();
    /* 80A44088 */ void afterSetMotionAnm(int, int, f32, int);
    /* 80A44264 */ void drawGhost();
    /* 80A442D0 */ void selectAction();
    /* 80A44318 */ void chkAction(int (daNpc_Knj_c::*)(void*));
    /* 80A44344 */ void setAction(int (daNpc_Knj_c::*)(void*));
    /* 80A443EC */ void wait(void*);
    /* 80A44598 */ void talk(void*);
    /* 80A45460 */ daNpc_Knj_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                               daNpcT_evtData_c const*, char**);

    static void* mCutNameList;
    static u8 mCutList[12];

private:
    /* 0x568 */ u8 field_0x568[0xe68 - 0x568];
};

STATIC_ASSERT(sizeof(daNpc_Knj_c) == 0xe68);

class daNpc_Knj_Param_c {
public:
    /* 80A454A4 */ ~daNpc_Knj_Param_c();

    static u8 const m[140];
};


#endif /* D_A_NPC_KNJ_H */
