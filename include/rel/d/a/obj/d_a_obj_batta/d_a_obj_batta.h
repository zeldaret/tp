#ifndef D_A_OBJ_BATTA_H
#define D_A_OBJ_BATTA_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_insect.h"

/**
 * @ingroup actors-objects
 * @class daObjBATTA_c
 * @brief Insect - Grasshopper
 *
 * @details
 *
 */
class daObjBATTA_c : public dInsect_c {
public:
    /* 80BA9E5C */ void setAction(void (daObjBATTA_c::*)());
    /* 80BAA1C8 */ void wait();
    /* 80BAA47C */ void turn();
    /* 80BAAA18 */ void jump();
    /* 80BAAD30 */ void fly_up();
    /* 80BAB234 */ void fly_down();
    /* 80BAB500 */ void bin_wait();
    /* 80BAB6C8 */ void bin_action();
    /* 80BAB820 */ void hook();
    /* 80BAB934 */ void boomerang();
    /* 80BABA98 */ void batta_setParticle();
    /* 80BABCA4 */ void action();
    /* 80BABD6C */ void hit_check();
    /* 80BABE20 */ void execute();
    /* 80BABFA4 */ void _delete();
    /* 80BAC00C */ void mtx_set();
    /* 80BAC194 */ void create();

private:
    /* 0x590 */ u8 field_0x568[0x9f8 - 0x590];
};
STATIC_ASSERT(sizeof(daObjBATTA_c) == 0x9f8);

class daObj_BattaHIO_c {
public:
    /* 80BA9E2C */ daObj_BattaHIO_c();
    /* 80BAC874 */ ~daObj_BattaHIO_c();
};

#endif /* D_A_OBJ_BATTA_H */
