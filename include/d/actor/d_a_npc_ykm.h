#ifndef D_A_NPC_YKM_H
#define D_A_NPC_YKM_H

#include "d/actor/d_a_npc.h"
#include "d/d_save.h"
#include "d/actor/d_a_npc_ykw.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_ykM_c
 * @brief Yeto
 *
 * @details
 *
 */

struct daNpc_ykM_HIOParam {
    /* 0x00 */ daNpcT_HIOParam common;
    /* 0x8C */ s16 step_speed;                 // ステップの速さ  (Step Speed)
    /* 0x8E */ s16 field_0x8e;
    /* 0x90 */ f32 attention_dist;             // 注目距離        (Attention Distance)
    /* 0x94 */ f32 conversation_dist;          // 会話距離        (Conversation Distance)
    /* 0x98 */ f32 jump_speed;                 // 飛び出し速度    (Jump Speed)
    /* 0x9C */ f32 push_out_angle;             // 飛び出し角度    (Push-Out Angle)
    /* 0xA0 */ f32 skip_frame;                 // 飛ばしフレ−ム   (Skip Frame)
    /* 0xA4 */ f32 fly_speed;                  // 飛ばし速度      (Fly Speed)
    /* 0xA8 */ f32 fly_angle;                  // 飛ばし角度      (Fly Angle)
    /* 0xAC */ f32 jump_init_speed;            // ジャンプ初速    (Jump Initial Speed)
    /* 0xB0 */ f32 slide_acceleration;         // 滑り加速        (Slide Acceleration)
    /* 0xB4 */ f32 slide_speed;                // 滑り速度        (Slide Speed)
    /* 0xB8 */ s16 wait_time;                  // ウエイト時間    (Wait Time)
    /* 0xBA */ s16 field_0xba;
    /* 0xBC */ f32 run_speed;                  // 走り速度        (Run Speed)
    /* 0xC0 */ s16 competition_prm_a;          // 競争パラメ−タａ (Competition Parameter A)
    /* 0xC2 */ s16 competition_prm_b;          // 競争パラメ−タｂ (Competition Parameter B)
    /* 0xC4 */ f32 competition_prm_c;          // 競争パラメ−タｃ (Competition Parameter C)
};

class daNpc_ykM_Param_c : public JORReflexible {
public:
#if DEBUG
    virtual void genMessage(JORMContext*);
#endif

    /* 80B5D6C8 */ virtual ~daNpc_ykM_Param_c() {}

    static daNpc_ykM_HIOParam const m;
};

class daNpc_ykM_c : public daNpcT_c {
public:
    enum FaceMotion {
        /* 0x0 */ FACE_TALK_A,
        /* 0x1 */ FACE_TALK_B,
        /* 0x2 */ FACE_TALK_C,
        /* 0x3 */ FACE_TALK_D,
        /* 0x4 */ FACE_REGRET,
        /* 0x5 */ FACE_LAUGH,
        /* 0x6 */ FACE_ASK,
        /* 0x7 */ FACE_SHOUT,
        /* 0x8 */ FACE_SHUT,
        /* 0x9 */ FACE_TALK_X,
        /* 0xA */ FACE_HAPPY,
        /* 0xB */ FACE_H_HAPPY,
        /* 0xC */ FACE_TALK_Y,
        /* 0xD */ FACE_H_REGRET,
        /* 0xE */ FACE_H_LAUGH,
        /* 0xF */ FACE_NONE,
    };

