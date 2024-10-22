#ifndef D_A_E_BS_H
#define D_A_E_BS_H
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_bs_class
 * @brief Stalkin
 * 
 * @details 
 * 
 */
class e_bs_class : public fopEn_enemy_c {
private:
    /* 0x5ac */ u8 field_0x5ac[0xcfc - 0x5ac];
};

STATIC_ASSERT(sizeof(e_bs_class) == 0xcfc);

class daE_BS_HIO_c {
    /* 8068E12C */ daE_BS_HIO_c();
    /* 8069091C */ ~daE_BS_HIO_c();
};


#endif /* D_A_E_BS_H */
