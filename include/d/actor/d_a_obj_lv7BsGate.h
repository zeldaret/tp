#ifndef D_A_OBJ_LV7BSGATE_H
#define D_A_OBJ_LV7BSGATE_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_movebg_actor.h"

/**
 * @ingroup actors-objects
 * @class daLv7BsGate_c
 * @brief City in the Sky Boss Door
 *
 * @details
 *
 */
class daLv7BsGate_c : public dBgS_MoveBgActor {
public:
    /* 80C84930 */ void setBaseMtx();
    /* 80C84A4C */ int create();
    /* 80C84C1C */ void moveGate();
    /* 80C84D24 */ void init_modeWait();
    /* 80C84D30 */ void modeWait();
    /* 80C84D34 */ void init_modeOpen();
    /* 80C84D40 */ void modeOpen();
    /* 80C84E94 */ void init_modeClose();
    /* 80C84EA0 */ void modeClose();

    /* 80C849CC */ virtual int CreateHeap();
    /* 80C84BCC */ virtual int Execute(Mtx**);
    /* 80C84FF4 */ virtual int Draw();
    /* 80C85098 */ virtual int Delete();

    int getType() { return fopAcM_GetParamBit(this, 0, 4); }
    int getSw() { return fopAcM_GetParamBit(this, 4, 8); }
    int getLR() { return fopAcM_GetParamBit(this, 12, 4); }

    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ J3DModel* mpModel;
    /* 0x5AC */ u8 mMode;
    /* 0x5AD */ u8 field_0x5ad;
    /* 0x5AE */ u8 mType;
    /* 0x5AF */ u8 mIsSwitch;
    /* 0x5B0 */ u8 mLR;
    /* 0x5B4 */ f32 field_0x5b4;
    /* 0x5B8 */ f32 field_0x5b8;
};

STATIC_ASSERT(sizeof(daLv7BsGate_c) == 0x5bc);

#endif /* D_A_OBJ_LV7BSGATE_H */
