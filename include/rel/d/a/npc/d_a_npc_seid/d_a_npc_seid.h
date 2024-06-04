#ifndef D_A_NPC_SEID_H
#define D_A_NPC_SEID_H

#include "dolphin/types.h"
#include "d/a/d_a_npc.h"

class daNpc_seiD_c : public fopAc_ac_c {
public:
    /* 80AC968C */ ~daNpc_seiD_c();
    /* 80AC9728 */ void create();
    /* 80AC9968 */ void CreateHeap();
    /* 80AC9AC0 */ void Delete();
    /* 80AC9AF4 */ void Execute();
    /* 80AC9B14 */ void Draw();
    /* 80AC9BA8 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80AC9BC8 */ void getType();
    /* 80AC9BE8 */ void getFlowNodeNo();
    /* 80AC9C04 */ bool isDelete();
    /* 80AC9C0C */ void reset();
    /* 80AC9D5C */ void setParam();
    /* 80AC9E88 */ void srchActors();
    /* 80AC9E8C */ void evtTalk();
    /* 80AC9F8C */ void evtCutProc();
    /* 80ACA054 */ void action();
    /* 80ACA0DC */ void beforeMove();
    /* 80ACA15C */ void setAttnPos();
    /* 80ACA1B8 */ bool drawDbgInfo();
    /* 80ACA1C0 */ void afterSetMotionAnm(int, int, f32, int);
    /* 80ACA358 */ void selectAction();
    /* 80ACA3A0 */ void chkAction(int (daNpc_seiD_c::*)(void*));
    /* 80ACA3CC */ void setAction(int (daNpc_seiD_c::*)(void*));
    /* 80ACA474 */ void ctrlWaitAnm();
    /* 80ACA478 */ void wait(void*);
    /* 80ACA4A4 */ void talk(void*);
    /* 80ACB2AC */ daNpc_seiD_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                daNpcT_evtData_c const*, char**);

    static void* mCutNameList;
    static u8 mCutList[12];

private:
    /* 0x568 */ u8 field_0x568[0xe64 - 0x568];
};
STATIC_ASSERT(sizeof(daNpc_seiD_c) == 0xe64);

class daNpc_seiD_Param_c {
public:
    /* 80ACB2F0 */ ~daNpc_seiD_Param_c();

    static u8 const m[148];
};


#endif /* D_A_NPC_SEID_H */
