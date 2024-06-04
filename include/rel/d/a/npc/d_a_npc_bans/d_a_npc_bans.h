#ifndef D_A_NPC_BANS_H
#define D_A_NPC_BANS_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Bans_c
 * @brief Barnes
 *
 * @details
 *
 */
class daNpc_Bans_c : public fopAc_ac_c {
public:
    /* 809628CC */ ~daNpc_Bans_c();
    /* 80962AA0 */ void create();
    /* 80962D6C */ void CreateHeap();
    /* 80963338 */ void Delete();
    /* 8096336C */ void Execute();
    /* 80963444 */ void Draw();
    /* 809634E0 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80963500 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80963558 */ void getType();
    /* 809635BC */ void isDelete();
    /* 809636C0 */ void reset();
    /* 80963840 */ void afterJntAnm(int);
    /* 809638CC */ void setParam();
    /* 80963A7C */ void checkChangeEvt();
    /* 80963B30 */ void setAfterTalkMotion();
    /* 80963BA8 */ void srchActors();
    /* 80963DB0 */ void evtTalk();
    /* 80963EDC */ void evtCutProc();
    /* 80963FA4 */ void action();
    /* 80964148 */ void beforeMove();
    /* 80964228 */ void setAttnPos();
    /* 809646E0 */ void setCollision();
    /* 80964994 */ bool drawDbgInfo();
    /* 8096499C */ void drawOtherMdl();
    /* 80964AD8 */ void setScoopAnm(int, int, f32);
    /* 80964B9C */ void afterSetMotionAnm(int, int, f32, int);
    /* 80964BD0 */ void selectAction();
    /* 80964C4C */ void chkAction(int (daNpc_Bans_c::*)(void*));
    /* 80964C78 */ void setAction(int (daNpc_Bans_c::*)(void*));
    /* 80964D20 */ void checkPlayerIn2ndFloorOfBombShop();
    /* 80964DD0 */ void orderAngerEvt();
    /* 80964EB0 */ void getKMsgTagP();
    /* 80964F48 */ void setPrtcls();
    /* 80964FEC */ void cutAnger(int);
    /* 809658F8 */ void cutPurchase(int);
    /* 80965CCC */ void wait(void*);
    /* 809661F0 */ void tend(void*);
    /* 80966888 */ void talk(void*);
    /* 80966B24 */ void shop(void*);
    /* 80967AC4 */ daNpc_Bans_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                daNpcT_evtData_c const*, char**);
    /* 80967BE4 */ s32 getEyeballMaterialNo();
    /* 80967BEC */ s32 getHeadJointNo();
    /* 80967BF4 */ s32 getNeckJointNo();
    /* 80967BFC */ bool getBackboneJointNo();
    /* 80967C04 */ void checkChangeJoint(int);
    /* 80967C14 */ void checkRemoveJoint(int);

    static void* mCutNameList[4];
    static u8 mCutList[48];
private:
    /* 0x568 */ u8 field_0x568[0x1270 - 0x568];
};
STATIC_ASSERT(sizeof(daNpc_Bans_c) == 0x1270);

class daNpc_Bans_Param_c {
public:
    /* 80967C24 */ ~daNpc_Bans_Param_c();

    static u8 const m[144];
};

#endif /* D_A_NPC_BANS_H */
