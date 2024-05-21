#ifndef D_A_E_MB_H
#define D_A_E_MB_H
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_mb_class
 * @brief Ook (Diababa Fight)
 * 
 * @details 
 * 
 */
class e_mb_class : public fopEn_enemy_c {
private:
    /* 0x5ac */ u8 field_0x5ac[0x8cc - 0x5ac];
};
STATIC_ASSERT(sizeof(e_mb_class) == 0x8cc);

class daE_MB_HIO_c {
    /* 8070616C */ daE_MB_HIO_c();
    /* 8070882C */ ~daE_MB_HIO_c();
};


#endif /* D_A_E_MB_H */
