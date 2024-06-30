#ifndef D_A_OBJ_GB_H
#define D_A_OBJ_GB_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class obj_gb_class
 * @brief Ganondorf Barrier
 *
 * @details
 *
 */
class obj_gb_class : public fopAc_ac_c {
private:
    /* 0x568 */ u8 field_0x568[0x6bc - 0x568];
};

STATIC_ASSERT(sizeof(obj_gb_class) == 0x6bc);


#endif /* D_A_OBJ_GB_H */
