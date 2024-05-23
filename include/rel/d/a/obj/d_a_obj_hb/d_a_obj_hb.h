#ifndef D_A_OBJ_HB_H
#define D_A_OBJ_HB_H

#include "f_op/f_op_actor_mng.h"

class obj_hb_class : public fopAc_ac_c {
private:
    /* 0x568 */ u8 field_0x568[0xa8c - 0x568];
};
STATIC_ASSERT(sizeof(obj_hb_class) == 0xa8c);


#endif /* D_A_OBJ_HB_H */
