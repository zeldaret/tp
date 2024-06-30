#ifndef D_A_NPC_POUYA_H
#define D_A_NPC_POUYA_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Pouya_c
 * @brief Poe Merchant (Jovani?)
 *
 * @details
 *
 */
class daNpc_Pouya_c : public fopAc_ac_c {
public:
    /* 80AADDAC */ ~daNpc_Pouya_c();
    /* 80AADEE0 */ void create();
    /* 80AAE1AC */ void CreateHeap();
    /* 80AAE788 */ void Delete();
    /* 80AAE7BC */ void Execute();
    /* 80AAE7DC */ void Draw();
    /* 80AAE870 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80AAE890 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80AAE8E8 */ void getType();
    /* 80AAE94C */ void isDelete();
    /* 80AAE9D8 */ void reset();
    /* 80AAEBCC */ void ctrlSubFaceMotion(int);
    /* 80AAEDB8 */ void afterJntAnm(int);
    /* 80AAEE44 */ void setParam();
    /* 80AAEFB4 */ void checkChangeEvt();
    /* 80AAF148 */ void setAfterTalkMotion();
    /* 80AAF1F0 */ void srchActors();
    /* 80AAF1F4 */ void evtTalk();
    /* 80AAF294 */ void evtCutProc();
    /* 80AAF35C */ void action();
    /* 80AAF4F8 */ void beforeMove();
    /* 80AAF5BC */ void setAttnPos();
    /* 80AAF8E4 */ void setCollision();
    /* 80AAFA5C */ bool drawDbgInfo();
    /* 80AAFA64 */ void drawOtherMdl();
    /* 80AAFB4C */ void afterSetMotionAnm(int, int, f32, int);
    /* 80AAFBDC */ void selectAction();
    /* 80AAFC24 */ void chkAction(int (daNpc_Pouya_c::*)(void*));
    /* 80AAFC50 */ void setAction(int (daNpc_Pouya_c::*)(void*));
    /* 80AAFCF8 */ void setPrtcls();
    /* 80AAFE08 */ void cutHaveFavorToAsk(int);
    /* 80AB04A8 */ void wait(void*);
    /* 80AB0A7C */ void talk(void*);
    /* 80AB1E94 */ daNpc_Pouya_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                 daNpcT_evtData_c const*, char**);
    /* 80AB1F54 */ bool getEyeballMaterialNo();
    /* 80AB1F5C */ s32 getHeadJointNo();
    /* 80AB1F64 */ s32 getNeckJointNo();
    /* 80AB1F6C */ bool getBackboneJointNo();
    /* 80AB1F74 */ void checkChangeJoint(int);
    /* 80AB1F84 */ void checkRemoveJoint(int);

    static void* mCutNameList[3];
    static u8 mCutList[36];

private:
    /* 0x568 */ u8 field_0x568[0xfd4 - 0x568];
};

STATIC_ASSERT(sizeof(daNpc_Pouya_c) == 0xfd4);

class daNpc_Pouya_Param_c {
public:
    /* 80AB1F94 */ ~daNpc_Pouya_Param_c();

    static u8 const m[140];
};


#endif /* D_A_NPC_POUYA_H */
