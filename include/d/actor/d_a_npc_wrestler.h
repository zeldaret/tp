#ifndef D_A_NPC_WRESTLER_H
#define D_A_NPC_WRESTLER_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpcWrestler_c
 * @brief Goron (Fat)
 *
 * @details
 *
 */

struct daNpcWrestler_HIOParamSub {
    /* 0x00 */ f32 field_0x0;
    /* 0x04 */ f32 field_0x4;
    /* 0x08 */ f32 field_0x8;
    /* 0x0C */ f32 field_0xc;                   // リアル影サイズ (Real Shadow Size)
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ f32 field_0x14;                  // 見合う距離 (Right Distance)
    /* 0x18 */ f32 grapple_distance;            // 組み合い距離 (Grapple Distance)
    /* 0x1C */ f32 field_0x1c;                  // 再配置距離 (Reconfiguration Distance)
    /* 0x20 */ s16 lateral_movement_time;       // 横移動時間 (Lateral Movement Time)
    /* 0x22 */ s16 horizontal_movement_speed;   // 横移動速度 (Horizontal Movement Speed)
    /* 0x24 */ s16 stagger_time;                // ふらふら時間 (Stagger Time)
    /* 0x26 */ s16 wait_time;                   // 待ち時間 (Wait Time)
    /* 0x28 */ s16 field_0x28;                  // 曲がり限界 (Bending Limit)
    /* 0x2C */ f32 lateral_movement_chance;     //  横移動 の確率 (Lateral Movement Chance)
    /* 0x30 */ f32 hit_chance;                  //  張り手 の確率 (Hit Chance)
    /* 0x34 */ f32 tackle_chance;               // タックルの確率 (Tackle Chance)
    /* 0x38 */ f32 wait_chance;                 //  待  機 の確率 (Wait Chance)
    /* 0x3C */ f32 lateral_movement_chance_2;   //  横移動 の確率 (Lateral Movement Chance)
    /* 0x40 */ f32 hit_chance_2;                //  張り手 の確率 (Hit Chance)
    /* 0x44 */ f32 tackle_chance_2;             // タックルの確率 (Tackle Chance)
    /* 0x48 */ f32 wait_chance_2;               //  待  機 の確率 (Wait Chance)
};

 struct daNpcWrestler_HIOParam {
    /* 0x00 */ daNpcF_HIOParam common;
    /* 0x6C */ s16 ai_action;              // AI行動 (AI Action)
    /* 0x6E */ s16 ready_appearance_time;  // Ready? 出現時間 (Ready? Appearance Time)
    /* 0x70 */ s16 fight_appearance_time;  // Fight! 出現時間 (Fight! Appearance Time)
    /* 0x72 */ s16 field_0x72;
    /* 0x74 */ s32 slap_hit_impact;        // 張り手Hit衝撃 (Slap Hit Impact)
    /* 0x78 */ s16 rotation;               // 回転割り (Rotating)
    /* 0x7A */ s16 field_0x7a;
    /* 0x7C */ f32 camera_rotation_angle;  // カメラ回転角 (Camera Rotation Angle)
    /* 0x80 */ f32 field_0x80;             // 音 土俵際距離 (Sound, Distance From Edge Of Ring)
    /* 0x84 */ f32 field_0x84;             // 動 土俵際距離 (Movement, Distance From Edge Of Ring)
    /* 0x88 */ f32 field_0x88;
    /* 0x8C */ s16 field_0x8c;
    /* 0x8E */ s16 field_0x8e;
    /* 0x90 */ f32 field_0x90;
    /* 0x94 */ f32 field_0x94;
    /* 0x98 */ f32 field_0x98;
    /* 0x9C */ f32 field_0x9c;
    /* 0xA0 */ f32 field_0xa0;
    /* 0xA4 */ f32 field_0xa4;
    /* 0xA8 */ s16 field_0xa8;
    /* 0xAA */ s16 field_0xaa;
    /* 0xAC */ s16 field_0xac;
    /* 0xAE */ s16 field_0xae;
    /* 0xB0 */ f32 field_0xb0;
    /* 0xB4 */ s16 field_0xb4;
    /* 0xB6 */ s16 field_0xb6;
    /* 0xB8 */ f32 field_0xb8;
    /* 0xBC */ f32 field_0xbc;
    /* 0xC0 */ f32 field_0xc0;
    /* 0xC4 */ f32 field_0xc4;
    /* 0xC8 */ f32 field_0xc8;
    /* 0xCC */ f32 field_0xcc;
    /* 0xD0 */ f32 field_0xd0;
    /* 0xD4 */ f32 field_0xd4;
    /* 0xD8 */ f32 field_0xd8;
    /* 0xDC */ f32 field_0xdc;
    /* 0xE0 */ f32 field_0xe0;
    /* 0xE4 */ f32 field_0xe4;
    /* 0xE8 */ s16 field_0xe8;
    /* 0xEA */ s16 field_0xea;
    /* 0xEC */ s16 field_0xec;
    /* 0xEE */ s16 field_0xee;
    /* 0xF0 */ f32 field_0xf0;
    /* 0xF4 */ f32 vertical_speed;         // 垂直速度 (Vertical Speed)
    /* 0xF8 */ f32 horizontal_speed;       // 水平速度 (Horizontal Speed)
    /* 0xFC */ daNpcWrestler_HIOParamSub mTypeParams[2];
};

