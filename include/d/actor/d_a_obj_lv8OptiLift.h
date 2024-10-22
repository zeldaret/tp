#ifndef D_A_OBJ_LV8OPTILIFT_H
#define D_A_OBJ_LV8OPTILIFT_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_movebg_actor.h"

/**
 * @ingroup actors-objects
 * @class daOptiLift_c
 * @brief Palace of Twilight Optilift
 *
 * @details
 *
 */
class daOptiLift_c : public dBgS_MoveBgActor {
public:
    enum MODE_e {
        MODE_ACC_e,
        MODE_MOVE_e,
        MODE_BRK_e,
        MODE_WAIT_e,
        MODE_MOVE_INIT_e,
        MODE_MOVE_WAIT_e,
        MODE_STOP_e,
        MODE_INIT_SET_e,
        MODE_INIT_SET2_e,
    };

    /* 80C8A3B0 */ void setBaseMtx();
    /* 80C8A500 */ int create();
    /* 80C8A780 */ void lightSet();
    /* 80C8A7D0 */ static void rideCallBack(dBgW*, fopAc_ac_c*, fopAc_ac_c*);
    /* 80C8A848 */ void moveLift();
    /* 80C8AAC4 */ void init_modeAcc();
    /* 80C8AAD0 */ void modeAcc();
    /* 80C8ABB0 */ void init_modeMove();
    /* 80C8ABBC */ void modeMove();
    /* 80C8AED4 */ void init_modeBrk();
    /* 80C8AEE0 */ void modeBrk();
    /* 80C8B100 */ void init_modeMoveInit();
    /* 80C8B1B0 */ void modeMoveInit();
    /* 80C8B1F0 */ void init_modeMoveWait();
    /* 80C8B230 */ void modeMoveWait();
    /* 80C8B288 */ void init_modeWait();
    /* 80C8B294 */ void modeWait();
    /* 80C8B298 */ void init_modeStop();
    /* 80C8B318 */ void modeStop();
    /* 80C8B428 */ void init_modeInitSet();
    /* 80C8B464 */ void modeInitSet();
    /* 80C8B484 */ void init_modeInitSet2();
    /* 80C8B4B8 */ void modeInitSet2();
    /* 80C8B4D8 */ void liftReset();
    /* 80C8B53C */ void setNextPoint();

    /* 80C8A438 */ virtual int CreateHeap();
    /* 80C8A7E8 */ virtual int Execute(f32 (**)[3][4]);
    /* 80C8B66C */ virtual int Draw();
    /* 80C8B824 */ virtual int Delete();

    u8 getPthID() { return fopAcM_GetParamBit(this, 8, 8); }
    int getMoveSpped() { return fopAcM_GetParamBit(this, 0x10, 4); }
    int getSw() { return fopAcM_GetParamBit(this, 0, 8); }
    int getArg1() { return fopAcM_GetParamBit(this, 0x14, 4); }

    static f32 const mSpeed[];

    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ J3DModel* mpModel;
    /* 0x5AC */ mDoExt_btkAnm mBtk;
    /* 0x5C4 */ u8 mSwBit;
    /* 0x5C5 */ u8 field_0x5C5[0x5C8 - 0x5C5];
    /* 0x5C8 */ u8 mPathID;
    /* 0x5C9 */ s8 mPathDirection;
    /* 0x5CA */ s16 mCurrentPoint;
    /* 0x5CC */ cXyz mTargetPos;
    /* 0x5D8 */ cXyz mPrevTargetPos;
    /* 0x5E4 */ f32 mMoveSpeed;
    /* 0x5E8 */ u8 mMode;
    /* 0x5E9 */ u8 mIsSwitch;
    /* 0x5EA */ u8 mStopDisappearTimer;
    /* 0x5EB */ u8 mPlayerRide;
    /* 0x5EC */ u8 mPrevPlayerRide;
    /* 0x5ED */ u8 field_0x5ED[0x5F4 - 0x5ED];
    /* 0x5F4 */ LIGHT_INFLUENCE mLight;
    /* 0x614 */ u8 mLightSet;
    /* 0x615 */ u8 mNoRideOffSwTimer;
    /* 0x616 */ u8 field_0x616;
};

STATIC_ASSERT(sizeof(daOptiLift_c) == 0x618);

class daOptiLift_HIO_c : public mDoHIO_entry_c {
public:
    /* 80C8A30C */ daOptiLift_HIO_c();
    /* 80C8B900 */ virtual ~daOptiLift_HIO_c() {}

    /* 0x04 */ u8 mStopDisappearTime;
    /* 0x05 */ u8 mStartMoveTime;
    /* 0x06 */ u8 mColorAnmFrame;
    /* 0x07 */ u8 mColorR;
    /* 0x08 */ u8 mColorG;
    /* 0x09 */ u8 mColorB;
    /* 0x0C */ f32 mLightRadius;
    /* 0x10 */ u8 mLightColorR;
    /* 0x11 */ u8 mLightColorG;
    /* 0x12 */ u8 mLightColorB;
};


#endif /* D_A_OBJ_LV8OPTILIFT_H */
