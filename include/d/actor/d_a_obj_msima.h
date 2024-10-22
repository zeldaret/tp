#ifndef D_A_OBJ_MSIMA_H
#define D_A_OBJ_MSIMA_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class obj_msima_class
 * @brief Dangoro Boss Stage (Magnetic Island)
 *
 * @details
 *
 */
class obj_msima_class : public fopAc_ac_c {
private:
    /* 0x568 */ u8 field_0x568[0x8a4 - 0x568];
};

STATIC_ASSERT(sizeof(obj_msima_class) == 0x8a4);

struct ms_chain_s {
    /* 80C9CA60 */ ~ms_chain_s();
    /* 80C9CA9C */ ms_chain_s();
};

class daObj_Msima_HIO_c {
public:
    /* 80C9B40C */ daObj_Msima_HIO_c();
    /* 80C9CAA0 */ ~daObj_Msima_HIO_c();
};


#endif /* D_A_OBJ_MSIMA_H */
