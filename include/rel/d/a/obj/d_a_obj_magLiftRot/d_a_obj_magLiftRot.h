#ifndef D_A_OBJ_MAGLIFTROT_H
#define D_A_OBJ_MAGLIFTROT_H

#include "d/bg/d_bg_s_movebg_actor.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daMagLiftRot_c
 * @brief Rotating Magnetic Lift
 *
 * @details
 *
 */
class daMagLiftRot_c : public dBgS_MoveBgActor {
public:
    /* 80C8EA28 */ void setBaseMtx();
    /* 80C8EC64 */ int create();
    /* 80C8F02C */ void moveLift();
    /* 80C8F264 */ void init_modeMove();
    /* 80C8F4A0 */ void modeMove();
    /* 80C8F538 */ void init_modeWait();
    /* 80C8F7CC */ void modeWait();
    /* 80C8F804 */ void init_modeMoveWait();
    /* 80C8F810 */ void modeMoveWait();

    /* 80C8EB1C */ virtual int CreateHeap();
    /* 80C8EF94 */ virtual int Execute(Mtx**);
    /* 80C8F86C */ virtual int Draw();
    /* 80C8F970 */ virtual int Delete();

private:
    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ J3DModel* mpModel;
    /* 0x5AC */ mDoExt_btkAnm mBtk;
    /* 0x5C4 */ mDoExt_brkAnm mBrk;
    /* 0x5DC */ u8 mType;
    /* 0x5DE */ s16 mTimer;
    /* 0x5E0 */ u8 mMode;
    /* 0x5E1 */ u8 field_0x5e1;
    /* 0x5E2 */ s16 field_0x5e2;
    /* 0x5E4 */ s16 field_0x5e4;
    /* 0x5E6 */ csXyz field_0x5e6;
    /* 0x5EC */ cXyz field_0x5ec;
    /* 0x5F8 */ f32 field_0x5f8;
    /* 0x5FC */ f32 mShakeStrength;
    /* 0x600 */ f32 field_0x600;
    /* 0x604 */ f32 mShakeYAmp;
    /* 0x608 */ f32 mShakeDecay;
    /* 0x60C */ f32 mMaxShakeDecay;
    /* 0x610 */ f32 mMinShakeDecay;
    /* 0x614 */ f32 mMoveStrength;
    /* 0x618 */ f32 mXMoveAmp;
    /* 0x61C */ f32 mZMoveAmp;
    /* 0x620 */ f32 mMoveDecay;
    /* 0x624 */ f32 mMaxMoveDecay;
    /* 0x628 */ f32 mMinMoveDecay;
    /* 0x62C */ f32 field_0x62c;
    /* 0x630 */ f32 field_0x630;
};
STATIC_ASSERT(sizeof(daMagLiftRot_c) == 0x634);

class daMagLiftRot_HIO_c : public mDoHIO_entry_c {
public:
    /* 80C8E94C */ daMagLiftRot_HIO_c();
    /* 80C8FA3C */ virtual ~daMagLiftRot_HIO_c();

    /* 0x04 */ u8 mWaitTime;
    /* 0x08 */ f32 mInitSpeed;
    /* 0x0C */ f32 mAcceleration;
    /* 0x10 */ f32 mMaxSpeed;
    /* 0x14 */ f32 mShakeStrength;
    /* 0x18 */ f32 mShakeAmpY;
    /* 0x1C */ f32 mShakeDecay;
    /* 0x20 */ f32 mMaxShakeDecay;
    /* 0x24 */ f32 mMinShakeDecay;
    /* 0x28 */ f32 mMoveAmpX;
    /* 0x2C */ f32 mMoveAmpZ;
    /* 0x30 */ f32 mMoveStrength;
    /* 0x34 */ f32 mMoveDecay;
    /* 0x38 */ f32 mMaxMoveDecay;
    /* 0x3C */ f32 mMinMoveDecay;
};


#endif /* D_A_OBJ_MAGLIFTROT_H */
