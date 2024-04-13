#ifndef D_A_OBJ_SWSPINNER_H
#define D_A_OBJ_SWSPINNER_H

#include "d/bg/d_bg_s_movebg_actor.h"
#include "d/bg/d_bg_w.h"
#include "rel/d/a/d_a_spinner/d_a_spinner.h"

class daObjSwSpinner_c : public dBgS_MoveBgActor {
public:
    /* 80D00174 */ void initBaseMtx();
    /* 80D001CC */ void setBaseMtx();
    /* 80D00284 */ int Create();
    /* 80D0035C */ int CreateHeap();
    /* 80D00498 */ int create1st();
    /* 80D00518 */ int Execute(Mtx**);
    /* 80D00890 */ int Draw();
    /* 80D00954 */ int Delete();

    u8 getSwBit() { return fopAcM_GetParamBit(this, 0, 8); }
    u8 getSwBit2() { return fopAcM_GetParamBit(this, 8, 8); }
    int GetRotSpeedY() { return mRotSpeedY; }

    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ J3DModel* mpModel1;
    /* 0x5AC */ J3DModel* mpModel2;
    /* 0x5B0 */ dBgW* mpBgW2;
    /* 0x5B4 */ Mtx mMtx;
    /* 0x5E4 */ f32 field_0x5e4;
    /* 0x5E8 */ u8 field_0x5e8;
    /* 0x5E9 */ u8 field_0x5e9;
    /* 0x5EA */ u8 field_0x5ea;
    /* 0x5EB */ u8 field_0x5eb;
    /* 0x5EC */ s16 mShapeAngleY;
    /* 0x5EE */ s16 mRotSpeedY;
    /* 0x5F0 */ s16 mCount;
};  // Size: 0x5F4

#endif /* D_A_OBJ_SWSPINNER_H */
