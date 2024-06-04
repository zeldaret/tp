#ifndef D_A_NPC_SEIREI_H
#define D_A_NPC_SEIREI_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Seirei_c
 * @brief Spirit
 *
 * @details
 *
 */
class daNpc_Seirei_c : public fopAc_ac_c {
public:
    /* 80AD572C */ ~daNpc_Seirei_c();
    /* 80AD57C4 */ void create();
    /* 80AD5A7C */ void CreateHeap();
    /* 80AD5BC4 */ void Delete();
    /* 80AD5BF8 */ void Execute();
    /* 80AD5C18 */ void Draw();
    /* 80AD5CC0 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80AD5CE0 */ void getType();
    /* 80AD5D2C */ bool isDelete();
    /* 80AD5D34 */ void reset();
    /* 80AD5EEC */ void setParam();
    /* 80AD6048 */ bool checkChangeEvt();
    /* 80AD6050 */ void srchActors();
    /* 80AD6054 */ void evtTalk();
    /* 80AD6154 */ void evtCutProc();
    /* 80AD621C */ void action();
    /* 80AD62A4 */ void beforeMove();
    /* 80AD6330 */ void setAttnPos();
    /* 80AD6464 */ bool drawDbgInfo();
    /* 80AD646C */ void afterSetMotionAnm(int, int, f32, int);
    /* 80AD6604 */ void selectAction();
    /* 80AD664C */ void chkAction(int (daNpc_Seirei_c::*)(void*));
    /* 80AD6678 */ void setAction(int (daNpc_Seirei_c::*)(void*));
    /* 80AD6720 */ void ctrlWaitAnm();
    /* 80AD6808 */ void setPrtcls();
    /* 80AD6A38 */ void chkFirstMeeting();
    /* 80AD6ABC */ void cutConversation(int);
    /* 80AD6C58 */ void wait(void*);
    /* 80AD6D30 */ void talk(void*);
    /* 80AD7BF8 */ daNpc_Seirei_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                                  daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                  daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                  daNpcT_evtData_c const*, char**);

    static void* mCutNameList[2];
    static u8 mCutList[24];

private:
    /* 0x568 */ u8 field_0x568[0xe88 - 0x568];
};
STATIC_ASSERT(sizeof(daNpc_Seirei_c) == 0xe88);

class daNpc_Seirei_Param_c {
public:
    /* 80AD7C3C */ ~daNpc_Seirei_Param_c();

    static u8 const m[148];
};


#endif /* D_A_NPC_SEIREI_H */
