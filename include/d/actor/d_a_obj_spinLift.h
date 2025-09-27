#ifndef D_A_OBJ_SPINLIFT_H
#define D_A_OBJ_SPINLIFT_H

#include "d/d_bg_s_movebg_actor.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daSpinLift_c
 * @brief Spinner Lift
 *
 * @details
 *
 */
class daSpinLift_c : public dBgS_MoveBgActor {
public:
    typedef void (daSpinLift_c::*modeFunc)();

    /* 80CE3E2C */ void setBaseMtx();
    /* 80CE3F1C */ int create();
    /* 80CE414C */ void moveLift();
    /* 80CE4290 */ void init_modeWait();
    /* 80CE429C */ void modeWait();
    /* 80CE42A0 */ void init_modeUpMove();
    /* 80CE42C4 */ void modeUpMove();
    /* 80CE468C */ void init_modeDownMove();
    /* 80CE4698 */ void modeDownMove();
    /* 80CE4790 */ void init_modeMoveEnd();
    /* 80CE4A9C */ void modeMoveEnd();

    /* 80CE3E9C */ virtual int CreateHeap();
    /* 80CE40FC */ virtual int Execute(Mtx**);
    /* 80CE4AA0 */ virtual int Draw();
    /* 80CE4B44 */ virtual int Delete();

    u8 getModelType() { return current.angle.x; }
    int getMoveHeight() { return fopAcM_GetParamBit(this, 16, 8); }
    int getMoveSpeed() { return fopAcM_GetParamBit(this, 24, 8); }
    int getSw() { return fopAcM_GetParamBit(this, 0, 8); }
    u8 getTimer() { return (current.angle.x & 0xff00) >> 8; }
    int getEndSw() { return fopAcM_GetParamBit(this, 8, 8); }

private:
    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ J3DModel* mpModel;
    /* 0x5AC */ u8 field_0x5ac;
    /* 0x5B0 */ f32 mMoveHeight;
    /* 0x5B4 */ f32 mMoveSpeed;
    /* 0x5B8 */ u8 field_0x5b8;
    /* 0x5B9 */ u8 mTimer;
    /* 0x5BA */ u8 field_0x5ba;
    /* 0x5BB */ u8 mModelType;
    /* 0x5BC */ u8 field_0x5bc;
};

STATIC_ASSERT(sizeof(daSpinLift_c) == 0x5c0);

#endif /* D_A_OBJ_SPINLIFT_H */