class daNpcWrestler_Param_c {
public:
    /* 80B41670 */ ~daNpcWrestler_Param_c();

    static daNpcWrestler_HIOParam const m;
};

class daNpcWrestler_HIO_Node_c: public JORReflexible {
public:
    daNpcWrestler_HIO_Node_c() {}
    virtual ~daNpcWrestler_HIO_Node_c() {}

    void genMessage(JORMContext*);
    void setParam(daNpcWrestler_HIOParamSub* param_1) { field_0x4 = param_1; }

    /* 0x04 */ daNpcWrestler_HIOParamSub* field_0x4;
};

class daNpcWrestler_HIO_c
#ifdef DEBUG
: public mDoHIO_entry_c
#endif
{
public:
    daNpcWrestler_HIO_c() {
        for (int i = 0; i < 2; i++) {
            field_0x19c[i].setParam(&field_0x8.mTypeParams[i]);
        }
    }
    virtual ~daNpcWrestler_HIO_c() {}

    void genMessage(JORMContext*);
    void listenPropertyEvent(JORPropertyEvent*);

    /* 0x004 */ u8 field_0x4[0x8 - 0x4];
    /* 0x008 */ daNpcWrestler_HIOParam field_0x8;
    /* 0x19C */ daNpcWrestler_HIO_Node_c field_0x19c[2];
};

class daNpcWrestler_c : public daNpcF_c {
public:
    typedef bool (daNpcWrestler_c::*actionFunc)(void*);

    /* 80B2F28C */ daNpcWrestler_c();
    /* 80B2F688 */ cPhs__Step Create();
    /* 80B2F974 */ int CreateHeap();
    /* 80B2FDB0 */ int Delete();
    /* 80B2FDE4 */ int Execute();
    /* 80B2FE1C */ int Draw();
    /* 80B2FE84 */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 80B30150 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80B30170 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80B301BC */ BOOL checkStartUp();
    /* 80B308B0 */ void reset();
    /* 80B30AD8 */ int setAction(actionFunc);
    /* 80B30BEC */ BOOL checkArenaInfo();
    /* 80B30CA4 */ bool checkArenaSub(fopAc_ac_c*);
    /* 80B30D48 */ void setOnToArena(f32);
    /* 80B30F00 */ bool wait(void*);
    /* 80B316F4 */ void talk(void*);
    /* 80B31EB0 */ void demo(void*);
    /* 80B32058 */ bool gotoArena(void*);
    /* 80B32444 */ void gotoLiving(void*);
    /* 80B32850 */ void sumouReady(void*);
    /* 80B331CC */ void sumouWait(void*);
    /* 80B339EC */ void checkOutOfArenaP();
    /* 80B33B3C */ void setNextAction();
    /* 80B34654 */ void sumouPunchHit(void*);
    /* 80B34CD0 */ void sumouPunchChaseHit(void*);
    /* 80B35364 */ void sumouPunchMiss(void*);
    /* 80B35780 */ void checkOutOfArenaW();
    /* 80B358F0 */ void getJointPos(int);
    /* 80B35968 */ void sumouPunchDraw(void*);
    /* 80B3606C */ void sumouTackleHit(void*);
    /* 80B36908 */ void sumouTackleMiss(void*);
    /* 80B36C8C */ void sumouTackleDraw(void*);
    /* 80B37270 */ void sumouSideStep(void*);
    /* 80B378F4 */ void sumouLostBalance(void*);
    /* 80B37C30 */ void sumouPunchShock(void*);
    /* 80B37FB8 */ void sumouPunchChaseShock(void*);
    /* 80B38518 */ void sumouPunchStagger(void*);
    /* 80B389A4 */ void sumouTackleShock(void*);
    /* 80B38C90 */ void sumouTackleStagger(void*);
    /* 80B39334 */ void sumouTackleStaggerRelease(void*);
    /* 80B39554 */ void sumouTacklePush(void*);
    /* 80B39C18 */ void sumouTackleRelease(void*);
    /* 80B39F88 */ void demoSumouReady(void*);
    /* 80B3AE24 */ void demoSumouWin(void*);
    /* 80B3B4B4 */ void demoSumouLose(void*);
    /* 80B3BC84 */ void demoSumouWin2(void*);
    /* 80B3C278 */ void demoSumouLose2(void*);
    /* 80B3CA2C */ void demoSumouUnilateralWin(void*);
    /* 80B3D0C0 */ void demoTalkAfterLose(void*);
    /* 80B3D584 */ void EvCut_grDSEntry(int);
    /* 80B3DB50 */ void EvCut_grDSEntry2(int);
    /* 80B3DCE8 */ void EvCut_grDSEntry3_4(int);
    /* 80B3E0FC */ void EvCut_grDSEntry5(int);
    /* 80B3E584 */ void EvCut_grDSLose(int);
    /* 80B3EF10 */ void setWrestlerVoice();
    /* 80B3FCE8 */ void playMotion();
    /* 80B40B3C */ void lookat();

