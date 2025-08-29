#ifndef D_A_NPC_TKS_H
#define D_A_NPC_TKS_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpcTks_c
 * @brief Ooccoo
 *
 * @details
 *
*/

struct daNpcTks_HIOParam {
    /* 0x00 */ daNpcF_HIOParam common;
    /* 0x6C */ s32 hide_time_1;         // Hide 時間 - Hide Time
    /* 0x70 */ s32 hide_time_2;         // Hide 時間 - Hide Time
    /* 0x74 */ s32 show_up_wait_time_1; // ShowUpWait時間 - Show Up Wait Time
    /* 0x78 */ s32 show_up_wait_time_2; // ShowUpWait時間 - Show Up Wait Time
    /* 0x7C */ f32 area_a_dist;         // エリアＡ距離 - Area A Distance
    /* 0x80 */ f32 area_b_dist;         // エリアＢ距離 - Area B Distance
    /* 0x84 */ f32 jar_enter_exit_spd;  // 壷出入り速度 - Jar Enter and Exit Speed      
    /* 0x88 */ f32 launch_spd;          // 打ち上げ速度 - Launch Speed
    /* 0x8C */ f32 movement_spd;        // 移動速度 - Movement Speed
    /* 0x90 */ f32 walk_spd;            // 歩行速度 - Walk Speed
    /* 0x94 */ f32 run_spd;             // 走行速度 - Run Speed
};

class daNpcTks_HIO_c
#ifdef DEBUG
: public mDoHIO_entry_c
#endif
{
    /* 0x8 */ daNpcTks_HIOParam param;
};

class daNpcTks_Param_c {
public:
    /* 80B1DCEC */ virtual ~daNpcTks_Param_c() {}

    static daNpcTks_HIOParam const m;
};

class daNpcTksTsubo_c {
public:
    /* 0x000 */ mDoExt_McaMorfSO* mpModelMorf;
    /* 0x004 */ dKy_tevstr_c mTevStr;
    /* 0x38C */ Z2Creature mSound;
    /* 0x41C */ dCcD_Cyl mCyl;
    /* 0x558 */ cBgS_PolyInfo polyBase;
    /* 0x568 */ f32 mGroundH;
    /* 0x56C */ u32 mShadowKey;
    /* 0x570 */ u32 mAnmFlags;
    /* 0x574 */ cXyz mPos;
    /* 0x580 */ csXyz mAngle;
    /* 0x586 */ u8 field_0x586;
    /* 0x587 */ u8 mTsuboType;
};

class daNpcTks_c : public daNpcF_c {
public:
    typedef void (daNpcTks_c::*actionFunc)();

    /* 80B1462C */ daNpcTks_c();
    /* 80B14844 */ ~daNpcTks_c();
    /* 80B14AF8 */ cPhs__Step Create();
    /* 80B14ED0 */ int CreateHeap();
    /* 80B153D8 */ int Delete();
    /* 80B1540C */ int Execute();
    /* 80B15430 */ int Draw();
    /* 80B1548C */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 80B15650 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80B15670 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80B156BC */ void setMtx();
    /* 80B157C0 */ bool setExpressionAnm(int, bool);
    /* 80B1590C */ bool setExpressionBtp(int);
    /* 80B159E0 */ void setMotion(int, f32, int);
    /* 80B15A24 */ void reset();
    /* 80B160A8 */ inline BOOL setAction(actionFunc);
    /* 80B16148 */ void wait();
    /* 80B16344 */ void setMotionAnm(int, f32);
    /* 80B16634 */ void waitNude();
    /* 80B1682C */ void waitLv6();
    /* 80B16B74 */ void talk();
    /* 80B16FDC */ void setExpression(int, f32);
    /* 80B17008 */ void hide();
    /* 80B17420 */ void shake();
    /* 80B175F4 */ void showUp();
    /* 80B17734 */ void showUpWait();
    /* 80B17B70 */ void lookAroundA();
    /* 80B17D44 */ void lookAroundB();
    /* 80B17F18 */ void in();
    /* 80B18070 */ void damage();
    /* 80B181EC */ void broken();
    /* 80B183E8 */ void demo_appear();
    /* 80B18D44 */ void demo_scannon();
    /* 80B1926C */ void demo_Lv6Gate();
    /* 80B1946C */ void demo_farewell();
    /* 80B19DAC */ void demo_warpBack();
    /* 80B1A30C */ void demo_walkBack();
    /* 80B1A888 */ void demo_Lv7Start();
    /* 80B1B6A0 */ void demo_Lv3PickUp();
    /* 80B1BD64 */ void demo_Lv6PickUp();
    /* 80B1C480 */ inline void setParam();
    /* 80B1C4F8 */ inline BOOL main();
    /* 80B1CB54 */ inline BOOL ctrlBtk();
    /* 80B1CC28 */ inline void setAttnPos();
    /* 80B1CFD0 */ inline void lookat();
    /* 80B1D1FC */ inline BOOL drawDbgInfo();
    /* 80B1D204 */ inline void drawOtherMdls();

    u8 getType() { return fopAcM_GetParam(this) & 0xFF; }
    u8 getSwitchNo() { return (fopAcM_GetParam(this) >> 8) & 0xFF; }
    u8 getTsuboType() { return 1 - (fopAcM_GetParam(this) >> 24) == 0; }
    int getMessageNo() { return shape_angle.x; }
    u8 getTBoxNo() { return (fopAcM_GetParam(this) >> 16) & 0xFF; }
    inline BOOL checkFindPlayer();
    inline void setLookMode(int, fopAc_ac_c*);
    inline void setTsuboMotionAnm(int, f32);
    inline void setExpressionTalkAfter();
    inline BOOL step(s16, int);
    inline void playExpression();
    inline void playMotion();
    inline void playTsuboAnm();
    inline int getPlayerArea();

private:
    /* 0x0B48 */ Z2Creature mSound;
    /* 0x0BD8 */ daNpcTksTsubo_c mTksTsubo;
    /* 0x1160 */ daNpcF_MatAnm_c* mpMatAnm;
    /* 0x1164 */ daNpcF_Lookat_c mLookat;
    /* 0x1200 */ daNpcF_ActorMngr_c mActorMngr[1];
    /* 0x1208 */ fopAc_ac_c* field_0x1208;
    /* 0x120C */ daNpcTks_HIO_c* mHIO;
    /* 0x1210 */ dCcD_Cyl mCyl;
    /* 0x134C */ actionFunc mAction;
    /* 0x1358 */ request_of_phase_process_class mPhases[2];
    /* 0x1368 */ fpc_ProcID mItemID;
    /* 0x136C */ f32 field_0x136c;
    /* 0x1370 */ int field_0x1370;
    /* 0x1374 */ int field_0x1374;
    /* 0x1378 */ int mPlayerArea;
    /* 0x137C */ u32 field_0x137c[2];
    /* 0x1384 */ s16 mMessageNo;
    /* 0x1386 */ s16 mLookMode;
    /* 0x1388 */ u16 mMode;
    /* 0x138A */ bool field_0x138a;
    /* 0x138B */ bool field_0x138b;
};

STATIC_ASSERT(sizeof(daNpcTks_c) == 0x138c);

#endif /* D_A_NPC_TKS_H */
