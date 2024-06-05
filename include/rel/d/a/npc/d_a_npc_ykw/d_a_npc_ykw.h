#ifndef D_A_NPC_YKW_H
#define D_A_NPC_YKW_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_ykW_c
 * @brief Yeta
 *
 * @details
 *
 */
class daNpc_ykW_c : public fopAc_ac_c {
public:
    /* 80B5EF0C */ ~daNpc_ykW_c();
    /* 80B5F084 */ void create();
    /* 80B5F34C */ void CreateHeap();
    /* 80B5F784 */ void Delete();
    /* 80B5F7B8 */ void Execute();
    /* 80B5F7D8 */ void Draw();
    /* 80B5F8AC */ void createHeapCallBack(fopAc_ac_c*);
    /* 80B5F8CC */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80B5F924 */ void srchItemHeart(void*, void*);
    /* 80B5F9D8 */ void srchYkw(void*, void*);
    /* 80B5FA74 */ void getOtherYkwP(int);
    /* 80B5FB50 */ void srchYkm(void*, void*);
    /* 80B5FBEC */ void getOtherYkmP(int);
    /* 80B5FCC8 */ void getType();
    /* 80B5FD30 */ void isDelete();
    /* 80B5FE6C */ void reset();
    /* 80B601C8 */ void afterJntAnm(int);
    /* 80B60290 */ void setParam();
    /* 80B6042C */ void checkChangeEvt();
    /* 80B60520 */ void setAfterTalkMotion();
    /* 80B605C0 */ void srchActors();
    /* 80B60744 */ void evtTalk();
    /* 80B607E4 */ void evtCutProc();
    /* 80B608AC */ void action();
    /* 80B60AFC */ void beforeMove();
    /* 80B60BC0 */ void afterMoved();
    /* 80B60F08 */ void setAttnPos();
    /* 80B614D0 */ void setCollision();
    /* 80B61708 */ bool drawDbgInfo();
    /* 80B61710 */ void selectAction();
    /* 80B61828 */ void chkAction(int (daNpc_ykW_c::*)(void*));
    /* 80B61854 */ void setAction(int (daNpc_ykW_c::*)(void*));
    /* 80B618FC */ void getGoalPos();
    /* 80B61A0C */ void orderGoIntoBossRoomEvt();
    /* 80B61AA4 */ void putUtuwaHeart(cXyz*, f32, f32, s16, cXyz*);
    /* 80B61C8C */ void cutShowDoor(int);
    /* 80B61E74 */ void cutGoIntoBossRoom(int);
    /* 80B62AF8 */ void cutLv5DungeonClear(int);
    /* 80B63894 */ void cutFindWolf(int);
    /* 80B63AA0 */ void cutStartSnowboardRace(int);
    /* 80B63EE0 */ void cutEndSnowboardRace(int);
    /* 80B6450C */ void cutHug(int);
    /* 80B647E4 */ void setDialogueMotion();
    /* 80B6491C */ void dialogue();
    /* 80B649A8 */ void wait(void*);
    /* 80B65278 */ void sitWait(void*);
    /* 80B654CC */ void walk(void*);
    /* 80B6591C */ void race(void*);
    /* 80B6640C */ void talk(void*);
    /* 80B67A3C */ daNpc_ykW_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                               daNpcT_evtData_c const*, char**);
    /* 80B67B1C */ s32 getEyeballMaterialNo();
    /* 80B67B24 */ s32 getHeadJointNo();
    /* 80B67B2C */ s32 getNeckJointNo();
    /* 80B67B34 */ bool getBackboneJointNo();
    /* 80B67B3C */ void checkChangeJoint(int);
    /* 80B67B4C */ void checkRemoveJoint(int);
    /* 80B67B5C */ s32 getFootLJointNo();
    /* 80B67B64 */ s32 getFootRJointNo();

    static void* mCutNameList[8];
    static u8 mCutList[96];
private:
    /* 0x568 */ u8 field_0x568[0x1078 - 0x568];
};
STATIC_ASSERT(sizeof(daNpc_ykW_c) == 0x1078);

class daNpc_ykW_Param_c {
public:
    /* 80B67B6C */ ~daNpc_ykW_Param_c();

    static u8 const m[180];
};

#endif /* D_A_NPC_YKW_H */
