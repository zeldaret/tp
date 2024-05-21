#ifndef D_A_E_SF_H
#define D_A_E_SF_H
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_sf_class
 * @brief Stalfos
 * 
 * @details 
 * 
 */
class e_sf_class : public fopEn_enemy_c {
private:
    /* 0x5ac */ u8 field_0x5ac[0x1000 - 0x5ac];
};
STATIC_ASSERT(sizeof(e_sf_class) == 0x1000);

class daE_SF_HIO_c {
    /* 8078512C */ daE_SF_HIO_c();
    /* 8078977C */ ~daE_SF_HIO_c();
};


#endif /* D_A_E_SF_H */
