#ifndef D_A_E_MK_H
#define D_A_E_MK_H
#include "f_op/f_op_actor_mng.h"

class e_mk_class : public fopEn_enemy_c {
    /* 8071C190 */ e_mk_class();
private:
    /* 0x5ac */ u8 field_0x5ac[0xcf8 - 0x5ac];
};
STATIC_ASSERT(sizeof(e_mk_class) == 0xcf8);

class daE_MK_HIO_c {
    /* 8071412C */ daE_MK_HIO_c();
    /* 8071C3EC */ ~daE_MK_HIO_c();
};


#endif /* D_A_E_MK_H */
