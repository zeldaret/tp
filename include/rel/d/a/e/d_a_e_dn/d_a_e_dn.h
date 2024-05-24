#ifndef D_A_E_DN_H
#define D_A_E_DN_H
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_dn_class
 * @brief Lizalfos
 * 
 * @details 
 * 
 */
class e_dn_class : public fopEn_enemy_c {
    /* 804EDE58 */ e_dn_class();
private:
    /* 0x5ac */ u8 field_0x5ac[0x110c - 0x5ac];
};
STATIC_ASSERT(sizeof(e_dn_class) == 0x110c);

class daE_DN_HIO_c {
    /* 804E51AC */ daE_DN_HIO_c();
    /* 804EE39C */ ~daE_DN_HIO_c();
};


#endif /* D_A_E_DN_H */
