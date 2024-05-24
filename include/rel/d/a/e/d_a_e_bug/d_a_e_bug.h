#ifndef D_A_E_BUG_H
#define D_A_E_BUG_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_bug_class
 * @brief Poison Mite
 * 
 * @details 
 * 
 */
class e_bug_class : public fopEn_enemy_c {
private:
    /* 0x5ac */ u8 field_0x5ac[0x7db0 - 0x5ac];
};
STATIC_ASSERT(sizeof(e_bug_class) == 0x7db0);

class daE_Bug_HIO_c {
    /* 80694B8C */ daE_Bug_HIO_c();
    /* 80697BEC */ ~daE_Bug_HIO_c();
};

struct bug_s {
    /* 80697B4C */ ~bug_s();
    /* 80697BB8 */ bug_s();
};


#endif /* D_A_E_BUG_H */
