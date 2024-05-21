#ifndef D_A_E_YD_H
#define D_A_E_YD_H
#include "f_op/f_op_actor_mng.h"

class e_yd_class : public fopEn_enemy_c {
private:
    /* 0x5ac */ u8 field_0x5ac[0x126c - 0x5ac];
};
STATIC_ASSERT(sizeof(e_yd_class) == 0x126c);

class daE_YD_HIO_c {
    /* 807F2C2C */ daE_YD_HIO_c();
    /* 807F74CC */ ~daE_YD_HIO_c();
};


#endif /* D_A_E_YD_H */
