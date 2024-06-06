#ifndef D_A_NPC_CLERKT_H
#define D_A_NPC_CLERKT_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpcClerkT_c
 * @brief Ooccaa (City in the Sky Shop)
 *
 * @details
 *
 */
class daNpcClerkT_c : public fopAc_ac_c {
public:
    /* 8099A14C */ ~daNpcClerkT_c();
    /* 8099A28C */ void create();
    /* 8099A530 */ void CreateHeap();
    /* 8099A96C */ void Delete();
    /* 8099A9A0 */ void Execute();
    /* 8099AA80 */ void Draw();
    /* 8099AB14 */ void createHeapCallBack(fopAc_ac_c*);
    /* 8099AB34 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 8099AB8C */ void isDelete();
    /* 8099ABBC */ void reset();
    /* 8099ACF0 */ void afterJntAnm(int);
    /* 8099AD74 */ void evtTalk();
    /* 8099AF18 */ void evtCutProc();
    /* 8099AFE0 */ void action();
    /* 8099B0CC */ bool drawDbgInfo();
    /* 8099B0D4 */ void drawOtherMdl();
    /* 8099B134 */ void selectAction();
    /* 8099B1B0 */ void chkAction(int (daNpcClerkT_c::*)(void*));
    /* 8099B1DC */ void setAction(int (daNpcClerkT_c::*)(void*));
    /* 8099B284 */ void wait(void*);
    /* 8099B4DC */ void tend(void*);
    /* 8099B60C */ void talk(void*);
    /* 8099B804 */ void shop(void*);
    /* 8099BCE8 */ void setParam();
    /* 8099BE48 */ void setAfterTalkMotion();
    /* 8099BEA8 */ void beforeMove();
    /* 8099BF20 */ void setAttnPos();
    /* 8099C1A0 */ void setCollision();
    /* 8099CF9C */ daNpcClerkT_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                 daNpcT_evtData_c const*, char**);
    /* 8099D068 */ s32 getEyeballMaterialNo();
    /* 8099D070 */ void checkChangeJoint(int);
    /* 8099D080 */ void checkRemoveJoint(int);
    /* 8099D090 */ s32 getBackboneJointNo();
    /* 8099D098 */ s32 getNeckJointNo();
    /* 8099D0A0 */ s32 getHeadJointNo();

    static void* mCutNameList;
    static u8 mCutList[12];

private:
    /* 0x568 */ u8 field_0x568[0x10f0 - 0x568];
};

STATIC_ASSERT(sizeof(daNpcClerkT_c) == 0x10f0);

class daNpcClerkt_Param_c {
public:
    /* 8099D0A8 */ ~daNpcClerkt_Param_c();

    static u8 const m[140];
};


#endif /* D_A_NPC_CLERKT_H */
