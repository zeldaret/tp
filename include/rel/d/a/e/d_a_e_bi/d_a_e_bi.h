#ifndef D_A_E_BI_H
#define D_A_E_BI_H
#include "f_op/f_op_actor_mng.h"

class e_bi_class : public fopEn_enemy_c {
private:
    /* 0x5ac */ u8 field_0x5ac[0xc00 - 0x5ac];
};
STATIC_ASSERT(sizeof(e_bi_class) == 0xc00);

class daE_BI_HIO_c {
    /* 8068A5EC */ daE_BI_HIO_c();
    /* 8068D2DC */ ~daE_BI_HIO_c();
};


#endif /* D_A_E_BI_H */
