#ifndef D_A_OBJ_ROPE_BRIDGE_H
#define D_A_OBJ_ROPE_BRIDGE_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_movebg_actor.h"
#include "d/d_cc_d.h"

/**
 * @ingroup actors-objects
 * @class daObjRBridge_c
 * @brief Small / Big Rope Bridge
 *
 * @details
 *
 */
class daObjRBridge_c : public dBgS_MoveBgActor {
public:
    /* 80595E38 */ void initBaseMtx();
    /* 80595ED8 */ void setBaseMtx();
    /* 80595F84 */ BOOL checkE3Special();
    /* 80595FE0 */ void setStPos();
    /* 8059616C */ void initLinePos();
    /* 805963C4 */ void setLinePos();
    /* 80596768 */ void getLinePosSt(cXyz*);
    /* 805967E4 */ void getLinePosBrg(int, cXyz*);
    /* 8059689C */ BOOL checkTight();
    /* 80596DEC */ int create1st();
    /* 80596FA8 */ void action();
    /* 8059715C */ void init_wait();
    /* 80597170 */ void mode_wait();
    /* 805973BC */ void init_cut();
    /* 805973E4 */ void mode_cut();
    /* 805975E8 */ void init_end();
    /* 805975F4 */ void mode_end();
    /* 805977D0 */ BOOL checkHimoCulling();

    /* 80596B88 */ virtual int CreateHeap();
    /* 805969FC */ virtual int Create();
    /* 80596EBC */ virtual int Execute(Mtx**);
    /* 805975F8 */ virtual int Draw();
    /* 805978BC */ virtual int Delete();

    u8 getSwbit() { return fopAcM_GetParamBit(this, 0, 8); }
    u8 getSwbit2() { return fopAcM_GetParamBit(this, 24, 8); }
    u8 getType() { return fopAcM_GetParamBit(this, 16, 2); }

private:
    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ request_of_phase_process_class mRopePhase;
    /* 0x5B0 */ J3DModel* mpBrgModel;
    /* 0x5B4 */ J3DModel* mpStopModel;
    /* 0x5B8 */ dCcD_Stts mCcStts;
    /* 0x5F4 */ dCcD_Cps mCcCps[2];
    /* 0x87C */ dCcD_Sph mCcSph;
    /* 0x9B4 */ dCcD_Sph mCcSph2;
    /* 0xAEC */ u8 field_0xAEC[0xAF0 - 0xAEC];
    /* 0xAF0 */ u8 mType;
    /* 0xAF1 */ u8 mRopeSegmentNum;
    /* 0xAF2 */ u8 mMode;
    /* 0xAF3 */ s8 mFallTimer;
    /* 0xAF4 */ u8 field_0xaf4;
    /* 0xAF5 */ u8 mHideRope;
    /* 0xAF8 */ f32 field_0xaf8;
    /* 0xAFC */ mDoExt_3DlineMat1_c* mpLineMat[2];
    /* 0xB04 */ cXyz* field_0xb04;
    /* 0xB08 */ u8 field_0xb08[2];
    /* 0xB0C */ cXyz mStopPos;
    /* 0xB18 */ s16 field_0xb18;
    /* 0xB1A */ s16 field_0xb1a;
    /* 0xB1C */ Mtx mMtx;
    /* 0xB4C */ Z2SoundObjSimple mSound;
};

STATIC_ASSERT(sizeof(daObjRBridge_c) == 0xb6c);


#endif /* D_A_OBJ_ROPE_BRIDGE_H */
