#ifndef D_A_E_BU_H
#define D_A_E_BU_H
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_bu_class
 * @brief Bubble
 * 
 * @details 
 * 
 */
class e_bu_class : public fopEn_enemy_c {
private:
    /* 0x5ac */ u8 field_0x5ac[0xaa4 - 0x5ac];
};

STATIC_ASSERT(sizeof(e_bu_class) == 0xaa4);

class daE_BU_HIO_c {
    /* 806911AC */ daE_BU_HIO_c();
    /* 806941D4 */ ~daE_BU_HIO_c();
};


#endif /* D_A_E_BU_H */
