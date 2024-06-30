#ifndef D_A_OBJ_UDOOR_H
#define D_A_OBJ_UDOOR_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class obj_udoor_class
 * @brief Stable Door
 *
 * @details
 *
 */
class obj_udoor_class : public fopAc_ac_c {
private:
    /* 0x568 */ u8 field_0x568[0x754 - 0x568];
};

STATIC_ASSERT(sizeof(obj_udoor_class) == 0x754);


#endif /* D_A_OBJ_UDOOR_H */
