#ifndef D_A_OBJ_ICEBLOCK_H
#define D_A_OBJ_ICEBLOCK_H

#include "d/bg/d_bg_s_acch.h"
#include "d/bg/d_bg_s_movebg_actor.h"
#include "d/cc/d_cc_d.h"
#include "f_op/f_op_actor_mng.h"
#include "d/d_path.h"
#include "d/bg/d_bg_w.h"

/**
 * @ingroup actors-objects
 * @class daObjIceBlk_c
 * @brief Sliding Ice Block
 *
 * @details
 *
 */
class daObjIceBlk_c : public dBgS_MoveBgActor {
public:
    enum State_e {
        STATE_0_e = 0,
        STATE_LAND_e = 1,
        STATE_2_e = 2,
        STATE_4_e = 4,
    };

    enum Mode_e {
        MODE_PROC_WAIT_e,
        MODE_PROC_WALK_e,
    };

    enum Action_e {
        ACTION_WAIT_e,
        ACTION_ORDER_EVENT_e,
        ACTION_EVENT_e,
        ACTION_DEAD_e,
    };

    /* 80C21CD8 */ static void PPCallBack(fopAc_ac_c*, fopAc_ac_c*, s16, dBgW_Base::PushPullLabel);
    /* 80C21DC4 */ void initBaseMtx();
    /* 80C21E24 */ void setBaseMtx();
    /* 80C21EA4 */ u16 getPointNo();
    /* 80C21F2C */ void loadCurrentPos();
    /* 80C21FC8 */ int saveCurrentPos();
    /* 80C22200 */ void enablePushPull();
    /* 80C2224C */ void disablePushPull();
    /* 80C227F4 */ int create1st();
    /* 80C2294C */ int checkWalk();
    /* 80C22B04 */ void clrCounter();
    /* 80C22B28 */ void mode_proc_call();
    /* 80C22EF8 */ void mode_init_wait();
    /* 80C22F74 */ void mode_proc_wait();
    /* 80C23058 */ void mode_init_walk();
    /* 80C23088 */ void mode_proc_walk();
    /* 80C23388 */ void setEffect();
    /* 80C2350C */ int checkWallPre(s16);
    /* 80C236C8 */ int checkBgHit();
    /* 80C237B0 */ void bgCheck();
    /* 80C23860 */ void init_bgCheck();
    /* 80C238B0 */ BOOL checkFall();
    /* 80C23A50 */ void event_proc_call();
    /* 80C23B0C */ void actionWait();
    /* 80C23B70 */ void actionOrderEvent();
    /* 80C23C1C */ void actionEvent();
    /* 80C23CA0 */ void actionDead();

    /* 80C22618 */ virtual int CreateHeap();
    /* 80C22298 */ virtual int Create();
    /* 80C228B4 */ virtual int Execute(Mtx**);
    /* 80C23CA4 */ virtual int Draw();
    /* 80C23DA8 */ virtual int Delete();

    u8 getSwbit() { return fopAcM_GetParamBit(this, 0, 8); }
    int getPathId() { return fopAcM_GetParamBit(this, 8, 8); }
    int getCorrectPointNo() { return fopAcM_GetParamBit(this, 0x10, 8); }
    u8 getSwbit2() { return fopAcM_GetParamBit(this, 0x18, 8); }

    void setAction(u8 i_action) { mAction = i_action; }

    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ J3DModel* mpIceModel;
    /* 0x5AC */ J3DModel* mpModel;
    /* 0x5B0 */ dBgS_ObjAcch mAcch;
    /* 0x788 */ dBgS_AcchCir mAcchCir;
    /* 0x7C8 */ dCcD_Stts mCcStts;
    /* 0x804 */ dCcD_Cyl mCcCyl;
    /* 0x940 */ dBgW::PushPullLabel mPPLabel;
    /* 0x944 */ dBgW* mpIceBgW;
    /* 0x948 */ u8 mCounter[4];
    /* 0x94C */ u8 mAction;
    /* 0x94D */ u8 mMode;
    /* 0x950 */ int mMoveDir;
    /* 0x954 */ State_e mState;
    /* 0x958 */ f32 mGroundY;
    /* 0x95C */ cXyz mWallPrePos;
    /* 0x968 */ dBgS_ObjGndChk mGndChk;
    /* 0x9BC */ dPath* mpPath;
    /* 0x9C0 */ u8 mSwbit;
    /* 0x9C1 */ u8 mMaxSwNum;
    /* 0x9C4 */ cXyz mWalkInitPos;
    /* 0x9D0 */ u8 mWalkType;
    /* 0x9D1 */ bool mIsPlayerRide;
    /* 0x9D4 */ u32 field_0x9d4;
    /* 0x9D8 */ u32 field_0x9d8;
    /* 0x9DC */ u32 mKezuruEmtrID;
    /* 0x9E0 */ u8 mHitCounter;
    /* 0x9E4 */ JPABaseEmitter* mColdEffEmitters[2];
};

STATIC_ASSERT(sizeof(daObjIceBlk_c) == 0x9ec);

#endif /* D_A_OBJ_ICEBLOCK_H */
