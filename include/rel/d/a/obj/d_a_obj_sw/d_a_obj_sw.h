#ifndef D_A_OBJ_SW_H
#define D_A_OBJ_SW_H

#include "f_op/f_op_actor_mng.h"

class obj_sw_class : public fopAc_ac_c {
private:
    /* 0x568 */ u8 field_0x568[0xd90 - 0x568];
};
STATIC_ASSERT(sizeof(obj_sw_class) == 0xd90);

struct obj_sc_s {
public:
    /* 80CF2F3C */ ~obj_sc_s();
    /* 80CF2FA8 */ obj_sc_s();
};


#endif /* D_A_OBJ_SW_H */
