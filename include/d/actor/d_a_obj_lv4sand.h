#ifndef D_A_OBJ_LV4SAND_H
#define D_A_OBJ_LV4SAND_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_movebg_actor.h"
#include "d/d_event_lib.h"

/**
 * @ingroup actors-objects
 * @class daObjLv4Sand_c
 * @brief Arbiter's Grounds Sand (Stallord Arena)
 *
 * @details
 *
 */
class daObjLv4Sand_c : public dBgS_MoveBgActor, public dEvLib_callback_c {
public:
    enum {
        MODE_WAIT,
        MODE_MOVE,
        MODE_DEAD,
    };

    daObjLv4Sand_c() : dEvLib_callback_c(this) {}

    /* 80C69A98 */ void initBaseMtx();
    /* 80C69AD4 */ void setBaseMtx();
    /* 80C69D8C */ int create1st();
    /* 80C69F18 */ void action();
    /* 80C69FBC */ void mode_init_wait();
    /* 80C69FC8 */ void mode_wait();
    /* 80C6A01C */ void mode_init_move();
    /* 80C6A034 */ void mode_move();
    /* 80C6A09C */ void mode_init_dead();
    /* 80C6A0A8 */ void mode_dead();

    /* 80C6A30C */ virtual ~daObjLv4Sand_c() {}

    /* 80C69C28 */ virtual int CreateHeap();
    /* 80C69B50 */ virtual int Create();
    /* 80C69E10 */ virtual int Execute(Mtx**);
    /* 80C6A0D0 */ virtual int Draw();
    /* 80C6A18C */ virtual int Delete();

    /* 80C6A0AC */ virtual bool eventStart();

    u8 getSwbit() { return fopAcM_GetParamBit(this, 0, 8); }

private:
    /* 0x5B0 */ request_of_phase_process_class mPhase;
    /* 0x5B8 */ J3DModel* mpModel;
    /* 0x5BC */ mDoExt_btkAnm* mpBtk;
    /* 0x5C0 */ f32 mHeight;
    /* 0x5C4 */ u8 mMode;
};

STATIC_ASSERT(sizeof(daObjLv4Sand_c) == 0x5c8);


#endif /* D_A_OBJ_LV4SAND_H */
