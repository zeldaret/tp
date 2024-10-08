#ifndef D_A_E_TK_H
#define D_A_E_TK_H
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_tk_class
 * @brief Water Toadpoli
 * 
 * @details 
 * 
 */
class e_tk_class : public fopEn_enemy_c {
private:
    /* 0x5ac */ u8 field_0x5ac[0xa64 - 0x5ac];
};

STATIC_ASSERT(sizeof(e_tk_class) == 0xa64);

class daE_TK_HIO_c {
    /* 807B81EC */ daE_TK_HIO_c();
    /* 807BA1C4 */ ~daE_TK_HIO_c();
};


#endif /* D_A_E_TK_H */
