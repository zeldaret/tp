#ifndef D_A_E_IS_H
#define D_A_E_IS_H
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_is_class
 * @brief Armos Titan
 * 
 * @details Armos Titans are enemies from early, unreleased versions of the game.
 * 
 */
class e_is_class : public fopEn_enemy_c {
    /* 806F76B4 */ e_is_class();
private:
    /* 0x5ac */ u8 field_0x5ac[0xcf8 - 0x5ac];
};
STATIC_ASSERT(sizeof(e_is_class) == 0xcf8);

class daE_IS_HIO_c {
    /* 806F5A4C */ daE_IS_HIO_c();
    /* 806F7AC4 */ ~daE_IS_HIO_c();
};


#endif /* D_A_E_IS_H */
