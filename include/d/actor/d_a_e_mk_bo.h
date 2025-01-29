#ifndef D_A_E_MK_BO_H
#define D_A_E_MK_BO_H
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_mk_bo_class
 * @brief Ook's Boomerang
 * 
 * @details 
 * 
 */
class e_mk_bo_class : public fopEn_enemy_c {
private:
    /* 0x5ac */ u8 field_0x5ac[0x9c0 - 0x5ac];
};

STATIC_ASSERT(sizeof(e_mk_bo_class) == 0x9c0);


#endif /* D_A_E_MK_BO_H */
