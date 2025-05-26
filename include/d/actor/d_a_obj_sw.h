#ifndef D_A_OBJ_SW_H
#define D_A_OBJ_SW_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class obj_sw_class
 * @brief Switch
 *
 * @details
 *
 */
class obj_sw_class : public fopAc_ac_c {
public:
    /* 0x568 */ u8 field_0x568[0x5b6 - 0x568];
    /* 0x5B6 */ u8 field_0x5b6;
    /* 0x5B7 */ u8 field_0x5b7[0xd90 - 0x5b7];
};

STATIC_ASSERT(sizeof(obj_sw_class) == 0xd90);

struct obj_sc_s {
public:
    /* 80CF2F3C */ ~obj_sc_s();
    /* 80CF2FA8 */ obj_sc_s();
};


#endif /* D_A_OBJ_SW_H */
