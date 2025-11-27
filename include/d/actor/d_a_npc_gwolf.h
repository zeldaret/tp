#ifndef D_A_NPC_GWOLF_H
#define D_A_NPC_GWOLF_H

#include "d/actor/d_a_npc4.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_GWolf_c
 * @brief Golden Wolf
 *
 * @details
 *
*/

struct daNpc_GWolf_HIOParam {
    /* 0x00 */ daNpcF_HIOParam common;
    /* 0x6C */ f32 attack_spd_horizontal;       // 攻撃速度横 - Attack Speed Horizontal
    /* 0x70 */ f32 attack_spd_vertical;         // 攻撃速度縦 - Attack Speed Vertical
    /* 0x74 */ f32 attack_spd_horizontal_horse; // 攻撃速度横(馬) - Attack Speed Horizontal (Horse)
    /* 0x78 */ f32 attack_spd_vertical_horse;   // 攻撃速度縦(馬) - Attack Speed Vertical (Horse)  
    /* 0x7C */ f32 demo_start_dist;             // デモ開始距離 - Demo Start Distance
    /* 0x80 */ f32 blur_scale;                  // ブラーのスケール - Blur Scale
    /* 0x84 */ f32 blur_opacity;                // ブラーの透明度 - Blur Opacity
    /* 0x88 */ f32 warp_start_dist;             // ワープ開始距離 - Warp Start Distance
};

class daNpc_GWolf_HIO_c : public mDoHIO_entry_c {
    /* 0x8 */ daNpc_GWolf_HIOParam param;
};

class daNpc_GWolf_Param_c {
public:
    /* 809F8488 */ virtual ~daNpc_GWolf_Param_c() {}

    static daNpc_GWolf_HIOParam const m;
};

class daNpc_GWolf_c : public daNpcF_c {
public:
    typedef BOOL (daNpc_GWolf_c::*actionFunc)(void*);
    typedef BOOL (daNpc_GWolf_c::*cutFunc)(int);

    /* 809F30AC */ daNpc_GWolf_c();
    /* 809F34C0 */ cPhs__Step create();
    /* 809F37C0 */ int CreateHeap();
    /* 809F3BD8 */ int Delete();
    /* 809F3C0C */ int Execute();
    /* 809F3C2C */ int Draw();
    /* 809F3CBC */ int draw(int, int, f32, GXColorS10*, int);
    /* 809F3FB8 */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 809F41EC */ static int createHeapCallBack(fopAc_ac_c*);
    /* 809F420C */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 809F420C */ u8 getTypeFromParam();
    /* 809F4E84 */ int getModeFromParam();
    /* 809F4F00 */ BOOL isDelete();
    /* 809F4FF4 */ void reset();
    /* 809F520C */ void playMotion();
    /* 809F55D0 */ BOOL chkAction(actionFunc);
    /* 809F55FC */ BOOL setAction(actionFunc);
    /* 809F56A4 */ BOOL selectAction();
    /* 809F5770 */ void doNormalAction(int);
    /* 809F5884 */ BOOL doEvent();
    /* 809F5B60 */ void setLookMode(int);
    /* 809F5B84 */ void lookat();
    /* 809F5E0C */ BOOL ECut_attackWarp(int);
    /* 809F6548 */ BOOL ECut_attackWarpHorse(int);
    /* 809F6BFC */ BOOL ECut_howlingSessionA(int);
    /* 809F70A8 */ void meetGWolfSkip();
    /* 809F70EC */ BOOL ECut_meetGWolf(int);
    /* 809F71E0 */ BOOL wait(void*);
    /* 809F75C0 */ BOOL waitHowling(void*);
    /* 809F775C */ BOOL waitBrave(void*);
    /* 809F77E4 */ BOOL talk(void*);
    /* 809F797C */ BOOL test(void*);
    /* 809F7A30 */ s16 getGroundSlope(dBgS_ObjAcch&, s16);

    /* 809F32C0 */ virtual ~daNpc_GWolf_c();
    /* 809F4258 */ virtual void setParam();
    /* 809F4390 */ virtual BOOL main();
    /* 809F4558 */ virtual BOOL ctrlBtk();
    /* 809F4638 */ virtual void adjustShapeAngle();
    /* 809F4698 */ virtual void setAttnPos();
    /* 809F4BB0 */ virtual bool setExpressionAnm(int, bool);
    /* 809F4BB8 */ virtual void setExpression(int, f32);
    /* 809F4BBC */ virtual void setMotionAnm(int, f32);
    /* 809F4DE8 */ virtual void setMotion(int, f32, int);
    /* 809F4E2C */ virtual BOOL drawDbgInfo();
    /* 809F4E34 */ virtual void drawOtherMdls();

    int getSwBitFromParam() { return (fopAcM_GetParam(this) & 0xFF0000) >> 16; }
    u16 getSaveTableFromParam() { return home.angle.z & 0xFF; }
    void setHowlingEndFlag() { field_0xe1c = 2; }
    void setHowlingFlag() { field_0xe1c = 1; }

    static char* mEvtCutNameList[5];
    static cutFunc mEvtCutList[5];

private:
    /* 0xB48 */ Z2Creature mSound;
    /* 0xBD8 */ daNpcF_MatAnm_c* mpMatAnm;
    /* 0xBDC */ daNpcF_Lookat_c mLookat;
    /* 0xC78 */ daNpcF_ActorMngr_c mActorMngrs[2];
    /* 0xC88 */ daNpc_GWolf_HIO_c* mHIO;
    /* 0xC8C */ dCcD_Cyl mCyl;
    /* 0xDC8 */ actionFunc mNextAction;
    /* 0xDD4 */ actionFunc mAction;
    /* 0xDE0 */ request_of_phase_process_class mPhases[3];
    /* 0xDF8 */ int field_0xdf8;
    /* 0xDFC */ int field_0xdfc;
    /* 0xE00 */ int field_0xe00;
    /* 0xE04 */ int field_0xe04;
    /* 0xE08 */ int field_0xe08;
    /* 0xE0C */ s16 mLookMode;
    /* 0xE0E */ u16 mMode;
    /* 0xE10 */ u8 mType;
    /* 0xE11 */ s8 mParamMode;
    /* 0xE14 */ int mExitId;
    /* 0xE18 */ int mAnm;
    /* 0xE1C */ u8 field_0xe1c;
    /* 0xE1D */ u8 field_0xe1d;
    /* 0xE1E */ u8 swBit;
    /* 0xE1F */ u8 mSaveTable;
};

STATIC_ASSERT(sizeof(daNpc_GWolf_c) == 0xe20);

#endif /* D_A_NPC_GWOLF_H */
