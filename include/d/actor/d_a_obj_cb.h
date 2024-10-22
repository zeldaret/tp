#ifndef D_A_OBJ_CB_H
#define D_A_OBJ_CB_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class obj_cb_class
 * @brief Castle Block?
 *
 * @details
 *
 */
class obj_cb_class : public fopAc_ac_c {
private:
    /* 0x568 */ u8 field_0x568[0x97c - 0x568];
};

STATIC_ASSERT(sizeof(obj_cb_class) == 0x97c);

class daObj_Cb_HIO_c {
public:
    /* 80BC4B2C */ daObj_Cb_HIO_c();
    /* 80BC573C */ ~daObj_Cb_HIO_c();
};


#endif /* D_A_OBJ_CB_H */
