#ifndef D_A_E_GOB_H
#define D_A_E_GOB_H
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_gob_class
 * @brief Dangoro
 * 
 * @details 
 * 
 */
class e_gob_class : public fopEn_enemy_c {
    /* 806DEA10 */ e_gob_class();
private:
    /* 0x5ac */ u8 field_0x5ac[0xde4 - 0x5ac];
};

STATIC_ASSERT(sizeof(e_gob_class) == 0xde4);

class daE_GOB_HIO_c {
    /* 806D808C */ daE_GOB_HIO_c();
    /* 806DECD0 */ ~daE_GOB_HIO_c();
};


#endif /* D_A_E_GOB_H */
