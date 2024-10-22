#ifndef D_A_OBJ_LV5KEY_H
#define D_A_OBJ_LV5KEY_H

#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjLv5Key_c
 * @brief Snowpeak Ruins Key Lock
 *
 * @details
 *
 */
class daObjLv5Key_c : public fopAc_ac_c {
public:
    typedef void (daObjLv5Key_c::*actionFunc)(int);

    enum daObjLv5Key_STATUS {
        STATUS_WAIT,
        STATUS_SHAKE_START,
        STATUS_OPEN_START,
        STATUS_OPEN,
    };

    /* 80B9B9B8 */ int CreateHeap();
    /* 80B9BA94 */ int Init();
    /* 80B9BB5C */ void setBgc();
    /* 80B9BBCC */ void initCcSph();
    /* 80B9BC2C */ void setCcSph();
    /* 80B9BD30 */ void setAction(actionFunc, int);
    /* 80B9BDD8 */ void Action();
    /* 80B9BE24 */ void Wait(int);
    /* 80B9BF08 */ void Open(int);
    /* 80B9BFDC */ void Fall(int);
    /* 80B9C17C */ void Land(int);
    /* 80B9C268 */ void Shake(int);
    /* 80B9C3B0 */ void TranslateByNowDirect(f32, f32, f32);
    /* 80B9C410 */ int Execute();
    /* 80B9C450 */ int Draw();
    /* 80B9C500 */ int Delete();
    /* 80B9C534 */ void setBaseMtx();
    /* 80B9C5EC */ int create_1st();

    void setLocalOffset(f32 x, f32 y, f32 z) { mLocalOffset.set(x, y, z); }
    void setRotateSpd(s16 x, s16 y, s16 z) { mRotateSpd.set(x, y, z); }
    void setRotateAccel(s16 x, s16 y, s16 z) { mRotateAccel.set(x, y, z); }
    void RotateAngle() { shape_angle += mRotateSpd; }
    void calcRotateSpd() { mRotateSpd += mRotateAccel; }

    void setTimer(s16 timer) { mTimer = timer; }
    void setShakeNum(s8 num) { mShakeNum = num; }
    void decShakeNum() { mShakeNum--; }

    bool countdown() { return --mTimer <= 0; }

    void setStatus(s8 status) { mStatus = status; }
    void keylock_open_start() { setStatus(STATUS_OPEN_START); }
    void keylock_shake_start() { setStatus(STATUS_SHAKE_START); }
    bool is_open() { return mStatus == STATUS_OPEN; }
    bool is_open_start() { return mStatus == STATUS_OPEN_START; }
    bool is_shake_start() { return mStatus == STATUS_SHAKE_START; }
    bool is_shake_end() { return mShakeNum <= 0; }

    cXyz& getLocalOffset() { return mLocalOffset; }

private:
    /* 0x568 */ u8 field_0x568[0x56C - 0x568];
    /* 0x56C */ Z2SoundObjSimple mSound;
    /* 0x58C */ u8 field_0x58C[0x590 - 0x58C];
    /* 0x590 */ J3DModel* mpModel;
    /* 0x594 */ mDoExt_bckAnm mBck;
    /* 0x5B0 */ request_of_phase_process_class mPhase;
    /* 0x5B8 */ dBgS_AcchCir mAcchCir;
    /* 0x5F8 */ dBgS_ObjAcch mAcch;
    /* 0x7D0 */ dCcD_Stts mCcStts;
    /* 0x80C */ dCcD_Sph mCcSph;
    /* 0x944 */ u8 field_0x944;
    /* 0x945 */ s8 mStatus;
    /* 0x948 */ actionFunc mAction;
    /* 0x954 */ s16 mMode;
    /* 0x956 */ s16 mTimer;
    /* 0x958 */ cXyz mLocalOffset;
    /* 0x964 */ csXyz mRotateSpd;
    /* 0x96A */ csXyz mRotateAccel;
    /* 0x970 */ s8 mShakeNum;
    /* 0x971 */ u8 field_0x971[0x97c - 0x971];
};

STATIC_ASSERT(sizeof(daObjLv5Key_c) == 0x97c);

#endif /* D_A_OBJ_LV5KEY_H */
