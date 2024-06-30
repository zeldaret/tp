#ifndef D_A_OBJ_LV4FLOOR_H
#define D_A_OBJ_LV4FLOOR_H

#include "d/bg/d_bg_s_movebg_actor.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjLv4Floor_c
 * @brief Arbiter's Grounds Floor
 *
 * @details
 *
 */
class daObjLv4Floor_c : public dBgS_MoveBgActor {
public:
    enum Action_e {
        MODE_WAIT_e,
        MODE_MOVE_e,
        MODE_DEAD_e,
    };

    /* 80C677F8 */ void initBaseMtx();
    /* 80C67834 */ void setBaseMtx();
    /* 80C67944 */ int create1st();
    /* 80C67A30 */ void action();
    /* 80C67AD4 */ void mode_wait();
    /* 80C67B28 */ void mode_init_move();
    /* 80C67B40 */ void mode_move();
    /* 80C67BA8 */ void mode_init_dead();
    /* 80C67BB4 */ void mode_dead();

    /* 80C678D4 */ virtual int CreateHeap();
    /* 80C678B0 */ virtual int Create();
    /* 80C679E4 */ virtual int Execute(f32 (**)[3][4]);
    /* 80C67BD4 */ virtual int Draw();
    /* 80C67C78 */ virtual int Delete();

    u8 getSwbit() { return fopAcM_GetParamBit(this, 0, 8) & 0xFF; }

private:
    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ J3DModel* mpModel;
    /* 0x5AC */ f32 mMoveYPos;
    /* 0x5B0 */ u8 mAction;
};

STATIC_ASSERT(sizeof(daObjLv4Floor_c) == 0x5B4);

#endif /* D_A_OBJ_LV4FLOOR_H */
