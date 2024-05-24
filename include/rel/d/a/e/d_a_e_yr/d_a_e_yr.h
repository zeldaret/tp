#ifndef D_A_E_YR_H
#define D_A_E_YR_H
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_yr_class
 * @brief Twilight Kargorok Rider?
 * 
 * @details 
 * 
 */
class e_yr_class : public fopEn_enemy_c {
    /* 80827D64 */ e_yr_class();
private:
    /* 0x5ac */ u8 field_0x5ac[0xf20 - 0x5ac];
};
STATIC_ASSERT(sizeof(e_yr_class) == 0xf20);

class e_yrHIO_c {
    /* 808282CC */ ~e_yrHIO_c();
};


#endif /* D_A_E_YR_H */
