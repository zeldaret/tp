#ifndef D_A_OBJ_TAFENCE_H
#define D_A_OBJ_TAFENCE_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_movebg_actor.h"
#include "d/d_cc_d.h"

/**
 * @ingroup actors-objects
 * @class daTaFence_c
 * @brief Fench/Mesh?
 *
 * @details
 *
 */
class daTaFence_c : public dBgS_MoveBgActor {
public:
    /* 80D04F8C */ void setBaseMtx();
    /* 80D050A8 */ int create();
    /* 80D055A0 */ void fenceProc();
    /* 80D057C4 */ void init_modeWait();
    /* 80D057D0 */ void modeWait();
    /* 80D05A54 */ void init_modeMoveInit();
    /* 80D05B5C */ void modeMoveInit();
    /* 80D05B94 */ void init_modeMove();
    /* 80D05CAC */ void modeMove();
    /* 80D05D2C */ void init_modeMoveEnd();
    /* 80D05E54 */ void modeMoveEnd();

    /* 80D0503C */ virtual int CreateHeap();
    /* 80D05550 */ virtual int Execute(Mtx**);
    /* 80D05E58 */ virtual int Draw();
    /* 80D05EFC */ virtual int Delete();

    static const dCcD_SrcGObjInf mCcDObjInfo;
    static dCcD_SrcCyl mCcDCyl;

    /* 0x05A0 */ request_of_phase_process_class mPhase;
    /* 0x05A8 */ J3DModel* mpModel;
    /* 0x05AC */ u8 mMode;
    /* 0x05B0 */ dCcD_Stts mCcStts;
    /* 0x05EC */ dCcD_Cyl mCyl[11];
    /* 0x1380 */ f32 mFallSpeed;
    /* 0x1384 */ s16 field_0x1384;
    /* 0x1386 */ u8 mCollapseTimer;
    /* 0x1388 */ int mCounter;
    /* 0x138C */ csXyz mShakeYZ;
    /* 0x1394 */ f32 mShakeYZ_intensity;
    /* 0x1398 */ f32 mShakeYZ_ampZ;
    /* 0x139C */ f32 mShakeYZ_ampY;
    /* 0x13A0 */ f32 mShakeYZ_damp;
    /* 0x13A4 */ f32 mShakeYZ_maxDamp;
    /* 0x13A8 */ f32 mShakeYZ_minDamp;
    /* 0x13AC */ cXyz mShakeXZ;
    /* 0x13B8 */ f32 mShakeXZ_ampX;
    /* 0x13BC */ f32 mShakeXZ_ampZ;
    /* 0x13C0 */ f32 mShakeXZ_intensity;
    /* 0x13C4 */ f32 mShakeXZ_damp;
    /* 0x13C8 */ f32 mShakeXZ_maxDamp;
    /* 0x13CC */ f32 mShakeXZ_minDamp;
    /* 0x13D0 */ u8 mShakeTimer;
};

STATIC_ASSERT(sizeof(daTaFence_c) == 0x13d4);

#endif /* D_A_OBJ_TAFENCE_H */
