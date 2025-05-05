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
public:
    /* 0x568 */ u8 field_0x568[0x598 - 0x568];
    /* 0x598 */ f32 field_0x598;
    /* 0x59C */ u8 field_0x59c[0x5a8 - 0x59c];
    /* 0x5A8 */ cXyz field_0x5a8;
    /* 0x5B4 */ cXyz field_0x5b4;
    /* 0x5C0 */ u8 field_0x5c0[0x9f0 - 0x5c0];
};

STATIC_ASSERT(sizeof(obj_kbox_class) == 0x9f0);

class daObj_Kbox_HIO_c {
public:
    /* 80C3D60C */ daObj_Kbox_HIO_c();
    /* 80C3EF98 */ ~daObj_Kbox_HIO_c();
};


#endif /* D_A_OBJ_KBOX_H */
