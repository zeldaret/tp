#ifndef D_A_E_GB_H
#define D_A_E_GB_H
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_gb_class
 * @brief Giant Baba
 * 
 * @details 
 * 
 */
class e_gb_class : public fopEn_enemy_c {
    /* 806C6B94 */ e_gb_class();
private:
    /* 0x5ac */ u8 field_0x5ac[0xef8 - 0x5ac];
};

STATIC_ASSERT(sizeof(e_gb_class) == 0xef8);

class daE_GB_HIO_c {
    /* 806C1CEC */ daE_GB_HIO_c();
    /* 806C6F98 */ ~daE_GB_HIO_c();
};


#endif /* D_A_E_GB_H */
