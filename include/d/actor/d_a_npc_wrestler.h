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
class daNpcWrestler_c : public daNpcF_c {
public:
    typedef int (daNpcWrestler_c::*actionFunc)(void*);

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
    /* 80B30AD8 */ void setAction(bool (daNpcWrestler_c::*)(void*));
    /* 80B30BEC */ void checkArenaInfo();
    /* 80B30CA4 */ void checkArenaSub(fopAc_ac_c*);
    /* 80B30D48 */ void setOnToArena(f32);
    /* 80B30F00 */ void wait(void*);
    /* 80B316F4 */ void talk(void*);
    /* 80B31EB0 */ void demo(void*);
    /* 80B32058 */ int gotoArena(void*);
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

    static u8 mEvtSeqList[84];

private:
    /* 0xB48 */ Z2Creature mSound;
    /* 0xBD8 */ f32* field_0xbd8;
    /* 0xBDC */ f32* field_0xbdc;
    /* 0xBE0 */ daNpcF_MatAnm_c* mpMatAnm;
    /* 0xBE4 */ daNpcF_Lookat_c mLookAt;
    /* 0xC80 */ daNpcF_ActorMngr_c mActorMngr[2];
    /* 0xC90 */ dCcD_Cyl field_0xc90;
    /* 0xDCC */ actionFunc field_0xdcc;
    /* 0xDD8 */ u8 field_0xdd8[0xE04 - 0xdd8];
    /* 0xE04 */ int* field_0xe04;
    /* 0xE08 */ u8 field_0xe08[0xE64 - 0xe08];
    /* 0XE64 */ request_of_phase_process_class mPhase;
    /* 0xE6C */ request_of_phase_process_class mPhase2;
    /* 0xE74 */ int mWrestlerAction;
    /* 0xE78 */ u8 field_0xe78[0xE88 - 0xE78];
    /* 0xE88 */ int mMsgNo;
    /* 0xE8C */ u8 field_0xe8c[0xE96 - 0xE8c];
    /* 0xE96 */ u16 field_0xe96;
    /* 0xE98 */ u8 field_0xe98[0xE9b - 0xE98];
    /* 0xE9B */ u8 mType;
    /* 0xE9C */ u8 field_0xe9c;
    /* 0xE9D */ u8 field_0xe9d[0xEA0 - 0xE9d];
};
STATIC_ASSERT(sizeof(daNpcWrestler_c) == 0xea0);

