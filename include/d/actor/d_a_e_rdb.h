#ifndef D_A_E_RDB_H
#define D_A_E_RDB_H
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_rdb_class
 * @brief King Bulblin
 * 
 * @details 
 * 
 */
class e_rdb_class : public fopEn_enemy_c {
    /* 8076AA0C */ e_rdb_class();
private:
    /* 0x5ac */ u8 field_0x5ac[0x1154 - 0x5ac];
};

STATIC_ASSERT(sizeof(e_rdb_class) == 0x1154);

class daE_RDB_HIO_c {
    /* 807650CC */ daE_RDB_HIO_c();
    /* 8076AF64 */ ~daE_RDB_HIO_c();
};


#endif /* D_A_E_RDB_H */
