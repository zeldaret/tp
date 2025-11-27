#ifndef D_A_NPC_TKC_H
#define D_A_NPC_TKC_H

#include "d/actor/d_a_npc4.h"

/**
 * @ingroup actors-npcs
 * @class daNpcTkc_c
 * @brief Ooccoo Jr.
 *
 * @details
 *
*/

struct daNpcTkc_HIOParam {
    /* 0x00 */ daNpcF_HIOParam common;
    /* 0x6C */ f32 warp_initial_pos;
    /* 0x70 */ f32 down_move_spd;
    /* 0x74 */ f32 up_move_spd;
    /* 0x78 */ f32 ellipse_width;
    /* 0x7C */ f32 div;
    /* 0x80 */ f32 max;
    /* 0x84 */ f32 min;
    /* 0x88 */ f32 conversation_dist;
    /* 0x8C */ f32 target_height;
    /* 0x90 */ f32 flight_range;
    /* 0x94 */ f32 step;
    /* 0x98 */ f32 amplitude;
    /* 0x9C */ s16 interval;
    /* 0x9E */ s16 rotation_interval;
    /* 0xA0 */ s16 x_angle;
    /* 0xA2 */ s16 z_angle;
};

class daNpcTkc_Param_c {
public:
    /* 80B10848 */ virtual ~daNpcTkc_Param_c() {}

    static daNpcTkc_HIOParam const m;
};

#if DEBUG
class daNpcTkc_HIO_c : public mDoHIO_entry_c {
public:
    daNpcTkc_HIO_c();
    void genMessage(JORMContext*);

    /* 0x8 */ daNpcTkc_HIOParam m;
};
#define NPC_TKC_HIO_CLASS daNpcTkc_HIO_c
#else
#define NPC_TKC_HIO_CLASS daNpcTkc_Param_c
#endif

class daNpcTkc_c : public daNpcF_c {
public:
    typedef void (daNpcTkc_c::*actionFunc)();
    typedef int (daNpcTkc_c::*evtFunc)(int);

    /* 80B0C7CC */ daNpcTkc_c();
    /* 80B0C964 */ ~daNpcTkc_c();
    /* 80B0CA9C */ cPhs__Step Create();
    /* 80B0CD7C */ int CreateHeap();
    /* 80B0D180 */ int Delete();
    /* 80B0D1B4 */ int Execute();
    /* 80B0D1EC */ int Draw();
    /* 80B0D25C */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 80B0D2CC */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80B0D2EC */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80B0D338 */ void setActionWait();
    /* 80B0D37C */ void setActionFollow();
    /* 80B0D3C0 */ void setMtx();
    /* 80B0D458 */ bool setExpressionAnm(int, bool);
    /* 80B0D5A4 */ bool setExpressionBtp(int);
    /* 80B0D678 */ void reset();
    /* 80B0DA94 */ void setMotionAnm(int, f32);
    /* 80B0DBC8 */ BOOL setAction(actionFunc);
    /* 80B0DC68 */ void wait();
    /* 80B0DEF8 */ void calcFly();
    /* 80B0E124 */ BOOL searchPlayer();
    /* 80B0E304 */ void follow();
    /* 80B0E784 */ void appear();
    /* 80B0E8EC */ void normalTalk();
    /* 80B0EB10 */ void setMotion(int, f32, int);
    /* 80B0EB54 */ void setExpression(int, f32);
    /* 80B0EB80 */ void warpTalk();
    /* 80B0EEE8 */ void demo();
    /* 80B0F00C */ int EvCut_TksSecretChild(int);
    /* 80B0F1F8 */ int EvCut_TksWarpExit(int);
    /* 80B0F5D4 */ int EvCut_TksWarpBack(int);
    /* 80B0FA5C */ void setParam();
    /* 80B0FAD0 */ BOOL main();
    /* 80B0FD18 */ BOOL ctrlBtk();
    /* 80B0FDE4 */ void setAttnPos();
    /* 80B0FFD4 */ int drawDbgInfo();

    u8 getType() { return fopAcM_GetParam(this) & 0xFF; }
    u16 getMessageNo() { return fopAcM_GetParam(this) >> 16; }
    void setStart() { mStatus = 1; }
    void callOdorokiSound() { mSound.startCreatureVoiceLevel(Z2SE_TKC_V_ODOROKI_LOOP, -1); }
    void setLookMode(int i_lookMode) { if (i_lookMode >= 0 && i_lookMode < 4 && i_lookMode != mLookMode) mLookMode = i_lookMode; }
    BOOL checkFindPlayer();
    void setExpressionTalkAfter();
    void playExpression();
    void playMotion();
    BOOL chkAction(actionFunc action) { return action == mAction; }
    void lookat();

    static evtFunc mEvtSeqList[4];

private:
    /* 0xB48 */ Z2Creature mSound;
    /* 0xBD8 */ daNpcF_MatAnm_c* mpMatAnm;
    /* 0xBDC */ daNpcF_ActorMngr_c mActorMngr[1];
    /* 0xBE0 */ NPC_TKC_HIO_CLASS* mpHIO;
    /* 0xBE4 */ dCcD_Sph mSph;

    /* 0xD20 */ actionFunc mAction;
    /* 0xD2C */ request_of_phase_process_class mPhase;
    /* 0xD34 */ fpc_ProcID mUnkID;
    /* 0xD38 */ cXyz mSpeedTarget;
    /* 0xD44 */ cXyz field_0xd44;
    /* 0xD50 */ cXyz mPrevSpeed;
    /* 0xD5C */ int mTimer;
    /* 0xD60 */ int field_0xd60;
    /* 0xD64 */ f32 mCurrentPosYOffset;
    /* 0xD68 */ f32 field_0xd68;
    /* 0xD6C */ f32 field_0xd6c;
    /* 0xD70 */ s16 field_0xd70;
    /* 0xD72 */ s16 mMsgNo;
    /* 0xD74 */ s16 mLookMode;
    /* 0xD76 */ u16 mMode;
    /* 0xD78 */ s16 field_0xd78;
    /* 0xD7A */ u8 mStatus;
    /* 0xD7B */ u8 mColor;
};

STATIC_ASSERT(sizeof(daNpcTkc_c) == 0xd7c);

#endif /* D_A_NPC_TKC_H */
