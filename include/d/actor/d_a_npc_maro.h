#ifndef D_A_NPC_MARO_H
#define D_A_NPC_MARO_H

#include "SSystem/SComponent/c_counter.h"
#include "d/actor/d_a_npc.h"
#include "d/d_shop_system.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Maro_c
 * @brief Malo
 *
 * @details
 *
 */
class daNpc_Maro_c : public dShopSystem_c {
public:
    typedef int (daNpc_Maro_c::*actionFunc)(void*);
    typedef int (daNpc_Maro_c::*cutFunc)(int);

    enum Type {
        TYPE_0,
        TYPE_1,
        TYPE_2,
        TYPE_3,
        TYPE_4,
        TYPE_5,
        TYPE_6,
        TYPE_7,
        TYPE_8,
        TYPE_9,
        TYPE_10,
        TYPE_11,
        TYPE_12,
        TYPE_13,
        TYPE_14,
        TYPE_15,
        TYPE_16,
    };

    /* 8055B58C */ ~daNpc_Maro_c();
    /* 8055B6E0 */ int create();
    /* 8055B9A8 */ int CreateHeap();
    /* 8055BDE8 */ int Delete();
    /* 8055BE1C */ int Execute();
    /* 8055BF0C */ int Draw();
    /* 8055BFA0 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 8055BFC0 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 8055C018 */ static void* srchArrow(void*, void*);
    /* 8055C0B4 */ fopAc_ac_c* getArrowP();
    /* 8055C1AC */ static void* srchItaMato(void*, void*);
    /* 8055C248 */ fopAc_ac_c* getItaMatoP(int);
    /* 8055C330 */ u8 getType();
    /* 8055C3E0 */ int isDelete();
    /* 8055C614 */ void reset();
    /* 8055C834 */ void afterJntAnm(int);
    /* 8055C8B0 */ void setParam();
    /* 8055CB14 */ BOOL checkChangeEvt();
    /* 8055CC9C */ BOOL evtEndProc();
    /* 8055CCD8 */ void setAfterTalkMotion();
    /* 8055CD74 */ void srchActors();
    /* 8055D0D8 */ BOOL evtTalk();
    /* 8055D1F4 */ BOOL evtCutProc();
    /* 8055D368 */ void action();
    /* 8055D5C4 */ void beforeMove();
    /* 8055D688 */ void setAttnPos();
    /* 8055D918 */ void setCollision();
    /* 8055DA70 */ BOOL drawDbgInfo();
    /* 8055DA78 */ void drawOtherMdl();
    /* 8055DAD8 */ daNpcT_faceMotionAnmData_c getFaceMotionAnm(daNpcT_faceMotionAnmData_c);
    /* 8055DB64 */ daNpcT_motionAnmData_c getMotionAnm(daNpcT_motionAnmData_c);
    /* 8055DBF0 */ int selectAction();
    /* 8055DD08 */ int chkAction(int (daNpc_Maro_c::*)(void*));
    /* 8055DD34 */ int setAction(int (daNpc_Maro_c::*)(void*));
    /* 8055DDDC */ int cutConversationAboutPachinko(int);
    /* 8055DF7C */ int cutConversationAboutWoodSwd(int);
    /* 8055E124 */ int cutSwdTutorial(int);
    /* 8055E414 */ int cutHail(int);
    /* 8055E578 */ int cutFindMonkey(int);
    /* 8055E968 */ int cutGiveMeWoodSwd(int);
    /* 8055ECF4 */ int cutGetWoodSwd(int);
    /* 8055F508 */ int cutConversationWithMaro(int);
    /* 8055F634 */ int cutCacaricoConversation(int);
    /* 8055F82C */ int cutSurprise(int);
    /* 8055FAF0 */ int cutArrowTutorial(int);
    /* 805611E0 */ int cutBokinTalk(int);
    /* 80561328 */ int cutMarosWhisper(int);
    /* 80561614 */ int cutTagPush1(int);
    /* 8056178C */ int cutNotGonnaLet(int);
    /* 80561E70 */ int cutTalkToKakashi(int);
    /* 80562174 */ int wait(void*);
    /* 805629A4 */ int swdTutorial(void*);
    /* 80562B14 */ int talk_withTaro(void*);
    /* 80562CA4 */ int choccai(void*);
    /* 80562EC8 */ int tend(void*);
    /* 8056319C */ int arrowTutorial(void*);
    /* 8056342C */ int talk(void*);
    /* 80563660 */ int shop(void*);
    /* 805648A4 */ daNpc_Maro_c(
        daNpcT_faceMotionAnmData_c const* i_faceMotionAnmData,
        daNpcT_motionAnmData_c const* i_motionAnmData,
        daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_faceMotionSequenceData,
        int i_faceMotionStepNum,
        daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_motionSequenceData, int i_motionStepNum,
        daNpcT_evtData_c const* i_evtData, char** i_arcNames)
        : dShopSystem_c(i_faceMotionAnmData, i_motionAnmData, i_faceMotionSequenceData,
                   i_faceMotionStepNum, i_motionSequenceData, i_motionStepNum, i_evtData,
                   i_arcNames) {
        OS_REPORT("|%06d:%x|daNpc_Maro_c -> コンストラクト\n", g_Counter.mCounter0, this);
    }
    /* 80564970 */ s32 getEyeballMaterialNo();
    /* 80564978 */ s32 getHeadJointNo();
    /* 80564980 */ s32 getNeckJointNo();
    /* 80564988 */ s32 getBackboneJointNo();
    /* 80564990 */ BOOL checkChangeJoint(int arg0) { return arg0 == 4; };
    /* 805649A0 */ BOOL checkRemoveJoint(int arg0) { return arg0 == 6; };

