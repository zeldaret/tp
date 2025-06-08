#ifndef D_A_NPC_TARO_H
#define D_A_NPC_TARO_H

#include "SSystem/SComponent/c_counter.h"
#include "d/actor/d_a_npc.h"

struct daNpc_Taro_HIOParam {
    /* 0x00 */ f32 mAttentionPosYOffset;
    /* 0x04 */ f32 mGravity;
    /* 0x08 */ f32 mScale;
    /* 0x0C */ f32 field_0x0c;
    /* 0x10 */ f32 mSttsWeight;
    /* 0x14 */ f32 mCylH;
    /* 0x18 */ f32 mWallH;
    /* 0x1C */ f32 mWallR;
    /* 0x20 */ f32 mBodyDownAngle;
    /* 0x24 */ f32 mBodyUpAngle;
    /* 0x28 */ f32 mBodyRightAngle;
    /* 0x2C */ f32 mBodyLeftAngle;
    /* 0x30 */ f32 mHeadDownAngle;
    /* 0x34 */ f32 mHeadUpAngle;
    /* 0x38 */ f32 mHeadRightAngle;
    /* 0x3C */ f32 mHeadLeftAngle;
    /* 0x40 */ f32 field_0x40;
    /* 0x44 */ f32 mMorfFrames;
    /* 0x48 */ s16 field_0x48;
    /* 0x4A */ s16 field_0x4a;
    /* 0x4C */ s16 field_0x4c;
    /* 0x4E */ s16 field_0x4e;
    /* 0x50 */ f32 mAttnFovY;
    /* 0x54 */ f32 field_0x54;
    /* 0x58 */ f32 field_0x58;
    /* 0x5C */ f32 field_0x5c;
    /* 0x60 */ s16 field_0x60;
    /* 0x62 */ s16 field_0x62;
    /* 0x64 */ f32 field_0x64;
    /* 0x68 */ f32 field_0x68;
    /* 0x6C */ f32 field_0x6c;
    /* 0x70 */ f32 field_0x70;
    /* 0x74 */ f32 field_0x74;
    /* 0x78 */ f32 field_0x78;
    /* 0x7C */ f32 field_0x7c;
    /* 0x80 */ f32 field_0x80;
    /* 0x84 */ f32 field_0x84;
    /* 0x88 */ f32 field_0x88;
    /* 0x8C */ s16 mChoccaiTimer;
    /* 0x8E */ s16 field_0x8e;
};

class daNpc_Taro_Param_c {
    public:
        /* 805715FC */ virtual ~daNpc_Taro_Param_c() {}
    
        static daNpc_Taro_HIOParam const m;
    };

class daNpc_Taro_HIO_c 
#ifdef DEBUG
: public mDoHIO_entry_c 
#endif
{
public:
    void genMessage(JORMContext*);
};

/**
 * @ingroup actors-npcs
 * @class daNpc_Taro_c
 * @brief Talo
 *
 * @details
 *
 */
class daNpc_Taro_c : public daNpcT_c {
public:
    typedef int (daNpc_Taro_c::*cutFunc)(int);
    typedef int (daNpc_Taro_c::*actionFunc)(void*);

    enum TaroType {
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

