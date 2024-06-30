#ifndef D_A_NPC_TOBY_H
#define D_A_NPC_TOBY_H

#include "dolphin/types.h"
#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Toby_c
 * @brief Fyer
 *
 * @details
 *
 */
class daNpc_Toby_c : public fopAc_ac_c {
public:
    /* 80B1E64C */ ~daNpc_Toby_c();
    /* 80B1E798 */ void create();
    /* 80B1EA60 */ void CreateHeap();
    /* 80B1EF28 */ void Delete();
    /* 80B1EF5C */ void Execute();
    /* 80B1EF7C */ void Draw();
    /* 80B1F010 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80B1F030 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80B1F088 */ void srchToby(void*, void*);
    /* 80B1F124 */ void getOtherTobyP(int);
    /* 80B1F200 */ void getType();
    /* 80B1F274 */ void isDelete();
    /* 80B1F384 */ void reset();
    /* 80B1F5AC */ void afterJntAnm(int);
    /* 80B1F638 */ void setParam();
    /* 80B1F784 */ void checkChangeEvt();
    /* 80B1F950 */ void setAfterTalkMotion();
    /* 80B1FA08 */ void srchActors();
    /* 80B1FB34 */ void evtTalk();
    /* 80B1FBD4 */ void evtCutProc();
    /* 80B1FC9C */ void action();
    /* 80B1FE68 */ void beforeMove();
    /* 80B1FF2C */ void setAttnPos();
    /* 80B20278 */ void setCollision();
    /* 80B2042C */ bool drawDbgInfo();
    /* 80B20434 */ void drawOtherMdl();
    /* 80B2050C */ void afterSetFaceMotionAnm(int, int, f32, int);
    /* 80B20568 */ void afterSetMotionAnm(int, int, f32, int);
    /* 80B205F4 */ void selectAction();
    /* 80B20710 */ void chkAction(int (daNpc_Toby_c::*)(void*));
    /* 80B2073C */ void setAction(int (daNpc_Toby_c::*)(void*));
    /* 80B207E4 */ void cutTobyHouseFire(int);
    /* 80B20AB0 */ void cutTalkToOneself(int);
    /* 80B20FC0 */ void cutRepairSCannon(int);
    /* 80B215B4 */ void cutSCannon(int);
    /* 80B219F4 */ void cutConversationAboutSCannon(int);
    /* 80B22434 */ void cutConversationAboutZra(int);
    /* 80B22614 */ void chkAttnZra();
    /* 80B226B0 */ void wait(void*);
    /* 80B22D98 */ void walk(void*);
    /* 80B22FAC */ void play(void*);
    /* 80B23344 */ void talk(void*);
    /* 80B24840 */ daNpc_Toby_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                daNpcT_evtData_c const*, char**);
    /* 80B24920 */ s32 getEyeballMaterialNo();
    /* 80B24928 */ s32 getHeadJointNo();
    /* 80B24930 */ s32 getNeckJointNo();
    /* 80B24938 */ bool getBackboneJointNo();
    /* 80B24940 */ void checkChangeJoint(int);
    /* 80B24950 */ void checkRemoveJoint(int);
    /* 80B24960 */ s32 getFootLJointNo();
    /* 80B24968 */ s32 getFootRJointNo();
    /* 80B24970 */ bool chkXYItems();

    static void* mCutNameList[7];
    static u8 mCutList[84];

private:
    /* 0x568 */ u8 field_0x568[0x1008 - 0x568];
};

STATIC_ASSERT(sizeof(daNpc_Toby_c) == 0x1008);

class daNpc_Toby_Param_c {
public:
    /* 80B24978 */ ~daNpc_Toby_Param_c();

    static u8 const m[156];
};

#endif /* D_A_NPC_TOBY_H */
