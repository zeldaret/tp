#ifndef D_A_OBJ_BRAKEEFF_H
#define D_A_OBJ_BRAKEEFF_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class obj_brakeeff_class
 * @brief ???
 *
 * @details
 *
 */
class obj_brakeeff_class : public fopAc_ac_c {
private:
    /* 0x568 */ u8 field_0x568[0x73c - 0x568];
};
STATIC_ASSERT(sizeof(obj_brakeeff_class) == 0x73c);


#endif /* D_A_OBJ_BRAKEEFF_H */
