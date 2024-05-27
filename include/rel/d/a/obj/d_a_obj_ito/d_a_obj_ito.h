#ifndef D_A_OBJ_ITO_H
#define D_A_OBJ_ITO_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class obj_ito_class
 * @brief ???
 *
 * @details
 *
 */
class obj_ito_class : public fopAc_ac_c {
private:
    /* 0x568 */ u8 field_0x568[0x150c - 0x568];
};
STATIC_ASSERT(sizeof(obj_ito_class) == 0x150c);

struct ito_s {};

class daObj_Ito_HIO_c {
public:
    /* 8047B2EC */ daObj_Ito_HIO_c();
    /* 8047D778 */ ~daObj_Ito_HIO_c();
};


#endif /* D_A_OBJ_ITO_H */
