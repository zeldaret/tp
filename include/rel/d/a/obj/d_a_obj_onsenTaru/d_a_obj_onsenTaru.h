#ifndef D_A_OBJ_ONSENTARU_H
#define D_A_OBJ_ONSENTARU_H

#include "f_op/f_op_actor_mng.h"
#include "d/bg/d_bg_s_acch.h"
#include "d/cc/d_cc_d.h"

/**
 * @ingroup actors-objects
 * @class daOnsTaru_c
 * @brief Hotspring Water Barrel
 *
 * @details
 *
 */
class daOnsTaru_c : public fopAc_ac_c {
public:
    enum MODE_e {
        MODE_WAIT_e,
        MODE_CARRY_e,
        MODE_DROP_e,
        MODE_BREAK_e,
        MODE_SINK_e,
    };

    /* 80CA86C0 */ void setBaseMtx();
    /* 80CA87B4 */ int create();
    /* 80CA8C20 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80CA8C4C */ BOOL chkSinkAll();
    /* 80CA8C70 */ BOOL chkWaterLineIn();
    /* 80CA8C94 */ void bgCheck();
    /* 80CA9184 */ void mode_proc_call();
    /* 80CA929C */ void mode_init_wait();
    /* 80CA92CC */ void mode_proc_wait();
    /* 80CA92F0 */ void mode_init_carry();
    /* 80CA9320 */ void mode_proc_carry();
    /* 80CA93C0 */ void mode_init_drop();
    /* 80CA9400 */ void mode_proc_drop();
    /* 80CA9424 */ void mode_init_break();
    /* 80CA9514 */ void mode_proc_break();
    /* 80CA9518 */ void mode_init_sink();
    /* 80CA9530 */ void mode_proc_sink();
    /* 80CA9620 */ void breakEffSet();

    /* 80CA8748 */ virtual int CreateHeap();
    /* 80CA8F38 */ virtual int Execute();
    /* 80CA98B8 */ virtual int Draw();
    /* 80CA995C */ virtual int Delete();

    int getSw() { return fopAcM_GetParamBit(this, 0, 8); }
    int getSw2() { return fopAcM_GetParamBit(this, 8, 8); }

    static dCcD_SrcGObjInf const mCcDObjInfo;
    static dCcD_SrcCyl mCcDCyl;

    /* 0x56C */ request_of_phase_process_class mPhase;
    /* 0x574 */ J3DModel* mpModel;
    /* 0x578 */ u8 mMode;
    /* 0x579 */ bool mIsCarryNow;
    /* 0x57C */ cXyz mGrabOffset;
    /* 0x588 */ cXyz mPrevPos;
    /* 0x594 */ cXyz field_0x594;
    /* 0x5A0 */ u8 mInWater;
    /* 0x5A4 */ dBgS_ObjAcch mAcch;
    /* 0x77C */ dBgS_AcchCir mAcchCir;
    /* 0x7BC */ dCcD_Stts mCcStts;
    /* 0x7F8 */ dCcD_Cyl mCcCyl;
    /* 0x934 */ s16 mTimer;
    /* 0x936 */ bool mStartTimer;
    /* 0x938 */ u32 mHamonEmtrID;
    /* 0x93C */ u8 field_0x93c;
    /* 0x93D */ u8 mTempStat;
    /* 0x93E */ u8 field_0x93e;
    /* 0x93F */ u8 field_0x93F[0x944 - 0x93F];
    /* 0x944 */ f32 mCollisionRadius;
};

STATIC_ASSERT(sizeof(daOnsTaru_c) == 0x948);

class daOnsTaru_HIO_c : public fOpAcm_HIO_entry_c {
public:
    /* 80CA85CC */ daOnsTaru_HIO_c();
    /* 80CA9A78 */ virtual ~daOnsTaru_HIO_c() {}

    /* 0x04 */ s16 mCoolTime;
    /* 0x06 */ u8 mVibration;
    /* 0x08 */ f32 mSmokeScale;
    /* 0x0C */ f32 mCollisionRadius;
};


#endif /* D_A_OBJ_ONSENTARU_H */
