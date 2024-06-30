#ifndef D_A_OBJ_NDOOR_H
#define D_A_OBJ_NDOOR_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class obj_ndoor_class
 * @brief Cat Door?
 *
 * @details
 *
 */
class obj_ndoor_class : public fopAc_ac_c {
private:
    /* 0x568 */ u8 field_0x568[0x718 - 0x568];
};

STATIC_ASSERT(sizeof(obj_ndoor_class) == 0x718);


#endif /* D_A_OBJ_NDOOR_H */
