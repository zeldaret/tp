#ifndef D_A_OBJ_MAKI_H
#define D_A_OBJ_MAKI_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class obj_maki_class
 * @brief Stick Bundle?
 *
 * @details
 *
 */
class obj_maki_class : public fopAc_ac_c {
private:
    /* 0x568 */ u8 field_0x568[0x730 - 0x568];
};

STATIC_ASSERT(sizeof(obj_maki_class) == 0x730);

class daObj_Maki_HIO_c {
public:
    /* 80C8FE0C */ daObj_Maki_HIO_c();
    /* 80C9089C */ ~daObj_Maki_HIO_c();
};


#endif /* D_A_OBJ_MAKI_H */