    /* 80565E8C */ ~daNpc_Taro_c();
    /* 8056604C */ int create();
    /* 80566340 */ int CreateHeap();
    /* 80566910 */ int Delete();
    /* 80566944 */ int Execute();
    /* 80566964 */ int Draw();
    /* 805669F8 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80566A18 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80566A70 */ static void* srchArrow(void*, void*);
    /* 80566B0C */ static void* srchNpc(void*, void*);
    /* 80566BD4 */ fopAc_ac_c* getArrowP();
    /* 80566CCC */ u8 getType();
    /* 80566D7C */ BOOL isDelete();
    /* 80566FA4 */ void reset();
    /* 805671F4 */ void afterJntAnm(int);
    /* 80567280 */ void setParam();
    /* 8056747C */ BOOL checkChangeEvt();
    /* 8056757C */ BOOL evtEndProc();
    /* 805675B8 */ void setAfterTalkMotion();
    /* 8056767C */ void srchActors();
    /* 805679F0 */ BOOL evtTalk();
    /* 80567A90 */ BOOL evtCutProc();
    /* 80567C90 */ void action();
    /* 80567EB4 */ void beforeMove();
    /* 80567F78 */ void setAttnPos();
    /* 805682E8 */ void setCollision();
    /* 80568590 */ int drawDbgInfo();
    /* 80568598 */ void drawOtherMdl();
    /* 805686A0 */ daNpcT_faceMotionAnmData_c getFaceMotionAnm(daNpcT_faceMotionAnmData_c);
    /* 80568738 */ BOOL selectAction();
    /* 80568828 */ BOOL chkAction(int (daNpc_Taro_c::*)(void*));
    /* 80568854 */ BOOL setAction(int (daNpc_Taro_c::*)(void*));
    /* 805688FC */ void setSwingVoice();
    /* 80568A2C */ int cutConversationAboutPachinko(int);
    /* 80568C58 */ int cutConversationAboutWoodSwd(int);
    /* 80568E00 */ int cutSwdTutorial(int);
    /* 80569880 */ int cutHail(int);
    /* 80569AFC */ int cutFindMonkey(int);
    /* 8056A120 */ int cutHelpMe(int);
    /* 8056A460 */ int cutAppearanceMoi(int);
    /* 8056B000 */ int cutGiveMeWoodSwd(int);
    /* 8056B68C */ int cutGetWoodSwd(int);
    /* 8056C14C */ int cutConversationWithMaro(int);
    /* 8056C5B4 */ int cutCacaricoConversation(int);
    /* 8056C8CC */ int cutArrowTutorial(int);
    /* 8056D0B8 */ int cutCaution(int);
    /* 8056D310 */ int cutTagPush1(int);
    /* 8056D5C0 */ int cutNotGonnaLet(int);
    /* 8056DFAC */ int cutTagPush4(int);
    /* 8056E270 */ int wait(void*);
    /* 8056F2A8 */ int swdTutorial(void*);
    /* 8056F418 */ int talk_withMaro(void*);
    /* 8056F7E8 */ int practice(void*);
    /* 8056FC20 */ int nurse(void*);
    /* 8056FDCC */ int talk(void*);
    /* 8057148C */ daNpc_Taro_c(
        daNpcT_faceMotionAnmData_c const* i_faceMotionAnmData,
        daNpcT_motionAnmData_c const* i_motionAnmData,
        daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_faceMotionSequenceData,
        int i_faceMotionStepNum,
        daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_motionSequenceData, int i_motionStepNum,
        daNpcT_evtData_c const* i_evtData, char** i_arcNames)
        : daNpcT_c(i_faceMotionAnmData, i_motionAnmData, i_faceMotionSequenceData,
                   i_faceMotionStepNum, i_motionSequenceData, i_motionStepNum, i_evtData,
                   i_arcNames) {
        OS_REPORT("|%06d:%x|daNpc_Taro_c -> コンストラクト\n", g_Counter.mCounter0, this);
    }
    /* 805715AC */ s32 getEyeballMaterialNo() { return 2; }
    /* 805715B4 */ s32 getHeadJointNo() { return 4; }
    /* 805715BC */ s32 getNeckJointNo() { return 3; }
    /* 805715C4 */ s32 getBackboneJointNo() { return 1; }
    /* 805715CC */ BOOL checkChangeJoint(int jntNo) { return jntNo == 4; }
    /* 805715DC */ BOOL checkRemoveJoint(int jntNo) { return jntNo == 7; }
    /* 805715EC */ s32 getFootLJointNo() { return 19; }
    /* 805715F4 */ s32 getFootRJointNo() { return 22; }

    u32 getFlowNodeNo() { 
        u16 nodeNo = home.angle.x;
        u32 rv;
        if (nodeNo == 0xffff) {
            rv = -1;
        } else {
            rv = nodeNo;
        }
        return rv;
    }

    u8 getPathID() { return (fopAcM_GetParam(this) & 0xff00) >> 8; }
    u8 getBitSW() { return (fopAcM_GetParam(this) & 0xff0000) >> 16; }
    u8 getBitSW2() { return (fopAcM_GetParam(this) & 0xff000000) >> 24; }

    static char* mCutNameList[17];
    static cutFunc mCutList[17];

private:
    /* 0x0E40 */ daNpc_Taro_HIO_c* field_0xe40;
    /* 0x0E44 */ J3DModel* mModels[2];
    /* 0x0E4C */ dCcD_Cyl mCyl1;
    /* 0x0F88 */ dCcD_Cyl mCyl2;
    /* 0x10C4 */ u8 mType;
    /* 0x10C8 */ daNpcT_ActorMngr_c mActors[23];
    /* 0x1180 */ actionFunc mAction;
    /* 0x118C */ actionFunc mAction2;
    /* 0x1198 */ int mChoccaiTimer;
    /* 0x119C */ int field_0x119c;
    /* 0x11A0 */ u8 field_0x11a0;
    /* 0x11A1 */ u8 field_0x11a1;
    /* 0x11A2 */ u8 field_0x11a2;
    /* 0x11A3 */ u8 field_0x11a3;
    /* 0x11A4 */ u8 field_0x11a4;
    /* 0x11A5 */ u8 field_0x11a5;
    /* 0x11A6 */ u8 field_0x11a6;
    /* 0x11A7 */ u8 field_0x11a7;
    /* 0x11A8 */ int field_0x11a8;
};

STATIC_ASSERT(sizeof(daNpc_Taro_c) == 0x11ac);


#endif /* D_A_NPC_TARO_H */
