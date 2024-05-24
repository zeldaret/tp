#ifndef D_A_E_ST_H
#define D_A_E_ST_H
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_st_class
 * @brief Skulltula
 * 
 * @details 
 * 
 */
class e_st_class : public fopEn_enemy_c {
    /* 807A5CF4 */ e_st_class();
private:
    /* 0x5ac */ u8 field_0x5ac[0x1068 - 0x5ac];
};
STATIC_ASSERT(sizeof(e_st_class) == 0x1068);

class daE_ST_HIO_c {
    /* 8079DDEC */ daE_ST_HIO_c();
    /* 807A61FC */ ~daE_ST_HIO_c();
};

struct st_foot {
    /* 807A5F5C */ ~st_foot();
    /* 807A5F98 */ st_foot();
};

#endif /* D_A_E_ST_H */
