#ifndef D_A_NPC_HANJO_H
#define D_A_NPC_HANJO_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Hanjo_c
 * @brief Hanch
 *
 * @details
 *
 */
class daNpc_Hanjo_c : public fopAc_ac_c {
public:
    /* 809F908C */ ~daNpc_Hanjo_c();
    /* 809F9278 */ void create();
    /* 809F9578 */ void CreateHeap();
    /* 809F9B38 */ void Delete();
    /* 809F9B6C */ void Execute();
    /* 809F9B8C */ void Draw();
    /* 809F9C20 */ void createHeapCallBack(fopAc_ac_c*);
    /* 809F9C40 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 809F9C98 */ void getType();
    /* 809F9CF0 */ void isDelete();
    /* 809F9D9C */ void reset();
    /* 809F9FCC */ void afterJntAnm(int);
    /* 809FA050 */ void setParam();
    /* 809FA1C4 */ void checkChangeEvt();
    /* 809FA3B8 */ void setAfterTalkMotion();
    /* 809FA45C */ void srchActors();
    /* 809FA55C */ void evtTalk();
    /* 809FA5FC */ void evtCutProc();
    /* 809FA6C4 */ void action();
    /* 809FA88C */ void beforeMove();
    /* 809FAABC */ void afterMoved();
    /* 809FABB8 */ void setAttnPos();
    /* 809FAF90 */ void setCollision();
    /* 809FB2C4 */ bool drawDbgInfo();
    /* 809FB2CC */ void drawOtherMdl();
    /* 809FB59C */ void selectAction();
    /* 809FB6CC */ void chkAction(int (daNpc_Hanjo_c::*)(void*));
    /* 809FB6F8 */ void setAction(int (daNpc_Hanjo_c::*)(void*));
    /* 809FB7A0 */ void initShoot(int);
    /* 809FB90C */ void shoot(int);
    /* 809FBB94 */ void initDive();
    /* 809FBC3C */ void dive();
    /* 809FC06C */ void lookround(s16);
    /* 809FC1BC */ void commandToHawk();
    /* 809FC2E4 */ void cutConversationAboutSaru(int);
    /* 809FC438 */ void cutConversation(int);
    /* 809FC80C */ void cutPursuitBee(int);
    /* 809FCDC4 */ void cutAppearHawker(int);
    /* 809FD3C0 */ void cutDive(int);
    /* 809FD86C */ void wait(void*);
    /* 809FDEFC */ void throwStone(void*);
    /* 809FE2E0 */ void takayose(void*);
    /* 809FEAEC */ void talk(void*);
    /* 80A000A8 */ daNpc_Hanjo_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                 daNpcT_evtData_c const*, char**);
    /* 80A00334 */ s32 getEyeballMaterialNo();
    /* 80A004D0 */ s32 getHeadJointNo();
    /* 80A004D8 */ s32 getNeckJointNo();
    /* 80A004E0 */ bool getBackboneJointNo();
    /* 80A00504 */ void checkChangeJoint(int);
    /* 80A00514 */ void checkRemoveJoint(int);
    /* 80A00524 */ s32 getFootLJointNo();
    /* 80A0052C */ s32 getFootRJointNo();

    static u8 const mStoneCcDObjInfo[48];
    static void* mCutNameList[6];
    static u8 mCutList[72];
    static u8 mStoneCcDSph[64];
private:
    /* 0x568 */ u8 field_0x568[0x172c - 0x568];
};

STATIC_ASSERT(sizeof(daNpc_Hanjo_c) == 0x172c);

class daNpc_Hanjo_Param_c {
public:
    /* 80A00534 */ ~daNpc_Hanjo_Param_c();

    static u8 const m[180];
};

class daNpc_HanjoStone_c {
public:
    /* 809FFFD4 */ ~daNpc_HanjoStone_c();
    /* 80A001FC */ daNpc_HanjoStone_c();
    /* 80A0033C */ void getPos();
    /* 80A00358 */ void getOld();
    /* 80A00374 */ void posMoveF(fopAc_ac_c*);
    /* 80A004A8 */ void setPos(cXyz);
    /* 80A004E8 */ void setAngle(csXyz);
};

#endif /* D_A_NPC_HANJO_H */
