#ifndef D_A_NPC_KAKASHI_H
#define D_A_NPC_KAKASHI_H

#include "dolphin/types.h"
#include "d/a/d_a_npc.h"

class daNpc_Kakashi_c : public fopAc_ac_c {
public:
    /* 8054B36C */ ~daNpc_Kakashi_c();
    /* 8054B4E8 */ void create();
    /* 8054B7D8 */ void CreateHeap();
    /* 8054B908 */ void Delete();
    /* 8054B93C */ void Execute();
    /* 8054B994 */ void Draw();
    /* 8054B9D8 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 8054BB34 */ void createHeapCallBack(fopAc_ac_c*);
    /* 8054BB54 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 8054BBAC */ void getType();
    /* 8054BC10 */ void isDelete();
    /* 8054BC98 */ void reset();
    /* 8054BEA8 */ void setParam();
    /* 8054BF88 */ void srchActors();
    /* 8054BF8C */ void checkChangeEvt();
    /* 8054C034 */ void evtTalk();
    /* 8054C0D4 */ void evtEndProc();
    /* 8054C0E8 */ void evtCutProc();
    /* 8054C1B0 */ void action();
    /* 8054C268 */ void beforeMove();
    /* 8054C2E0 */ void setAttnPos();
    /* 8054C584 */ void setCollision();
    /* 8054C924 */ bool drawDbgInfo();
    /* 8054C92C */ void selectAction();
    /* 8054CA1C */ void chkAction(int (daNpc_Kakashi_c::*)(void*));
    /* 8054CA48 */ void setAction(int (daNpc_Kakashi_c::*)(void*));
    /* 8054CAF0 */ void hitChk();
    /* 8054CEA0 */ void setStaggerParam(fopAc_ac_c*);
    /* 8054D26C */ void setPrtcls(int);
    /* 8054D374 */ void judgeSwdTutorial();
    /* 8054D490 */ void cutSwdTutorial(int);
    /* 8054D57C */ void cutGetWoodSwd(int);
    /* 8054D604 */ void cutMarosWhisper(int);
    /* 8054D668 */ void wait(void*);
    /* 8054D694 */ void swdTutorial(void*);
    /* 8054D8BC */ void talk(void*);
    /* 8054E804 */ daNpc_Kakashi_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                                   daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                   daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                   daNpcT_evtData_c const*, char**);

    static void* mCutNameList[4];
    static u8 mCutList[48];

private:
    /* 0x568 */ u8 field_0x568[0x1398 - 0x568];
};
STATIC_ASSERT(sizeof(daNpc_Kakashi_c) == 0x1398);

class daNpc_Kakashi_Param_c {
public:
    /* 8054EA58 */ ~daNpc_Kakashi_Param_c();

    static u8 const m[152];
};


#endif /* D_A_NPC_KAKASHI_H */
