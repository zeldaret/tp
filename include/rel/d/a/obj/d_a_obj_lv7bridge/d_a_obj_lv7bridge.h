#ifndef D_A_OBJ_LV7BRIDGE_H
#define D_A_OBJ_LV7BRIDGE_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjLv7Brg_c
 * @brief City in the Sky Bridge
 *
 * @details
 *
 */
class daObjLv7Brg_c : public fopAc_ac_c {
public:
    /* 80C863EC */ void search_swspinner();
    /* 80C86454 */ void initBaseMtx();
    /* 80C864B4 */ void setBaseMtx();
    /* 80C865B8 */ void Create();
    /* 80C867CC */ void CreateHeap();
    /* 80C86A44 */ void create1st();
    /* 80C86B40 */ void Execute(f32 (**)[3][4]);
    /* 80C86E68 */ void action();
    /* 80C86F44 */ void mode_action();
    /* 80C87210 */ void mode_end();
    /* 80C87214 */ void calcCoPos();
    /* 80C87304 */ void Draw();
    /* 80C87458 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0xaa4 - 0x568];
};
STATIC_ASSERT(sizeof(daObjLv7Brg_c) == 0xaa4);


#endif /* D_A_OBJ_LV7BRIDGE_H */
