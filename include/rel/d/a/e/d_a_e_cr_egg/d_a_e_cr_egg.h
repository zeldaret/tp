#ifndef D_A_E_CR_EGG_H
#define D_A_E_CR_EGG_H
#include "f_op/f_op_actor_mng.h"

class e_cr_egg_class : public fopEn_enemy_c {
private:
    /* 0x5ac */ u8 field_0x5ac[0xa0c - 0x5ac];
};
STATIC_ASSERT(sizeof(e_cr_egg_class) == 0xa0c);


#endif /* D_A_E_CR_EGG_H */
