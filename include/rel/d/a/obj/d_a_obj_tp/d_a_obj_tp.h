#ifndef D_A_OBJ_TP_H
#define D_A_OBJ_TP_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class obj_tp_class
 * @brief Shadow Beast Barrier Pole (Twilight Pole)
 *
 * @details
 *
 */
class obj_tp_class : public fopAc_ac_c {
private:
    /* 0x568 */ u8 field_0x568[0x784 - 0x568];
};

STATIC_ASSERT(sizeof(obj_tp_class) == 0x784);


#endif /* D_A_OBJ_TP_H */
