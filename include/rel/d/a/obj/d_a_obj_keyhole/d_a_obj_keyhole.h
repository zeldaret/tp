#ifndef D_A_OBJ_KEYHOLE_H
#define D_A_OBJ_KEYHOLE_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class obj_keyhole_class
 * @brief Small Key Door Chains?
 *
 * @details
 *
 */
class obj_keyhole_class : public fopAc_ac_c {
public:
    void setOpen() { mOpenState = 1; }
    bool checkOpenEnd() { return mOpenState == 3; }

private:
    /* 0x0568 */ u8 field_0x0568[0x2ca4 - 0x568];
    /* 0x2ca4 */ u8 mOpenState;
    /* 0x2ca5 */ u8 field_0x2ca5[0x2cb8 - 0x2ca5];
};

STATIC_ASSERT(sizeof(obj_keyhole_class) == 0x2CB8);

class kh_chain_s {
public:
    /* 80C436A0 */ ~kh_chain_s();
    /* 80C437A4 */ kh_chain_s();
};

class daObj_Keyhole_HIO_c {
public:
    /* 80C4124C */ daObj_Keyhole_HIO_c();
    /* 80C4394C */ ~daObj_Keyhole_HIO_c();
};


#endif /* D_A_OBJ_KEYHOLE_H */
