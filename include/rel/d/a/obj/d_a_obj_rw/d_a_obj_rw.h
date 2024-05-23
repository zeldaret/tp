#ifndef D_A_OBJ_RW_H
#define D_A_OBJ_RW_H

#include "f_op/f_op_actor_mng.h"
#include "d/cc/d_cc_d.h"

class obj_rw_class : public fopAc_ac_c {
private:
    /* 0x568 */ u8 field_0x568[0xe3c - 0x568];
};
STATIC_ASSERT(sizeof(obj_rw_class) == 0xe3c);

struct daObj {
public:
    /* 80037900 */ void HitSeStart(cXyz const*, int, dCcD_GObjInf const*, u32);
};

class daOBJ_RW_HIO_c {
public:
    /* 80CC298C */ daOBJ_RW_HIO_c();
    /* 80CC3A5C */ ~daOBJ_RW_HIO_c();
};


#endif /* D_A_OBJ_RW_H */
