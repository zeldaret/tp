#ifndef D_A_E_MM_H
#define D_A_E_MM_H
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_mm_class
 * @brief Helmasaur
 * 
 * @details 
 * 
 */
class e_mm_class : public fopEn_enemy_c {
private:
    /* 0x5ac */ u8 field_0x5ac[0xc1c - 0x5ac];
};
STATIC_ASSERT(sizeof(e_mm_class) == 0xc1c);

class daE_MM_HIO_c {
    /* 8071F9CC */ daE_MM_HIO_c();
    /* 80722780 */ ~daE_MM_HIO_c();
};


#endif /* D_A_E_MM_H */
