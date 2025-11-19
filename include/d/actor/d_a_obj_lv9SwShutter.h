#ifndef D_A_OBJ_LV9SWSHUTTER_H
#define D_A_OBJ_LV9SWSHUTTER_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_movebg_actor.h"

/**
 * @ingroup actors-objects
 * @class daLv9SwShutter_c
 * @brief Hyrule Castle Switch Shutter
 *
 * @details
 *
 */
class daLv9SwShutter_c : public dBgS_MoveBgActor {
public:
    /* 80C8CF38 */ void setBaseMtx();
    /* 80C8D040 */ int create();
    /* 80C8D1B8 */ void moveShutter();
    /* 80C8D2BC */ void init_modeWait();
    /* 80C8D2C8 */ void modeWait();
    /* 80C8D2CC */ void init_modeOpen();
    /* 80C8D2D8 */ void modeOpen();
    /* 80C8D440 */ void init_modeClose();
    /* 80C8D458 */ void modeClose();

    /* 80C8CFD4 */ virtual int CreateHeap();
    /* 80C8D168 */ virtual int Execute(Mtx**);
    /* 80C8D5D0 */ virtual int Draw();
    /* 80C8D674 */ virtual int Delete();

    int getSw() { return fopAcM_GetParamBit(this, 0, 8); }

private:
    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ J3DModel* mpModel;
    /* 0x5AC */ u8 mMode;
    /* 0x5AD */ u8 mSwbit;
    /* 0x5AE */ u8 mIsSwitch;
    /* 0x5B0 */ f32 field_0x5b0;
};

STATIC_ASSERT(sizeof(daLv9SwShutter_c) == 0x5b4);

#endif /* D_A_OBJ_LV9SWSHUTTER_H */
