#ifndef D_A_E_DD_H
#define D_A_E_DD_H
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_dd_class
 * @brief Dodongo
 * 
 * @details 
 * 
 */
class e_dd_class : public fopEn_enemy_c {
private:
    /* 0x5ac */ u8 field_0x5ac[0xe94 - 0x5ac];
};

STATIC_ASSERT(sizeof(e_dd_class) == 0xe94);

class daE_DD_HIO_c {
    /* 806A226C */ daE_DD_HIO_c();
    /* 806A6D08 */ ~daE_DD_HIO_c();
};


#endif /* D_A_E_DD_H */
