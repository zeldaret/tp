#ifndef D_A_OBJ_KEY_H
#define D_A_OBJ_KEY_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class obj_key_class
 * @brief Key
 *
 * @details
 *
 */
class obj_key_class : public fopAc_ac_c {
private:
    /* 0x568 */ u8 field_0x568[0x9b8 - 0x568];
};
STATIC_ASSERT(sizeof(obj_key_class) == 0x9b8);

class daObj_Key_HIO_c {
public:
    /* 80C3F40C */ daObj_Key_HIO_c();
    /* 80C40F28 */ ~daObj_Key_HIO_c();
};


#endif /* D_A_OBJ_KEY_H */
