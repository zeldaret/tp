#ifndef D_A_OBJ_IHASI_H
#define D_A_OBJ_IHASI_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class obj_ihasi_class
 * @brief Ice Bridge?
 *
 * @details
 *
 */
class obj_ihasi_class : public fopAc_ac_c {
private:
    /* 0x568 */ u8 field_0x568[0x5c4 - 0x568];
};

STATIC_ASSERT(sizeof(obj_ihasi_class) == 0x5c4);


#endif /* D_A_OBJ_IHASI_H */
