#ifndef D_A_OBJ_FW_H
#define D_A_OBJ_FW_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class obj_fw_class
 * @brief Firewood
 *
 * @details
 *
 */
class obj_fw_class : public fopAc_ac_c {
private:
    /* 0x568 */ u8 field_0x568[0x588 - 0x568];
    /* 0x588 */ f32 field_0x588;
    /* 0x58C */ u8 field_0x58c[0x5a2 - 0x58c];
    /* 0x5A0 */ s16 field_0x5a0;
    /* 0x5A2 */ s16 field_0x5a2;
    /* 0x5A4 */ u8 field_0x5a4[0x628 - 0x5a4];
};

STATIC_ASSERT(sizeof(obj_fw_class) == 0x628);

class daObj_Fw_HIO_c {
public:
    /* 80BF204C */ daObj_Fw_HIO_c();
    /* 80BF2AB0 */ ~daObj_Fw_HIO_c();
};


#endif /* D_A_OBJ_FW_H */
