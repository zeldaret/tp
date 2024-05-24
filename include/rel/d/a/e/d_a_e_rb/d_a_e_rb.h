#ifndef D_A_E_RB_H
#define D_A_E_RB_H
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_rb_class
 * @brief Leever
 * 
 * @details 
 * 
 */
class e_rb_class : public fopEn_enemy_c {
private:
    /* 0x5ac */ u8 field_0x5ac[0xa6c - 0x5ac];
};
STATIC_ASSERT(sizeof(e_rb_class) == 0xa6c);

class daE_RB_HIO_c {
    /* 8076238C */ daE_RB_HIO_c();
    /* 80764838 */ ~daE_RB_HIO_c();
};


#endif /* D_A_E_RB_H */
