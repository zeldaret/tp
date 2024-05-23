#ifndef D_A_OBJ_KAGE_H
#define D_A_OBJ_KAGE_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class obj_kage_class : public fopAc_ac_c {
private:
    /* 0x568 */ u8 field_0x568[0x5b4 - 0x568];
};
STATIC_ASSERT(sizeof(obj_kage_class) == 0x5b4);


#endif /* D_A_OBJ_KAGE_H */
