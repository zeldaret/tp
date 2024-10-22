#ifndef D_A_OBJ_LV4BRIDGE_H
#define D_A_OBJ_LV4BRIDGE_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjLv4Brg_c
 * @brief Arbiter's Grounds Bridge
 *
 * @details
 *
 */
class daObjLv4Brg_c : public fopAc_ac_c {
public:
    /* 80C62878 */ void initBaseMtx();
    /* 80C628B4 */ void setBaseMtx();
    /* 80C62994 */ void Create();
    /* 80C62A2C */ void CreateHeap();
    /* 80C62A9C */ void create1st();
    /* 80C62B20 */ void Execute(f32 (**)[3][4]);
    /* 80C62B6C */ void action();
    /* 80C62C28 */ void mode_init_wait();
    /* 80C62C34 */ void mode_wait();
    /* 80C62CE4 */ void mode_init_move();
    /* 80C62CFC */ void mode_move();
    /* 80C62E24 */ void mode_init_dead();
    /* 80C62E30 */ void mode_dead();
    /* 80C62E34 */ void eventStart();
    /* 80C62EA0 */ void Draw();
    /* 80C62F44 */ void Delete();
    /* 80C630C4 */ ~daObjLv4Brg_c();

private:
    /* 0x568 */ u8 field_0x568[0x5d0 - 0x568];
};

STATIC_ASSERT(sizeof(daObjLv4Brg_c) == 0x5d0);


#endif /* D_A_OBJ_LV4BRIDGE_H */
