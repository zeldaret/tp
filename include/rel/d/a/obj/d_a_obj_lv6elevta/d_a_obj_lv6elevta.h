#ifndef D_A_OBJ_LV6ELEVTA_H
#define D_A_OBJ_LV6ELEVTA_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjLv6ElevtA_c
 * @brief Temple of Time Elevator
 *
 * @details
 *
 */
class daObjLv6ElevtA_c : public fopAc_ac_c {
public:
    /* 80C82D38 */ void create1st();
    /* 80C82DC8 */ void setMtx();
    /* 80C82E38 */ void CreateHeap();
    /* 80C82EA8 */ void Create();
    /* 80C83028 */ void eventStart();
    /* 80C830BC */ void moveAngle(void*);
    /* 80C8321C */ void Execute(f32 (**)[3][4]);
    /* 80C83538 */ void Draw();
    /* 80C835DC */ void Delete();
    /* 80C83764 */ ~daObjLv6ElevtA_c();

private:
    /* 0x568 */ u8 field_0x568[0x628 - 0x568];
};
STATIC_ASSERT(sizeof(daObjLv6ElevtA_c) == 0x628);


#endif /* D_A_OBJ_LV6ELEVTA_H */
