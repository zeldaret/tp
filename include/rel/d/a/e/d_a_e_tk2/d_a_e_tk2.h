#ifndef D_A_E_TK2_H
#define D_A_E_TK2_H
#include "f_op/f_op_actor_mng.h"

class e_tk2_class : public fopEn_enemy_c {
private:
    /* 0x5ac */ u8 field_0x5ac[0xa50 - 0x5ac];
};
STATIC_ASSERT(sizeof(e_tk2_class) == 0xa50);

class daE_TK2_HIO_c {
    /* 807BA56C */ daE_TK2_HIO_c();
    /* 807BBD00 */ ~daE_TK2_HIO_c();
};


#endif /* D_A_E_TK2_H */