struct daNpcWrestler_HIOParam {
    /* 0x000 */ daNpcF_HIOParam common;
    /* 0x06C */ s16 field_0x6c;
    /* 0x06E */ s16 field_0x6e;
    /* 0x070 */ s16 field_0x70;
    /* 0x072 */ s16 field_0x72;
    /* 0x074 */ s16 ai_action;              // AI行動 (AI Action)
    /* 0x076 */ s16 ready_appearance_time;  // Ready? 出現時間 (Ready? Appearance Time)
    /* 0x078 */ s16 fight_appearance_time;  // Fight! 出現時間 (Fight! Appearance Time)
    /* 0x07A */ s16 field_0x7a;
    /* 0x07C */ f32 slap_hit_impact;        // 張り手Hit衝撃 (Slap Hit Impact)
    /* 0x080 */ f32 rotation_ratio;         // 回転割り (Rotation Ratio)
    /* 0x084 */ f32 camera_rotation_angle;  // カメラ回転角 (Camera Rotation Angle)
    /* 0x088 */ f32 field_0x88;             // 音 土俵際距離 (Sound, Distance From Edge Of Ring)
    /* 0x08C */ s16 field_0x8c;             // 動 土俵際距離 (Movement, Distance From Edge Of Ring)
    /* 0x08E */ s16 field_0x8e;
    /* 0x090 */ f32 field_0x90;
    /* 0x094 */ f32 field_0x94;
    /* 0x098 */ f32 field_0x98;
    /* 0x09C */ f32 field_0x9c;
    /* 0x0A0 */ f32 field_0xa0;
    /* 0x0A4 */ f32 field_0xa4;
    /* 0x0A8 */ s16 field_0xa8;
    /* 0x0AA */ s16 field_0xaa;
    /* 0x0AC */ s16 field_0xac;
    /* 0x0AE */ s16 field_0xae;
    /* 0x0B0 */ f32 field_0xb0;
    /* 0x0B4 */ s16 field_0xb4;
    /* 0x0B6 */ s16 field_0xb6;
    /* 0x0B8 */ f32 field_0xb8;
    /* 0x0BC */ f32 field_0xbc;
    /* 0x0C0 */ f32 field_0xc0;
    /* 0x0C4 */ f32 field_0xc4;
    /* 0x0C8 */ f32 field_0xc8;
    /* 0x0CC */ f32 field_0xcc;
    /* 0x0D0 */ f32 field_0xd0;
    /* 0x0D4 */ f32 field_0xd4;
    /* 0x0D8 */ f32 field_0xd8;
    /* 0x0DC */ f32 field_0xdc;
    /* 0x0E0 */ f32 field_0xe0;
    /* 0x0E4 */ f32 field_0xe4;
    /* 0x0E8 */ s16 field_0xe8;
    /* 0x0EA */ s16 field_0xea;
    /* 0x0EC */ s16 field_0xec;
    /* 0x0EE */ s16 field_0xee;
    /* 0x0F0 */ f32 field_0xf0;
    /* 0x0F4 */ f32 field_0xf4;
    /* 0x0F8 */ f32 field_0xf8;
    /* 0x0FC */ f32 vertical_speed;         // 垂直速度 (Vertical Speed)
    /* 0x100 */ f32 horizontal_speed;       // 水平速度 (Horizontal Speed)
    /* 0x104 */ f32 field_0x104;
    /* 0x108 */ f32 field_0x108;
    /* 0x10C */ f32 field_0x10c;
    /* 0x110 */ f32 field_0x110;
    /* 0x114 */ f32 field_0x114;
    /* 0x118 */ f32 field_0x118;
    /* 0x11C */ s16 field_0x11c;
    /* 0x11E */ s16 field_0x11e;
    /* 0x120 */ s16 field_0x120;
    /* 0x122 */ s16 field_0x122;
    /* 0x124 */ s16 field_0x124;
    /* 0x126 */ s16 field_0x126;
    /* 0x128 */ f32 field_0x128;
    /* 0x12c */ f32 field_0x12c;
    /* 0x130 */ f32 field_0x130;
    /* 0x134 */ f32 field_0x134;
    /* 0x138 */ f32 field_0x138;
    /* 0x13C */ f32 field_0x13c;
    /* 0x140 */ f32 field_0x140;
    /* 0x144 */ f32 field_0x144;
    /* 0x148 */ f32 field_0x148;
    /* 0x14C */ f32 field_0x14c;
    /* 0x150 */ f32 field_0x150;
    /* 0x154 */ f32 field_0x154;
    /* 0x158 */ f32 field_0x158;
    /* 0x15C */ f32 field_0x15c;
    /* 0x160 */ f32 field_0x160;
    /* 0x164 */ f32 field_0x164;
    /* 0x168 */ s16 field_0x168;
    /* 0x16A */ s16 field_0x16a;
    /* 0x16C */ s16 field_0x16c;
    /* 0x16E */ s16 field_0x16e;
    /* 0x170 */ s16 field_0x170;
    /* 0x172 */ s16 field_0x172;
    /* 0x174 */ f32 field_0x174;
    /* 0x178 */ f32 field_0x178;
    /* 0x17C */ f32 field_0x17c;
    /* 0x180 */ f32 field_0x180;
    /* 0x184 */ f32 field_0x184;
    /* 0x188 */ f32 field_0x188;
    /* 0x18C */ f32 field_0x18c;
    /* 0x190 */ f32 field_0x190;
};

class daNpcWrestler_Param_c {
public:
    /* 80B41670 */ ~daNpcWrestler_Param_c();

    static const daNpcWrestler_HIOParam m;
};


#endif /* D_A_NPC_WRESTLER_H */
