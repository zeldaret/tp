#ifndef D_A_E_CR_H
#define D_A_E_CR_H
#include "f_op/f_op_actor_mng.h"

class e_cr_class : public fopEn_enemy_c {
private:
    /* 0x5ac */ u8 field_0x5ac[0xa60 - 0x5ac];
};
STATIC_ASSERT(sizeof(e_cr_class) == 0xa60);

class daE_CR_HIO_c {
    /* 8069800C */ daE_CR_HIO_c();
    /* 806997F4 */ ~daE_CR_HIO_c();
};


#endif /* D_A_E_CR_H */