    enum Motion {
        /* 0x00 */ MOTION_WAIT_A,
        /* 0x01 */ MOTION_WAIT_B,
        /* 0x02 */ MOTION_TALK_B,
        /* 0x03 */ MOTION_TALK_C,
        /* 0x04 */ MOTION_TALK_D,
        /* 0x05 */ MOTION_TALK_E,
        /* 0x06 */ MOTION_PUSH,
        /* 0x08 */ MOTION_PICKUP = 8,
        /* 0x09 */ MOTION_WAIT_C,
        /* 0x0A */ MOTION_FUNWAIT,
        /* 0x0B */ MOTION_REGRET,
        /* 0x0C */ MOTION_LAUGH,
        /* 0x0D */ MOTION_ASK,
        /* 0x0E */ MOTION_FISH_WAIT_A,
        /* 0x0F */ MOTION_FISH_TALK_B,
        /* 0x10 */ MOTION_FISH_TALK_C,
        /* 0x11 */ MOTION_FISH_REGRET,
        /* 0x12 */ MOTION_FISH_LAUGH,
        /* 0x13 */ MOTION_FISH_ASK,
        /* 0x14 */ MOTION_FISH_LOOK,
        /* 0x15 */ MOTION_WAITLIE,
        /* 0x16 */ MOTION_WAKE,
        /* 0x17 */ MOTION_DENY,
        /* 0x18 */ MOTION_WAITWAKE,
        /* 0x19 */ MOTION_HOLD,
        /* 0x1A */ MOTION_WAITHOLD,
        /* 0x1B */ MOTION_WAIT_X,
        /* 0x1C */ MOTION_WAITHOLD_B_B,
        /* 0x1D */ MOTION_WALK,
        /* 0x1E */ MOTION_STEP,
        /* 0x1F */ MOTION_POUR,
        /* 0x20 */ MOTION_SB_WAIT,
        /* 0x21 */ MOTION_SB_JUMP_A,
        /* 0x22 */ MOTION_SB_JUMP_C,
        /* 0x23 */ MOTION_RUN,
        /* 0x24 */ MOTION_STOP,
        /* 0x25 */ MOTION_HOLD_B,
        /* 0x26 */ MOTION_38,
        /* 0x27 */ MOTION_39,
        /* 0x28 */ MOTION_SB_DAMAGE,
        /* 0x29 */ MOTION_FISH_WAIT_A_2,
        /* 0x2A */ MOTION_FISH_ATTACK,
        /* 0x2B */ MOTION_FISH_JUMP,
        /* 0x2C */ MOTION_SB_TURNL,
        /* 0x2D */ MOTION_SB_TURNR,
        /* 0x2E */ MOTION_SB_GOAL,
    };

    enum Leaf_Animation {
        /* 0x00 */ ANM_LEAF_WAIT_A,
        /* 0x01 */ ANM_LEAF_FALL,
        /* 0x02 */ ANM_LEAF_WAIT_B,
    };

    enum Joint {
        /* 0x00 */ JNT_CENTER,
        /* 0x01 */ JNT_BB1,
        /* 0x02 */ JNT_BB2,
        /* 0x03 */ JNT_NECK,
        /* 0x04 */ JNT_HEAD,
        /* 0x05 */ JNT_CHIN,
        /* 0x06 */ JNT_MAYUL,
        /* 0x07 */ JNT_MAYUR,
        /* 0x08 */ JNT_MOUTH,
        /* 0x09 */ JNT_YKM_KURA,
        /* 0x0A */ JNT_SHOULDERL,
        /* 0x0B */ JNT_ARML1,
        /* 0x0C */ JNT_ARML2,
        /* 0x0D */ JNT_HANDL,
        /* 0x0E */ JNT_FINGERL,
        /* 0x0F */ JNT_THUMBL,
        /* 0x10 */ JNT_SHOUDLERR,
        /* 0x11 */ JNT_ARMR1,
        /* 0x12 */ JNT_ARMR2,
        /* 0x13 */ JNT_HANDR,
        /* 0x14 */ JNT_FINGERR,
        /* 0x15 */ JNT_THUMBR,
        /* 0x16 */ JNT_WAIST,
        /* 0x17 */ JNT_LEGL1,
        /* 0x18 */ JNT_LEGL2,
        /* 0x19 */ JNT_FOOTL,
        /* 0x1A */ JNT_LEGR1,
        /* 0x1B */ JNT_LEGR2,
        /* 0x1C */ JNT_FOOTR,
        /* 0x1D */ JNT_TAIL,
    };

    enum Type {
        /* 0x0 */ TYPE_0,
        /* 0x1 */ TYPE_COOK,
        /* 0x2 */ TYPE_2,
        /* 0x3 */ TYPE_3,
        /* 0x4 */ TYPE_4,
        /* 0x5 */ TYPE_5,
        /* 0x6 */ TYPE_6,
        /* 0x7 */ TYPE_7,
    };

    enum Event {
        /* 0x0 */ EVENT_NONE,
        /* 0x1 */ EVENT_NO_RESPONSE,
        /* 0x2 */ EVENT_SLIDEDOWN,
        /* 0x3 */ EVENT_MEETING_AGAIN,
        /* 0x4 */ EVENT_GET_TOMATOPUREE,
        /* 0x5 */ EVENT_GET_TASTE,
        /* 0x6 */ EVENT_FIND_WOLF,
        /* 0x7 */ EVENT_START_SNOWBOARDRACE,
        /* 0x8 */ EVENT_END_SNOWBOARDRACE,
        /* 0x9 */ EVENT_HUG,
    };