    u8 getBitSW() { return (fopAcM_GetParam(this) & 0xFF0000) >> 16; }

    void lostPlayer() { mPlayerActorMngr.remove(); }
    BOOL checkNowMotionIsChoccai() {
        if (mMotionSeqMngr.getNo() == 5 || mMotionSeqMngr.getNo() == 6) {
            return TRUE;
        }
        return FALSE;
    }

    BOOL checkEndMotionIsChoccai() {
        if (checkNowMotionIsChoccai() == TRUE && mMotionSeqMngr.getStepNo() > 0) {
            return TRUE;
        }
        return FALSE;
    }

    void findPlayer() { mPlayerActorMngr.entry(daPy_getPlayerActorClass()); }

    void startChoccai() { field_0x1134 = 1; }
    void endChoccai() { field_0x1134 = 0; }

    static char* mCutNameList[17];
    static cutFunc mCutList[17];

    int getFlowNodeNo() {
        u16 nodeNo = home.angle.x;
        if (nodeNo == 0xffff) {
            return -1;
        }
        return nodeNo;
    }

    u8 getMaxNumItem() {
        return (fopAcM_GetParam(this) & 0xf000000) >> 0x18;
    }

private:
    /* 0x0F7C */ int field_0xf7c;
    /* 0x0F80 */ dCcD_Cyl mCyl1;
    /* 0x10BC */ int field_0x10bc;
    /* 0x10C0 */ u8 mType;
    /* 0x10C4 */ daNpcT_ActorMngr_c mActorMngr[9];
    /* 0x110C */ actionFunc field_0x110c;
    /* 0x110C */ actionFunc field_0x1118;
    /* 0x1124 */ u8 field_0x1124[0x1128 - 0x1124];
    /* 0x1128 */ int field_0x1128;
    /* 0x112C */ int field_0x112c;
    /* 0x1130 */ u8 field_0x1130;
    /* 0x1131 */ u8 field_0x1131;
    /* 0x1132 */ u8 field_0x1132;
    /* 0x1134 */ u8 field_0x1133;
    /* 0x1134 */ u8 field_0x1134;
    /* 0x1135 */ u8 field_0x1135;
    /* 0x1136 */ u8 field_0x1136;
    /* 0x1137 */ u8 field_0x1137;
    /* 0x1138 */ u8 field_0x1138;
    /* 0x1139 */ u8 field_0x1139;
    /* 0x113A */ u8 field_0x113a[0x113C - 0x113A];
    /* 0x113C */ u8 field_0x113C[0x1140 - 0x113C];
};

STATIC_ASSERT(sizeof(daNpc_Maro_c) == 0x1140);

class daNpc_Maro_Param_c {
public:
    /* 805649B0 */ virtual ~daNpc_Maro_Param_c() {}

    struct Data {
        /* 0x00 */ f32 field_0x00;
        /* 0x04 */ f32 field_0x04;
        /* 0x08 */ f32 field_0x08;
        /* 0x0C */ f32 field_0x0c;
        /* 0x10 */ f32 field_0x10;
        /* 0x14 */ f32 field_0x14;
        /* 0x18 */ f32 field_0x18;
        /* 0x1C */ f32 field_0x1c;
        /* 0x20 */ f32 field_0x20;
        /* 0x24 */ f32 field_0x24;
        /* 0x28 */ f32 field_0x28;
        /* 0x2C */ f32 field_0x2c;
        /* 0x30 */ f32 field_0x30;
        /* 0x34 */ f32 field_0x34;
        /* 0x38 */ f32 field_0x38;
        /* 0x3C */ f32 field_0x3c;
        /* 0x40 */ f32 field_0x40;
        /* 0x44 */ f32 field_0x44;
        /* 0x48 */ s16 field_0x48;
        /* 0x4A */ s16 field_0x4a;
        /* 0x4C */ s16 field_0x4c;
        /* 0x4E */ s16 field_0x4e;
        /* 0x50 */ f32 field_0x50;
        /* 0x54 */ u32 field_0x54;
        /* 0x58 */ u32 field_0x58;
        /* 0x5C */ u32 field_0x5c;
        /* 0x60 */ u32 field_0x60;
        /* 0x64 */ u32 field_0x64;
        /* 0x68 */ u32 field_0x68;
        /* 0x6C */ f32 field_0x6c;
        /* 0x70 */ f32 field_0x70;
        /* 0x74 */ f32 field_0x74;
        /* 0x78 */ f32 field_0x78;
        /* 0x7C */ f32 field_0x7c;
        /* 0x80 */ f32 field_0x80;
        /* 0x84 */ f32 field_0x84;
        /* 0x88 */ f32 field_0x88;
        /* 0x8C */ u32 field_0x8c;
    };

    static const Data m;
};


#endif /* D_A_NPC_MARO_H */
