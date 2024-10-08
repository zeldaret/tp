#ifndef D_A_E_SH_H
#define D_A_E_SH_H
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_sh_class
 * @brief Stalhound
 * 
 * @details 
 * 
 */
class e_sh_class : public fopEn_enemy_c {
private:
    /* 0x5ac */ u8 field_0x5ac[0xd0c - 0x5ac];
};

STATIC_ASSERT(sizeof(e_sh_class) == 0xd0c);

class daE_SH_HIO_c {
    /* 8078E34C */ daE_SH_HIO_c();
    /* 807918B4 */ ~daE_SH_HIO_c();
};


#endif /* D_A_E_SH_H */
