#ifndef D_A_OBJ_KITA_H
#define D_A_OBJ_KITA_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class obj_kita_class
 * @brief Wind Plank
 *
 * @details
 *
 */
class obj_kita_class : public fopAc_ac_c {
private:
    /* 0x568 */ u8 field_0x568[0xd78 - 0x568];
};
STATIC_ASSERT(sizeof(obj_kita_class) == 0xd78);

struct kita_s {
public:
    /* 80C45E44 */ ~kita_s();
    /* 80C45E80 */ kita_s();
};

class daObj_Kita_HIO_c {
public:
    /* 80C4534C */ daObj_Kita_HIO_c();
    /* 80C45E84 */ ~daObj_Kita_HIO_c();
};


#endif /* D_A_OBJ_KITA_H */
