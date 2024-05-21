#ifndef D_A_E_SG_H
#define D_A_E_SG_H
#include "f_op/f_op_actor_mng.h"

class e_sg_class : public fopEn_enemy_c {
private:
    /* 0x5ac */ u8 field_0x5ac[0xab0 - 0x5ac];
};
STATIC_ASSERT(sizeof(e_sg_class) == 0xab0);

class daE_SG_HIO_c {
    /* 8078A22C */ daE_SG_HIO_c();
    /* 8078DC84 */ ~daE_SG_HIO_c();
};


#endif /* D_A_E_SG_H */
