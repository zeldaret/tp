#ifndef D_A_NPC_LEN_H
#define D_A_NPC_LEN_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Len_c
 * @brief Renado
 *
 * @details
 *
 */
class daNpc_Len_c : public fopAc_ac_c {
public:
    /* 80A6432C */ ~daNpc_Len_c();
    /* 80A64478 */ void create();
    /* 80A64740 */ void CreateHeap();
    /* 80A64BE0 */ void Delete();
    /* 80A64C14 */ void Execute();
    /* 80A64C34 */ void Draw();
    /* 80A64CC8 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80A64CE8 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80A64D40 */ void getType();
    /* 80A64DB8 */ void isDelete();
    /* 80A64FBC */ void reset();
    /* 80A6516C */ void afterJntAnm(int);
    /* 80A65278 */ void setParam();
    /* 80A6546C */ void checkChangeEvt();
    /* 80A6556C */ void setAfterTalkMotion();
    /* 80A65624 */ void srchActors();
    /* 80A65710 */ void evtTalk();
    /* 80A657B0 */ void evtCutProc();
    /* 80A65878 */ void action();
    /* 80A65A60 */ void beforeMove();
    /* 80A65B24 */ void setAttnPos();
    /* 80A65E28 */ void setCollision();
    /* 80A65F80 */ bool drawDbgInfo();
    /* 80A65F88 */ void selectAction();
    /* 80A66004 */ void chkAction(int (daNpc_Len_c::*)(void*));
    /* 80A66030 */ void setAction(int (daNpc_Len_c::*)(void*));
    /* 80A660D8 */ void checkStartDemo13StbEvt(fopAc_ac_c*, f32, f32, f32, f32, f32, f32, f32);
    /* 80A661B4 */ void cutConversationInHotel(int);
    /* 80A66664 */ void cutHurry(int);
    /* 80A668B8 */ void cutTakeWoodStatue(int);
    /* 80A66C74 */ void wait(void*);
    /* 80A6736C */ void patrol(void*);
    /* 80A67794 */ void talk(void*);
    /* 80A68D00 */ daNpc_Len_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                               daNpcT_evtData_c const*, char**);
    /* 80A68DE0 */ s32 getEyeballMaterialNo();
    /* 80A68DE8 */ s32 getHeadJointNo();
    /* 80A68DF0 */ s32 getNeckJointNo();
    /* 80A68DF8 */ bool getBackboneJointNo();
    /* 80A68E00 */ void checkChangeJoint(int);
    /* 80A68E10 */ void checkRemoveJoint(int);
    /* 80A68E20 */ s32 getFootLJointNo();
    /* 80A68E28 */ s32 getFootRJointNo();
    /* 80A68E30 */ bool chkXYItems();

    static void* mCutNameList[4];
    static u8 mCutList[48];

private:
    /* 0x568 */ u8 field_0x568[0xff4 - 0x568];
};

STATIC_ASSERT(sizeof(daNpc_Len_c) == 0xff4);

class daNpc_Len_Param_c {
public:
    /* 80A68E38 */ ~daNpc_Len_Param_c();

    static u8 const m[148];
};


#endif /* D_A_NPC_LEN_H */
