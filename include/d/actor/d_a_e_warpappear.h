#ifndef D_A_E_WARPAPPEAR_H
#define D_A_E_WARPAPPEAR_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_warpappear_class
 * @brief Shadow Beast Warp Appear
 * 
 * @details 
 * 
 */
class e_warpappear_class : public fopEn_enemy_c {
private:
    /* 0x5ac */ u8 field_0x5ac[0x650 - 0x5ac];
};

STATIC_ASSERT(sizeof(e_warpappear_class) == 0x650);


#endif /* D_A_E_WARPAPPEAR_H */
