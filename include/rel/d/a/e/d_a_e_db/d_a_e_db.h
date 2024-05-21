#ifndef D_A_E_DB_H
#define D_A_E_DB_H
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_db_class
 * @brief Deku Baba
 * 
 * @details 
 * 
 */
class e_db_class : public fopEn_enemy_c {
private:
    /* 0x5ac */ u8 field_0x5ac[0x1270 - 0x5ac];
};
STATIC_ASSERT(sizeof(e_db_class) == 0x1270);

class daE_DB_HIO_c {
    /* 8069AAEC */ daE_DB_HIO_c();
    /* 806A13D8 */ ~daE_DB_HIO_c();
};


#endif /* D_A_E_DB_H */
