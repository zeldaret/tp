#ifndef D_A_E_YH_H
#define D_A_E_YH_H
#include "f_op/f_op_actor_mng.h"

class e_yh_class : public fopEn_enemy_c {
private:
    /* 0x5ac */ u8 field_0x5ac[0x1274 - 0x5ac];
};
STATIC_ASSERT(sizeof(e_yh_class) == 0x1274);

class daE_YH_HIO_c {
    /* 807FD4CC */ daE_YH_HIO_c();
    /* 80803D48 */ ~daE_YH_HIO_c();
};


#endif /* D_A_E_YH_H */
