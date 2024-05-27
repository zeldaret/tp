#ifndef D_A_E_GA_H
#define D_A_E_GA_H

#include "f_op/f_op_actor_mng.h"

struct ga_s {
    /* 804FBAB8 */ ~ga_s();
    /* 804FBAF4 */ ga_s();
};

/**
 * @ingroup actors-enemies
 * @class e_ga_class
 * @brief Decorative Moth
 * 
 * @details 
 * 
 */
class e_ga_class : public fopEn_enemy_c {
private:
    /* 0x5ac */ u8 field_0x5ac[0x4d7c - 0x5ac];
};
STATIC_ASSERT(sizeof(e_ga_class) == 0x4d7c);

class daE_Ga_HIO_c {
    /* 804FB0EC */ daE_Ga_HIO_c();
    /* 804FBAF8 */ ~daE_Ga_HIO_c();
};


#endif /* D_A_E_GA_H */
