#ifndef D_A_E_MS_H
#define D_A_E_MS_H
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_ms_class
 * @brief Rat
 * 
 * @details 
 * 
 */
class e_ms_class : public fopEn_enemy_c {
private:
    /* 0x5ac */ u8 field_0x5ac[0xbbc - 0x5ac];
};
STATIC_ASSERT(sizeof(e_ms_class) == 0xbbc);

class daE_MS_HIO_c {
    /* 80725B8C */ daE_MS_HIO_c();
    /* 8072900C */ ~daE_MS_HIO_c();
};


#endif /* D_A_E_MS_H */
