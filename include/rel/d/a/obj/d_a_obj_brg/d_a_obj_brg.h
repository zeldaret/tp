#ifndef D_A_OBJ_BRG_H
#define D_A_OBJ_BRG_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class obj_brg_class
 * @brief Bridge
 *
 * @details
 *
 */
class obj_brg_class : public fopAc_ac_c {
private:
    /* 0x568 */ u8 field_0x568[0xb1f8 - 0x568];
};
STATIC_ASSERT(sizeof(obj_brg_class) == 0xb1f8);

struct br_s {
public:
    /* 80BC1F54 */ ~br_s();
    /* 80BC2000 */ br_s();
};


#endif /* D_A_OBJ_BRG_H */
