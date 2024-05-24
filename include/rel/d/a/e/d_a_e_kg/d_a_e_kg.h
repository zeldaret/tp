#ifndef D_A_E_KG_H
#define D_A_E_KG_H
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_kg_class
 * @brief Young Gohma
 * 
 * @details 
 * 
 */
class e_kg_class : public fopEn_enemy_c {
private:
    /* 0x5ac */ u8 field_0x5ac[0xa74 - 0x5ac];
};
STATIC_ASSERT(sizeof(e_kg_class) == 0xa74);

class daE_KG_HIO_c {
    /* 806F7EEC */ daE_KG_HIO_c();
    /* 806F9EE8 */ ~daE_KG_HIO_c();
};


#endif /* D_A_E_KG_H */