    typedef int (daNpc_ykM_c::*cutFunc)(int);
    typedef BOOL (daNpc_ykM_c::*ActionFn)(void*);
    
    /* 80B534EC */ ~daNpc_ykM_c();
    /* 80B53698 */ cPhs__Step create();
    /* 80B53990 */ int CreateHeap();
    /* 80B540BC */ int Delete();
    /* 80B540F0 */ int Execute();
    /* 80B54110 */ int Draw();
    /* 80B541F8 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80B54218 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80B54270 */ static void* srchGadget(void*, void*);
    /* 80B5430C */ fopAc_ac_c* getTomatoPureeP();
    /* 80B543DC */ fopAc_ac_c* getCheeseP();
    /* 80B544B0 */ static void* srchYkm(void*, void*);
    /* 80B5454C */ fopAc_ac_c* getOtherYkmP(int);
    /* 80B54628 */ static void* srchYkw(void*, void*);
    /* 80B546C4 */ fopAc_ac_c* getOtherYkwP(int);
    /* 80B547A0 */ u8 getType();
    /* 80B54808 */ BOOL isDelete();
    /* 80B548A8 */ void reset();
    /* 80B54B44 */ void afterJntAnm(int);
    /* 80B54BD0 */ void setParam();
    /* 80B54E5C */ BOOL checkChangeEvt();
    /* 80B55004 */ void setAfterTalkMotion();
    /* 80B550A4 */ void srchActors();
    /* 80B55254 */ BOOL evtTalk();
    /* 80B552F4 */ BOOL evtCutProc();
    /* 80B553BC */ void action();
    /* 80B55658 */ void beforeMove();
    /* 80B5571C */ void afterMoved();
    /* 80B55A64 */ void setAttnPos();
    /* 80B560B4 */ void setCollision();
    /* 80B5641C */ int drawDbgInfo();
    /* 80B56424 */ void drawOtherMdl();
    /* 80B56624 */ bool setFishAnm(int, int, f32);
    /* 80B566E8 */ bool setLeafAnm(int, f32);
    /* 80B567B4 */ bool afterSetMotionAnm(int, int, f32, int);
    /* 80B5680C */ int selectAction();
    /* 80B56954 */ BOOL chkAction(ActionFn);
    /* 80B56980 */ int setAction(ActionFn);
    /* 80B56A28 */ BOOL chkContinueAttnPlayer();
    /* 80B56AB4 */ BOOL chkTouchPlayer();
    /* 80B56B84 */ int cutSlideDown(int);
    /* 80B572C8 */ int cutMeetingAgain(int);
    /* 80B57638 */ int cutGetTomatoPuree(int);
    /* 80B5806C */ int cutGetTaste(int);
    /* 80B58A38 */ int cutLv5DungeonClear(int);
    /* 80B59500 */ int cutFindWolf(int);
    /* 80B59748 */ int cutStartSnowboardRace(int);
    /* 80B59B90 */ int cutEndSnowboardRace(int);
    /* 80B5A0B8 */ int cutHug(int);
    /* 80B5A128 */ void setDialogueMotion();
    /* 80B5A224 */ int dialogue();
    /* 80B5A3FC */ BOOL wait(void*);
    /* 80B5ABA8 */ BOOL cook(void*);
    /* 80B5B260 */ BOOL race(void*);
    /* 80B5BE08 */ BOOL talk(void*);
    #ifdef DEBUG
    BOOL test(void*);
    #endif
    /* 80B5D588 */ daNpc_ykM_c(
            daNpcT_faceMotionAnmData_c const* i_faceMotionAnmData,
            daNpcT_motionAnmData_c const* i_motionAnmData,
            daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_faceMotionSequenceData,
            int i_faceMotionStepNum,
            daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_motionSequenceData,
            int i_motionStepNum,
            daNpcT_evtData_c const* i_evtData,
            char** i_arcNames)
        : daNpcT_c(i_faceMotionAnmData, i_motionAnmData, i_faceMotionSequenceData,
        i_faceMotionStepNum, i_motionSequenceData, i_motionStepNum, i_evtData,
        i_arcNames) {}
    /* 80B5D688 */ u16 getEyeballMaterialNo() { return 2; }
    /* 80B5D690 */ s32 getHeadJointNo() { return JNT_HEAD; }
    /* 80B5D698 */ s32 getNeckJointNo() { return JNT_NECK; }
    /* 80B5D6A0 */ s32 getBackboneJointNo() { return JNT_BB1; }
    /* 80B5D6A8 */ BOOL checkChangeJoint(int i_joint) { return i_joint == JNT_HEAD; }
    /* 80B5D6B8 */ BOOL checkRemoveJoint(int i_joint) { return i_joint == JNT_YKM_KURA; }

