#ifndef D_A_OBJ_SO_H
#define D_A_OBJ_SO_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class obj_so_class
 * @brief Monkey Cage
 *
 * @details
 *
 */
class obj_so_class : public fopAc_ac_c {
private:
    /* 0x568 */ u8 field_0x568[0x1bd0 - 0x568];
};

STATIC_ASSERT(sizeof(obj_so_class) == 0x1bd0);

class daObj_So_HIO_c {
public:
    /* 80CE03CC */ daObj_So_HIO_c();
    /* 80CE3928 */ ~daObj_So_HIO_c();
};


#endif /* D_A_OBJ_SO_H */
