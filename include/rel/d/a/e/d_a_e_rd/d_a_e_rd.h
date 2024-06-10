#ifndef D_A_E_RD_H
#define D_A_E_RD_H
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_rd_class
 * @brief Bulblin
 * 
 * @details 
 * 
 */
class e_rd_class : public fopEn_enemy_c {
    /* 80517AE0 */ e_rd_class();
private:
    /* 0x5ac */ u8 field_0x5ac[0x1368 - 0x5ac];
};

STATIC_ASSERT(sizeof(e_rd_class) == 0x1368);

class daE_RD_HIO_c {
    /* 80504A6C */ daE_RD_HIO_c();
    /* 8051801C */ ~daE_RD_HIO_c();
};


#endif /* D_A_E_RD_H */
