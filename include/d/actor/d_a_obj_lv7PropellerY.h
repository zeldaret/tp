#ifndef D_A_OBJ_LV7PROPELLERY_H
#define D_A_OBJ_LV7PROPELLERY_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_movebg_actor.h"

/**
 * @ingroup actors-objects
 * @class daPropY_c
 * @brief City in the Sky Propeller
 *
 * @details
 *
 */
class daPropY_c : public dBgS_MoveBgActor {
public:
    /* 80C8550C */ void setBaseMtx();
    /* 80C85624 */ int create();
    /* 80C85860 */ void procMain();
    /* 80C859B4 */ void init_modeMoveWait();
    /* 80C859C0 */ void modeMoveWait();
    /* 80C859C4 */ void init_modeMove();
    /* 80C859E0 */ void modeMove();
    /* 80C85B08 */ void init_modeWait();
    /* 80C85B24 */ void modeWait();
    /* 80C85B5C */ void init_modeMove2();
    /* 80C85B84 */ void modeMove2();
    /* 80C85CAC */ void init_modeStop();
    /* 80C85DD0 */ void modeStop();

    /* 80C855A4 */ virtual int CreateHeap();
    /* 80C85810 */ virtual int Execute(Mtx**);
    /* 80C85F14 */ virtual int Draw();
    /* 80C85FB8 */ virtual int Delete();

    int getType() { return fopAcM_GetParamBit(this, 0, 4); }
    int getSw() { return fopAcM_GetParamBit(this, 8, 8); }
    int getTurnType() { return fopAcM_GetParamBit(this, 4, 4); }
    int getTurnVec() { return fopAcM_GetParamBit(this, 16, 4); }

    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ J3DModel* mpModel;
    /* 0x5AC */ u8 mMode;
    /* 0x5AD */ u8 mSwbit;
    /* 0x5AE */ u8 mIsSwitch;
    /* 0x5AF */ u8 mType;
    /* 0x5B0 */ u8 mTurnType;
    /* 0x5B1 */ u8 mTurnVec;
    /* 0x5B2 */ s8 field_0x5b2;
    /* 0x5B4 */ s16 field_0x5b4;
    /* 0x5B6 */ s16 field_0x5b6;
    /* 0x5B8 */ u8 mTimer;
    /* 0x5BC */ f32 field_0x5bc;
    /* 0x5C0 */ f32 field_0x5c0;
    /* 0x5C4 */ f32 field_0x5c4;
};

STATIC_ASSERT(sizeof(daPropY_c) == 0x5c8);

#endif /* D_A_OBJ_LV7PROPELLERY_H */
