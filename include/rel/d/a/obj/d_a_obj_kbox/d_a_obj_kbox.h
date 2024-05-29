#ifndef D_A_OBJ_KBOX_H
#define D_A_OBJ_KBOX_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class obj_kbox_class
 * @brief (Kakariko?) Crate
 *
 * @details
 *
 */
class obj_kbox_class : public fopAc_ac_c {
private:
    /* 0x568 */ u8 field_0x568[0x9f0 - 0x568];
};
STATIC_ASSERT(sizeof(obj_kbox_class) == 0x9f0);

class daObj_Kbox_HIO_c {
public:
    /* 80C3D60C */ daObj_Kbox_HIO_c();
    /* 80C3EF98 */ ~daObj_Kbox_HIO_c();
};


#endif /* D_A_OBJ_KBOX_H */
