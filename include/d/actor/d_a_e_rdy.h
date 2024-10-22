#ifndef D_A_E_RDY_H
#define D_A_E_RDY_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_rdy_class
 * @brief Shadow Bulblin
 * 
 * @details 
 * 
 */
class e_rdy_class : public fopEn_enemy_c {
public:
    /* 80779340 */ e_rdy_class();

    /* 0x05AC */ u8 field_0x5ac[0xa8f - 0x5ac];
    /* 0x0A8F */ u8 field_0xa8f;
    /* 0x0A90 */ u8 field_0xa90[0x1370 - 0xa90];
    /* 0x1370 */ s16 field_0x1370;
    /* 0x1372 */ s16 field_0x1372;
    /* 0x1374 */ u8 field_0x1374[0x142c - 0x1374];
};

STATIC_ASSERT(sizeof(e_rdy_class) == 0x142C);

class daE_RDY_HIO_c {
    /* 8076BDCC */ daE_RDY_HIO_c();
    /* 80779880 */ ~daE_RDY_HIO_c();
};


#endif /* D_A_E_RDY_H */
