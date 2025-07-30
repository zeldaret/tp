#ifndef D_A_NPC_YKM_H
#define D_A_NPC_YKM_H

#include "d/actor/d_a_npc.h"
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
    /* 80B5D6C8 */ virtual ~daNpc_ykM_Param_c();

    static daNpc_ykM_HIOParam const m;
};

class daNpc_ykM_c : public daNpcT_c {
public:
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
    /* 80B5A224 */ void dialogue();
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
    /* 80B5D688 */ u16 getEyeballMaterialNo();
    /* 80B5D690 */ s32 getHeadJointNo();
    /* 80B5D698 */ s32 getNeckJointNo();
    /* 80B5D6A0 */ s32 getBackboneJointNo();
    /* 80B5D6A8 */ BOOL checkChangeJoint(int);
    /* 80B5D6B8 */ BOOL checkRemoveJoint(int);

    u32 getFlowNodeNo() {
        u32 rv = (u16)home.angle.x;

        if (rv == 0xFFFF) {
            return -1;
        }

        return rv;
    }
    int getBitTRB() { return (fopAcM_GetParam(this) & 0x3F0000) >> 16; }
    u32 getPathID() { return (fopAcM_GetParam(this) & 0xFF00) >> 8; }

    static char* mCutNameList[10];
    static cutFunc mCutList[10];
private:
    /* 0x0E40 */ mDoExt_McaMorfSO* field_0xe40;
    /* 0x0E44 */ mDoExt_McaMorfSO* field_0xe44;
    /* 0x0E48 */ u8 field_0xe48[0xe4c - 0xe48];
    /* 0x0E4C */ J3DModel* field_0xe4c[3];
    /* 0x0E58 */ dCcD_Cyl field_0xe58;
    /* 0x0F94 */ dCcD_Sph field_0xf94[4];
    /* 0x1474 */ u8 mType;
    /* 0x1475 */ u8 field_0x1475[0x1478 - 0x1475];
    /* 0x1478 */ daNpcT_ActorMngr_c mActorMngr[8];
    /* 0x14B8 */ daNpcT_Path_c mPath;
    /* 0x14E0 */ dPath* mRoomPath;
    /* 0x14E4 */ ActionFn field_0x14e4;
    /* 0x14F0 */ ActionFn field_0x14f0;
    /* 0x14FC */ u8 field_0x14fc[0x1520 - 0x14fc];
    /* 0x1520 */ cXyz field_0x1520;
    /* 0x152C */ u8 field_0x152c[0x1540 - 0x152c];
    /* 0x1540 */ int field_0x1540;
    /* 0x1544 */ u8 field_0x1544[0x1568 - 0x1544];
    /* 0x1568 */ f32 field_0x1568;
    /* 0x156C */ s16 field_0x156c;
    /* 0x156E */ u8 field_0x156e[0x1570 - 0x156e];
    /* 0x1570 */ u32 field_0x1570;
    /* 0x1574 */ u8 field_0x1574;
    /* 0x1575 */ u8 field_0x1575;
    /* 0x1576 */ u8 field_0x1576;
    /* 0x1577 */ u8 field_0x1577;
    /* 0x1578 */ u8 field_0x1578;
    /* 0x1579 */ u8 field_0x1579;
    /* 0x157A */ u8 field_0x157a;
    /* 0x157B */ u8 field_0x157b;
    /* 0x157C */ u8 field_0x157c[0x157e - 0x157c];
    /* 0x157E */ u8 field_0x157e;
    /* 0x157F */ u8 field_0x157f;
    /* 0x1580 */ u8 field_0x1580;
    /* 0x1581 */ u8 field_0x1581;
    /* 0x1582 */ u8 field_0x1582;
    /* 0x1583 */ u8 field_0x1583[0x1588 - 0x1583];
    /* 0x1588 */ int field_0x1588;
};

STATIC_ASSERT(sizeof(daNpc_ykM_c) == 0x158c);

#endif /* D_A_NPC_YKM_H */
