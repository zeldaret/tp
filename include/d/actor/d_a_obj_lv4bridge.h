#ifndef D_A_OBJ_LV4BRIDGE_H
#define D_A_OBJ_LV4BRIDGE_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_movebg_actor.h"
#include "d/d_event_lib.h"

/**
 * @ingroup actors-objects
 * @class daObjLv4Brg_c
 * @brief Arbiter's Grounds Bridge
 *
 * @details
 *
 */
class daObjLv4Brg_c : public dBgS_MoveBgActor, public dEvLib_callback_c {
public:
    daObjLv4Brg_c() : dEvLib_callback_c(this) {}

    /* 80C62878 */ void initBaseMtx();
    /* 80C628B4 */ void setBaseMtx();
    /* 80C62A9C */ int create1st();
    /* 80C62B6C */ void action();
    /* 80C62C28 */ void mode_init_wait();
    /* 80C62C34 */ void mode_wait();
    /* 80C62CE4 */ void mode_init_move();
    /* 80C62CFC */ void mode_move();
    /* 80C62E24 */ void mode_init_dead();
    /* 80C62E30 */ void mode_dead();

    /* 80C630C4 */ virtual ~daObjLv4Brg_c() {}
    /* 80C62E34 */ virtual bool eventStart();
    /* 80C62A2C */ virtual int CreateHeap();
    /* 80C62994 */ virtual int Create();
    /* 80C62B20 */ virtual int Execute(Mtx**);
    /* 80C62EA0 */ virtual int Draw();
    /* 80C62F44 */ virtual int Delete();

    u8 getSwbit() { return fopAcM_GetParamBit(this, 0, 8); }
    u8 getEvID() { return fopAcM_GetParamBit(this, 8, 8); }

    /* 0x5B0 */ request_of_phase_process_class mPhase;
    /* 0x5B8 */ J3DModel* mpModel;
    /* 0x5BC */ f32 field_0x5bc;
    /* 0x5C0 */ u8 field_0x5c0;
    /* 0x5C1 */ u8 mMode;
    /* 0x5C4 */ cXyz field_0x5c4;
};

STATIC_ASSERT(sizeof(daObjLv4Brg_c) == 0x5d0);


#endif /* D_A_OBJ_LV4BRIDGE_H */