    /* 80B2F4A0 */ virtual ~daNpcWrestler_c() {}
    /* 80B3EAE4 */ void setParam();
    /* 80B3EB94 */ BOOL main();
    /* 80B404FC */ BOOL ctrlBtk();
    /* 80B4166C */ void adjustShapeAngle();
    /* 80B405E8 */ void setAttnPos();
    /* 80B3023C */ bool setExpressionAnm(int, bool);
    /* 80B30654 */ bool setExpressionBtp(int);
    /* 80B316C8 */ void setExpression(int, f32);
    /* 80B3074C */ void setMotionAnm(int, f32);
    /* 80B31680 */ void setMotion(int, f32, int);
    /* 80B40D1C */ BOOL drawDbgInfo();
    /* 80B40D24 */ void drawOtherMdls();

    int getMessageNo() { return fopAcM_GetParam(this) >> 8; }

    int getWrestlerAction() { return mWrestlerAction; }
    u8 getType() { return subtype & 0x7F; }
    u8 getWrestlerType() { return getType(); }

    BOOL chkAction(actionFunc i_action) {
        return i_action == field_0xdcc;
    }

    u32 getStatusNo() { return fopAcM_GetParam(this) >> 24; }

    static u8 mEvtSeqList[84];

private:
    /* 0xB48 */ Z2Creature mSound;
    /* 0xBD8 */ const daNpcWrestler_HIOParam* field_0xbd8;
    /* 0xBDC */ const daNpcWrestler_HIOParamSub* field_0xbdc;
    /* 0xBE0 */ daNpcF_MatAnm_c* mpMatAnm;
    /* 0xBE4 */ daNpcF_Lookat_c mLookAt;
    /* 0xC80 */ daNpcF_ActorMngr_c mActorMngr[2];
    /* 0xC90 */ dCcD_Cyl field_0xc90;
    /* 0xDCC */ actionFunc field_0xdcc;
    /* 0xDD8 */ u8 field_0xdd8[0xE02 - 0xdd8];
    /* 0xE02 */ u8 field_0xe02;
    /* 0xE03 */ u8 field_0xe03;
    /* 0xE04 */ int* field_0xe04;
    /* 0xE08 */ u8 field_0xe08[0xE40 - 0xe08];
    /* 0xE40 */ cXyz mArenaPos;
    /* 0xE4C */ u8 field_0xe4c[0xE64 - 0xe4c];
    /* 0XE64 */ request_of_phase_process_class mPhase;
    /* 0xE6C */ request_of_phase_process_class mPhase2;
    /* 0xE74 */ int mWrestlerAction;
    /* 0xE78 */ int field_0xe78;
    /* 0xE7C */ u32 mStatusNo;
    /* 0xE80 */ int field_0xe80;
    /* 0xE84 */ int field_0xe84;
    /* 0xE88 */ int mMsgNo;
    /* 0xE8C */ f32 field_0xe8c;
    /* 0xE90 */ s16 field_0xe90;
    /* 0xE92 */ u8 field_0xe92[0xE96 - 0xE92];
    /* 0xE96 */ u16 field_0xe96;
    /* 0xE98 */ u8 field_0xe98[0xE9b - 0xE98];
    /* 0xE9B */ u8 mType;
    /* 0xE9C */ u8 field_0xe9c;
    /* 0xE9D */ u8 field_0xe9d[0xEA0 - 0xE9d];
};
STATIC_ASSERT(sizeof(daNpcWrestler_c) == 0xea0);

#endif /* D_A_NPC_WRESTLER_H */
