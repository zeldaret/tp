#ifndef D_A_OBJ_TOBY_H
#define D_A_OBJ_TOBY_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

struct yuka_s {
public:
    /* 80D154F4 */ ~yuka_s();
    /* 80D15530 */ yuka_s();
};

class obj_toby_class : public fopAc_ac_c {
private:
    /* 0x568 */ u8 field_0x568[0x6374 - 0x568];
};
STATIC_ASSERT(sizeof(obj_toby_class) == 0x6374);

class daObj_Toby_HIO_c {
public:
    /* 80D1378C */ daObj_Toby_HIO_c();
    /* 80D15534 */ ~daObj_Toby_HIO_c();
};

#endif /* D_A_OBJ_TOBY_H */
