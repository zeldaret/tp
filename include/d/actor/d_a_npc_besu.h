#ifndef D_A_NPC_BESU_H
#define D_A_NPC_BESU_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Besu_c
 * @brief Beth
 *
 * @details
 *
 */
class daNpc_Besu_c : public fopAc_ac_c {
public:
    /* 80536E4C */ ~daNpc_Besu_c();
    /* 8053701C */ void create();
    /* 805372FC */ void CreateHeap();
    /* 80537914 */ void Delete();
    /* 80537948 */ void Execute();
    /* 80537968 */ void Draw();
    /* 805379FC */ void createHeapCallBack(fopAc_ac_c*);
    /* 80537A1C */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80537A74 */ void getType();
    /* 80537B34 */ void isDelete();
    /* 80537DE4 */ void reset();
    /* 80537FD0 */ void chkNurse();
    /* 80537FFC */ void chkBesu3();
    /* 80538028 */ void afterJntAnm(int);
    /* 805380A4 */ void setParam();
    /* 805382D0 */ void checkChangeEvt();
    /* 80538490 */ void setAfterTalkMotion();
    /* 8053853C */ void srchActors();
    /* 805387D0 */ void evtTalk();
    /* 80538870 */ void evtCutProc();
    /* 80538938 */ void action();
    /* 80538B54 */ void beforeMove();
    /* 80538C18 */ void setAttnPos();
    /* 805391B8 */ void setCollision();
    /* 80539494 */ bool drawDbgInfo();
    /* 8053949C */ void drawOtherMdl();
    /* 805395F4 */ void setCupAnm(int, int, f32);
    /* 805396C4 */ void afterSetMotionAnm(int, int, f32, int);
    /* 805396F8 */ void getFaceMotionAnm(daNpcT_faceMotionAnmData_c);
    /* 805397B0 */ void changeAnm(int*, int*);
    /* 80539840 */ void changeBck(int*, int*);
    /* 805398DC */ void changeBtp(int*, int*);
    /* 80539968 */ void changeBtk(int*, int*);
    /* 80539994 */ void selectAction();
    /* 80539ACC */ void chkAction(int (daNpc_Besu_c::*)(void*));
    /* 80539AF8 */ void setAction(int (daNpc_Besu_c::*)(void*));
    /* 80539BA0 */ void mop(int, int);
    /* 80539CF4 */ void cutConversationAboutSaru(int);
    /* 80539E48 */ void cutConversationAboutPachinko(int);
    /* 8053A45C */ void cutConversationAboutWoodSwd(int);
    /* 8053A7A0 */ void cutSwdTutorial(int);
    /* 8053AA6C */ void cutFindMonkey(int);
    /* 8053AF5C */ void cutGetWoodSwd(int);
    /* 8053B058 */ void cutCacaricoConversation(int);
    /* 8053B250 */ void cutSurprise(int);
    /* 8053B530 */ void cutConversationInHotel(int);
    /* 8053B820 */ void cutConversationAboutDeathMt(int);
    /* 8053BA60 */ void cutConversationAboutGoron(int);
    /* 8053BD18 */ void cutNurse(int);
    /* 8053BE84 */ void cutClothTry(int);
    /* 8053BF60 */ void cutThankYou(int);
    /* 8053C08C */ void wait(void*);
    /* 8053CAA0 */ void swdTutorial(void*);
    /* 8053CBB8 */ void nurse(void*);
    /* 8053CF78 */ void giveHotWater(void*);
    /* 8053D078 */ void talk(void*);
    /* 8053E588 */ daNpc_Besu_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                daNpcT_evtData_c const*, char**);
    /* 8053E6A8 */ s32 getEyeballMaterialNo();
    /* 8053E6B0 */ s32 getHeadJointNo();
    /* 8053E6B8 */ s32 getNeckJointNo();
    /* 8053E6C0 */ bool getBackboneJointNo();
    /* 8053E6C8 */ void checkChangeJoint(int);
    /* 8053E6D8 */ void checkRemoveJoint(int);

    static void* mCutNameList[15];
    static u8 mCutList[180];

private:
    /* 0x568 */ u8 field_0x568[0x1138 - 0x568];
};

STATIC_ASSERT(sizeof(daNpc_Besu_c) == 0x1138);

class daNpc_Besu_Param_c {
public:
    /* 8053E6E8 */ ~daNpc_Besu_Param_c();

    struct Data {
        /* 0x00 */ f32 field_0x00;
        /* 0x04 */ f32 field_0x04;
        /* 0x08 */ f32 field_0x08;
        /* 0x0C */ f32 field_0x0c;
        /* 0x10 */ f32 field_0x10;
        /* 0x14 */ f32 field_0x14;
        /* 0x18 */ f32 field_0x18;
        /* 0x1C */ f32 field_0x1c;
        /* 0x20 */ u32 field_0x20;
        /* 0x24 */ u32 field_0x24;
        /* 0x28 */ f32 field_0x28;
        /* 0x2C */ f32 field_0x2c;
        /* 0x30 */ f32 field_0x30;
        /* 0x34 */ f32 field_0x34;
        /* 0x38 */ f32 field_0x38;
        /* 0x3C */ f32 field_0x3c;
        /* 0x40 */ f32 field_0x40;
        /* 0x44 */ f32 field_0x44;
        /* 0x48 */ u32 field_0x48;
        /* 0x4C */ u32 field_0x4c;
        /* 0x50 */ f32 field_0x50;
        /* 0x54 */ u32 field_0x54;
        /* 0x58 */ u32 field_0x58;
        /* 0x5C */ u32 field_0x5c;
        /* 0x60 */ u32 field_0x60;
        /* 0x64 */ u32 field_0x64;
        /* 0x68 */ u32 field_0x68;
        /* 0x6C */ f32 field_0x6c;
        /* 0x70 */ f32 field_0x70;
        /* 0x74 */ u32 field_0x74;
        /* 0x78 */ f32 field_0x78;
        /* 0x7C */ f32 field_0x7c;
        /* 0x80 */ f32 field_0x80;
        /* 0x84 */ f32 field_0x84;
        /* 0x88 */ f32 field_0x88;
        /* 0x8C */ f32 field_0x8c;
    };

    static const Data m;
};

#endif /* D_A_NPC_BESU_H */
