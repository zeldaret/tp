#ifndef D_A_NPC_WRESTLER_H
#define D_A_NPC_WRESTLER_H

#include "d/actor/d_a_npc.h"
#include "d/actor/d_a_npc4.h"

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
    /* 0x04 */ f32 mWallH;
    /* 0x08 */ f32 mWallR;
    /* 0x0C */ f32 real_shadow_size;                   // リアル影サイズ (Real Shadow Size)
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ f32 reasonable_distance;                  // 見合う距離 (Right Distance)
    /* 0x18 */ f32 grapple_distance;            // 組み合い距離 (Grapple Distance)
    /* 0x1C */ f32 reconfig_distance;                  // 再配置距離 (Reconfiguration Distance)
    /* 0x20 */ s16 lateral_movement_time;       // 横移動時間 (Lateral Movement Time)
    /* 0x22 */ s16 horizontal_movement_speed;   // 横移動速度 (Horizontal Movement Speed)
    /* 0x24 */ s16 stagger_time;                // ふらふら時間 (Stagger Time)
    /* 0x26 */ s16 wait_time;                   // 待ち時間 (Wait Time)
    /* 0x28 */ s16 bending_limit;                  // 曲がり限界 (Bending Limit)
    /* 0x2C */ struct {
        f32 lateral_movement_chance;            //  横移動 の確率 (Lateral Movement Chance)
        f32 hit_chance;                         //  張り手 の確率 (Hit Chance)
        f32 tackle_chance;                      // タックルの確率 (Tackle Chance)
        f32 wait_chance;                        //  待  機 の確率 (Wait Chance)
    } chances[2];
};

 struct daNpcWrestler_HIOParam {
    /* 0x00 */ daNpcF_HIOParam common;
    /* 0x6C */ s16 ai_action;              // AI行動 (AI Action)
    /* 0x6E */ s16 ready_appearance_time;  // Ready? 出現時間 (Ready? Appearance Time)
    /* 0x70 */ s16 fight_appearance_time;  // Fight! 出現時間 (Fight! Appearance Time)
    /* 0x74 */ s32 slap_hit_impact;        // 張り手Hit衝撃 (Slap Hit Impact)
    /* 0x78 */ s16 rotation;               // 回転割り (Rotating)
    /* 0x7C */ f32 camera_rotation_angle;  // カメラ回転角 (Camera Rotation Angle)
    /* 0x80 */ f32 ring_edge_sound;             // 音 土俵際距離 (Sound, Distance From Edge Of Ring)
    /* 0x84 */ f32 ring_edge_movement;             // 動 土俵際距離 (Movement, Distance From Edge Of Ring)
    /* 0x88 */ f32 fade_speed;
    /* 0x8C */ s16 field_0x8c;
    /* 0x90 */ f32 field_0x90;
    /* 0x94 */ f32 field_0x94;
    /* 0x98 */ f32 field_0x98;
    /* 0x9C */ f32 field_0x9c;
    /* 0xA0 */ f32 field_0xa0;
    /* 0xA4 */ f32 field_0xa4;
    /* 0xA8 */ s16 field_0xa8;
    /* 0xAA */ s16 field_0xaa;
    /* 0xAC */ s16 field_0xac;
    /* 0xB0 */ f32 field_0xb0;
    /* 0xB4 */ s16 field_0xb4;
    /* 0xB6 */ s16 field_0xb6;
    /* 0xB8 */ Vec field_0xb8;
    /* 0xC4 */ Vec field_0xc4;
    /* 0xD0 */ Vec field_0xd0;
    /* 0xDC */ Vec field_0xdc;
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
    /* 80B41670 */ virtual ~daNpcWrestler_Param_c() {}

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

class daNpcWrestler_HIO_c : public mDoHIO_entry_c {
public:
    daNpcWrestler_HIO_c();
    virtual ~daNpcWrestler_HIO_c() {}

    void listenPropertyEvent(const JORPropertyEvent*);
    void genMessage(JORMContext*);

    /* 0x008 */ daNpcWrestler_HIOParam m;
    /* 0x19C */ daNpcWrestler_HIO_Node_c field_0x19c[2];
};

#if DEBUG
#define NPC_WRESTLER_HIO_CLASS daNpcWrestler_HIO_c
#else
#define NPC_WRESTLER_HIO_CLASS daNpcWrestler_Param_c
#endif

struct WrestlerParamList {
    daNpc_GetParam1* bck_list;
    daNpc_GetParam2* face_list;
    daNpc_GetParam1* btp_list;
    daNpc_GetParam1* btk_list;
};

struct DemoCamera_c {
    cXyz mDemoCamCenter;
    cXyz mDemoCamEye;
    cXyz field_0x18;
    cXyz field_0x24;
    cXyz field_0x30;
    cXyz field_0x3c;
};

class daNpcWrestler_c : public daNpcF_c {
public:
    typedef bool (daNpcWrestler_c::*actionFunc)(void*);
    typedef BOOL (daNpcWrestler_c::*EventFn)(int);

    /* 80B2F28C */ daNpcWrestler_c();
    /* 80B2F688 */ cPhs__Step Create();
    /* 80B2F974 */ int CreateHeap();
    /* 80B2FDB0 */ int Delete();
    /* 80B2FDE4 */ int Execute();
    /* 80B2FE1C */ int Draw();
    /* 80B2FE84 */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 80B30150 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80B30170 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80B301BC */ bool checkStartUp();
    /* 80B308B0 */ void reset();
    /* 80B30AD8 */ inline int setAction(actionFunc);
    /* 80B30BEC */ void checkArenaInfo();
    /* 80B30CA4 */ bool checkArenaSub(fopAc_ac_c*);
    /* 80B30D48 */ void setOnToArena(f32);
    /* 80B30F00 */ inline bool wait(void*);
    /* 80B316F4 */ inline bool talk(void*);
    /* 80B31EB0 */ inline bool demo(void*);
    /* 80B32058 */ inline bool gotoArena(void*);
    /* 80B32444 */ inline bool gotoLiving(void*);
    /* 80B32850 */ inline bool sumouReady(void*);
    /* 80B331CC */ inline bool sumouWait(void*);
    /* 80B339EC */ inline bool checkOutOfArenaP();
    /* 80B33B3C */ inline bool setNextAction();
    /* 80B34654 */ inline bool sumouPunchHit(void*);
    /* 80B34CD0 */ inline bool sumouPunchChaseHit(void*);
    /* 80B35364 */ inline bool sumouPunchMiss(void*);
    /* 80B35780 */ inline bool checkOutOfArenaW();
    /* 80B358F0 */ cXyz getJointPos(int);
    /* 80B35968 */ inline bool sumouPunchDraw(void*);
    /* 80B3606C */ inline bool sumouTackleHit(void*);
    /* 80B36908 */ inline bool sumouTackleMiss(void*);
    /* 80B36C8C */ inline bool sumouTackleDraw(void*);
    /* 80B37270 */ inline bool sumouSideStep(void*);
    /* 80B378F4 */ inline bool sumouLostBalance(void*);
    /* 80B37C30 */ inline bool sumouPunchShock(void*);
    /* 80B37FB8 */ inline bool sumouPunchChaseShock(void*);
    /* 80B38518 */ inline bool sumouPunchStagger(void*);
    /* 80B389A4 */ inline bool sumouTackleShock(void*);
    /* 80B38C90 */ inline bool sumouTackleStagger(void*);
    /* 80B39334 */ inline bool sumouTackleStaggerRelease(void*);
    /* 80B39554 */ inline bool sumouTacklePush(void*);
    /* 80B39C18 */ inline bool sumouTackleRelease(void*);
    /* 80B39F88 */ inline bool demoSumouReady(void*);
    /* 80B3AE24 */ inline bool demoSumouWin(void*);
    /* 80B3B4B4 */ inline bool demoSumouLose(void*);
    /* 80B3BC84 */ inline bool demoSumouWin2(void*);
    /* 80B3C278 */ inline bool demoSumouLose2(void*);
    /* 80B3CA2C */ inline bool demoSumouUnilateralWin(void*);
    /* 80B3D0C0 */ inline bool demoTalkAfterLose(void*);
    /* 80B3D584 */ inline BOOL EvCut_grDSEntry(int);
    /* 80B3DB50 */ inline BOOL EvCut_grDSEntry2(int);
    /* 80B3DCE8 */ inline BOOL EvCut_grDSEntry3_4(int);
    /* 80B3E0FC */ inline BOOL EvCut_grDSEntry5(int);
    /* 80B3E584 */ inline BOOL EvCut_grDSLose(int);
    /* 80B3EF10 */ inline void setWrestlerVoice();
    /* 80B3FCE8 */ inline void playMotion();
    /* 80B40B3C */ inline void lookat();

    /* 80B2F4A0 */ virtual ~daNpcWrestler_c();
    /* 80B3EAE4 */ inline void setParam();
    /* 80B3EB94 */ inline BOOL main();
    /* 80B404FC */ inline BOOL ctrlBtk();
    /* 80B4166C */ void adjustShapeAngle() {}
    /* 80B405E8 */ inline void setAttnPos();
    /* 80B3023C */ inline bool setExpressionAnm(int, bool);
    /* 80B30654 */ inline bool setExpressionBtp(int);
    /* 80B316C8 */ inline void setExpression(int, f32);
    /* 80B3074C */ inline void setMotionAnm(int, f32);
    /* 80B31680 */ void setMotion(int, f32, int);
    /* 80B40D1C */ inline BOOL drawDbgInfo();
    /* 80B40D24 */ inline void drawOtherMdls();

    s16 getMessageNo() { return (fopAcM_GetParam(this) >> 8) & 0xFFFF; }
    int getWrestlerAction() { return mWrestlerAction; }
    u8 getType() { return argument & 0x7F; }
    u8 getWrestlerType() { return getType(); }
    bool chkAction(actionFunc i_action) { return i_action == field_0xdcc; }
    inline bool selectAction();
    s8 getArenaNo() { return (u8)fopAcM_GetParam(this); }
    u32 getStatusNo() { return fopAcM_GetParam(this) >> 24; }
    inline void setLookMode(int);
    inline BOOL chkFindPlayer();
    inline BOOL step(s16, int);
    inline bool setTalkAngle();
    inline void setStepAngle();
    inline void setExpressionTalkAfter();
    void initTalkAngle() { mTurnMode = 0; }
    inline void setNextSumouEvent(int);
    inline void setBackToLiving();
    void offWrestlerNoDraw() { mWrestlerNoDraw = 0; }
    void onWrestlerNoDraw() { mWrestlerNoDraw = 1; }
    inline void initDemoCamera_ArenaSide();
    inline void sumouAI();
    inline s16 oppositeToPlayer();
    inline void correctGraspPosAngle(bool);
    inline void initDemoCamera_ReadyLink();
    inline void initDemoCamera_ReadyWrestler();
    inline void playExpression();

    static EventFn mEvtSeqList[7];

private:
    /* 0xB48 */ Z2Creature mSound;
    /* 0xBD8 */ const daNpcWrestler_HIOParam* field_0xbd8;
    /* 0xBDC */ const daNpcWrestler_HIOParamSub* field_0xbdc;
    /* 0xBE0 */ daNpcF_MatAnm_c* mpMatAnm;
    /* 0xBE4 */ daNpcF_Lookat_c mLookAt;
    /* 0xC80 */ daNpcF_ActorMngr_c mActorMngr[2];
    /* 0xC90 */ dCcD_Cyl field_0xc90;
    /* 0xDCC */ actionFunc field_0xdcc;
    /* 0xDD8 */ JPABaseEmitter* field_0xdd8;
    /* 0xDDC */ JPABaseEmitter* field_0xddc;
    /* 0xDE0 */ JPABaseEmitter* field_0xde0;
    /* 0xDE4 */ JPABaseEmitter* field_0xde4;
    /* 0xDE8 */ u32 field_0xde8;
    /* 0xDEC */ u32 field_0xdec;
    /* 0xDF0 */ Vec mArenaPos;
    /* 0xDFC */ f32 mArenaExtent;
    /* 0xE00 */ s16 mArenaAngle;
    /* 0xE02 */ struct {
        u8 chkFlag;
    } mArenaInfo;
    /* 0xE03 */ u8 field_0xe03;
    /* 0xE04 */ WrestlerParamList* field_0xe04;
    /* 0xE08 */ DemoCamera_c mDemoCam;
    /* 0xE50 */ f32 mDemoCamFovy;
    /* 0xE54 */ f32 field_0xe54;
    /* 0xE58 */ f32 field_0xe58;
    /* 0xE5C */ s16 field_0xe5c;
    /* 0xE5E */ s16 field_0xe5e;
    /* 0xE60 */ u8 field_0xe60[0xe64 - 0xe60];
    /* 0XE64 */ request_of_phase_process_class mPhase;
    /* 0xE6C */ request_of_phase_process_class mPhase2;
    /* 0xE74 */ int mWrestlerAction;
    /* 0xE78 */ fpc_ProcID field_0xe78;
    /* 0xE7C */ int mItemNo;
    /* 0xE80 */ int field_0xe80;
    /* 0xE84 */ int field_0xe84;
    /* 0xE88 */ int mMsgNo;
    /* 0xE8C */ f32 field_0xe8c;
    /* 0xE90 */ s16 mLookMode;
    /* 0xE92 */ s16 field_0xe92;
    /* 0xE94 */ s16 mStepAngle;
    /* 0xE96 */ u16 field_0xe96;
    /* 0xE98 */ u8 field_0xe98;
    /* 0xE99 */ u8 field_0xe99;
    /* 0xE9A */ u8 field_0xe9a;
    /* 0xE9B */ u8 mType;
    /* 0xE9C */ u8 mWrestlerNoDraw;
};
STATIC_ASSERT(sizeof(daNpcWrestler_c) == 0xea0);

#endif /* D_A_NPC_WRESTLER_H */
