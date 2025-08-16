#ifndef D_A_OBJ_FALLOBJ_H
#define D_A_OBJ_FALLOBJ_H

#include "d/d_bg_s_movebg_actor.h"
#include "d/d_com_inf_game.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjFallObj_c
 * @brief Fall Object?
 *
 * @details
 *
 */
class daObjFallObj_c : public dBgS_MoveBgActor {
public:
    enum Action {
        ACTION_WAIT,
        ACTION_COUNTDOWN,
        ACTION_FALL,
        ACTION_FALL_START,
        ACTION_END,
        ACTION_FOLLOW_FALL,
    };

    /* 80BE39B8 */ void initBaseMtx();
    /* 80BE3A24 */ void setBaseMtx();
    /* 80BE3A88 */ int Create();
    /* 80BE3BA8 */ s16 getFallTime();
    /* 80BE3BD4 */ f32 getFallHeight();
    /* 80BE3C28 */ int CreateHeap();
    /* 80BE3C98 */ int create1st();
    /* 80BE3D24 */ int Execute(Mtx**);
    /* 80BE4138 */ void action();
    /* 80BE4228 */ bool action_wait(bool);
    /* 80BE42C0 */ bool action_fallStart();
    /* 80BE43E4 */ void action_countdown();
    /* 80BE45F4 */ void action_fall();
    /* 80BE466C */ void action_end();
    /* 80BE4670 */ void action_follow_fall();
    /* 80BE4700 */ bool checkHang();
    /* 80BE47A0 */ bool checkHang2();
    /* 80BE48A4 */ int Draw();
    /* 80BE4948 */ int Delete();

    u32 getTime() { return fopAcM_GetParamBit(this, 8, 8); }
    u32 getPos() { return fopAcM_GetParamBit(this, 0x14, 8); }
    static BOOL checkFallStart(fopAc_ac_c* actor) { return actor->speed.y != 0.0f; }

private:
    /* 0x5A0 */ request_of_phase_process_class mPhaseReq;
    /* 0x5A8 */ Mtx mMtx;
    /* 0x5D8 */ u8 field_0x5d8;
    /* 0x5D9 */ u8 mTimer;
    /* 0x5DA */ s16 mFallTime;
    /* 0x5DC */ s16 field_0x5dc;
    /* 0x5DE */ s16 field_0x5de;
    /* 0x5E0 */ int field_0x5e0;
    /* 0x5E4 */ bool field_0x5e4;
    /* 0x5E5 */ bool field_0x5e5;
    /* 0x5E8 */ J3DModel* mpModel;
    /* 0x5EC */ fpc_ProcID mChildId;
    /* 0x5F0 */ u8 mAction;
    /* 0x5F1 */ bool mVibrationOn;
    /* 0x5F4 */ Z2SoundObjSimple mSoundObj;
};

STATIC_ASSERT(sizeof(daObjFallObj_c) == 0x614);

#ifdef DEBUG
class daObjFallObj_HIO_c : public mDoHIO_entry_c {
public:
    daObjFallObj_HIO_c();
    void genMessage(JORMContext* ctx);

    /* 0x6 */ s8 mId;
    /* 0x8 */ s16 mMovementShake;
    /* 0xA */ s16 mStaticShake;
    /* 0xC */ u8 mNoFall;
    /* 0xD */ u8 mCheckDisplay;
};
#endif


#endif /* D_A_OBJ_FALLOBJ_H */
