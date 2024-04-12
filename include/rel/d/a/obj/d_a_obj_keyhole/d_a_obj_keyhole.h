#ifndef D_A_OBJ_KEYHOLE_H
#define D_A_OBJ_KEYHOLE_H

#include "dolphin/types.h"
#include "f_op/f_op_actor.h"

struct obj_keyhole_class : public fopAc_ac_c {
    void setOpen() { mOpenState = 1; }
    bool checkOpenEnd() { return mOpenState == 3; }

    /* 0x0568 */ u8 field_0x0568[0x2ca4 - 0x568];
    /* 0x2ca4 */ u8 mOpenState;
};

#endif /* D_A_OBJ_KEYHOLE_H */
