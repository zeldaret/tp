#ifndef D_A_E_GS_H
#define D_A_E_GS_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_gs_class
 * @brief Ghost Soldier
 * 
 * @details 
 * 
 */
class e_gs_class : public fopEn_enemy_c {
private:
    /* 0x5ac */ u8 field_0x5ac[0x6bc - 0x5ac];
};
STATIC_ASSERT(sizeof(e_gs_class) == 0x6bc);

class daE_GS_HIO_c {
    /* 806DF46C */ daE_GS_HIO_c();
    /* 806DFD5C */ ~daE_GS_HIO_c();
};


#endif /* D_A_E_GS_H */