    u32 getFlowNodeNo() {
        u32 rv = (u16)home.angle.x;

        if (rv == 0xFFFF) {
            return -1;
        }

        return rv;
    }

    int getBitTRB() { return (fopAcM_GetParam(this) & 0x3F0000) >> 16; }
    u32 getPathID() { return (fopAcM_GetParam(this) & 0xFF00) >> 8; }

    void dComIfGs_setRaceGameTime(u32 i_time) {
        g_dComIfG_gameInfo.info.getMiniGame().setRaceGameTime(i_time);
    }

    static char* mCutNameList[10];
    static cutFunc mCutList[10];
private:
    /* 0x0E40 */ mDoExt_McaMorfSO* mFishModelMorf;
    /* 0x0E44 */ mDoExt_McaMorfSO* mLeafModelMorf;
    /* 0x0E48 */ u8 field_0xe48[0xe4c - 0xe48];
    /* 0x0E4C */ J3DModel* field_0xe4c[3];
    /* 0x0E58 */ dCcD_Cyl field_0xe58;
    /* 0x0F94 */ dCcD_Sph field_0xf94[4];
    /* 0x1474 */ u8 mType;
    /* 0x1478 */ daNpcT_ActorMngr_c mActorMngr[8];
    /* 0x14B8 */ daNpcT_Path_c mPath;
    /* 0x14E0 */ dPath* mRoomPath;
    /* 0x14E4 */ ActionFn mpNextAction;
    /* 0x14F0 */ ActionFn mpAction;
    /* 0x14FC */ cXyz field_0x14fc;
    /* 0x1508 */ cXyz field_0x1508;
    /* 0x1514 */ cXyz field_0x1514;
    /* 0x1520 */ cXyz field_0x1520;
    /* 0x152C */ u8 field_0x152c[0x1534 - 0x152c];
    /* 0x1534 */ fpc_ProcID field_0x1534;
    /* 0x1538 */ int field_0x1538;
    /* 0x153C */ int field_0x153c;
    /* 0x1540 */ int field_0x1540;
    /* 0x1544 */ int field_0x1544;
    /* 0x1548 */ int field_0x1548;
    /* 0x154C */ int field_0x154c;
    /* 0x1550 */ int field_0x1550;
    /* 0x1554 */ u8 field_0x1554[0x1558 - 0x1554];
    /* 0x1558 */ daNpcT_pntData_c field_0x1558;
    /* 0x1560 */ int field_0x1560;
    /* 0x1564 */ u8 field_0x1564[0x1568 - 0x1564];
    /* 0x1568 */ f32 field_0x1568;
    /* 0x156C */ s16 field_0x156c;
    /* 0x1570 */ u32 field_0x1570;
    /* 0x1574 */ u8 field_0x1574;
    /* 0x1575 */ u8 field_0x1575;
    /* 0x1576 */ u8 field_0x1576;
    /* 0x1577 */ u8 field_0x1577;
    /* 0x1578 */ u8 field_0x1578;
    /* 0x1579 */ u8 field_0x1579;
    /* 0x157A */ u8 field_0x157a;
    /* 0x157B */ u8 field_0x157b;
    /* 0x157C */ u8 field_0x157c;
    /* 0x157D */ u8 field_0x157d;
    /* 0x157E */ u8 field_0x157e;
    /* 0x157F */ u8 field_0x157f;
    /* 0x1580 */ u8 field_0x1580;
    /* 0x1581 */ u8 field_0x1581;
    /* 0x1582 */ u8 field_0x1582;
    /* 0x1583 */ u8 field_0x1583;
    /* 0x1584 */ u8 field_0x1584;
    /* 0x1585 */ u8 field_0x1585;
    /* 0x1588 */ int field_0x1588;
};

STATIC_ASSERT(sizeof(daNpc_ykM_c) == 0x158c);

#endif /* D_A_NPC_YKM_H */
