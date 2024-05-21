#ifndef D_A_E_NZ_H
#define D_A_E_NZ_H
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_nz_class
 * @brief Ghoul Rat
 * 
 * @details 
 * 
 */
class e_nz_class : public fopEn_enemy_c {
private:
    /* 0x5ac */ u8 field_0x5ac[0xa88 - 0x5ac];
};
STATIC_ASSERT(sizeof(e_nz_class) == 0xa88);

class daE_NZ_HIO_c {
    /* 807299EC */ daE_NZ_HIO_c();
    /* 8072BC88 */ ~daE_NZ_HIO_c();
};


#endif /* D_A_E_NZ_H */
