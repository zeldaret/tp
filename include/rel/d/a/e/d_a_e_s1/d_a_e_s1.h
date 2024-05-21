#ifndef D_A_E_S1_H
#define D_A_E_S1_H
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_s1_class
 * @brief Shadow Beast
 * 
 * @details 
 * 
 */
class e_s1_class : public fopEn_enemy_c {
private:
    /* 0x5ac */ u8 field_0x5ac[0x3084 - 0x5ac];
};
STATIC_ASSERT(sizeof(e_s1_class) == 0x3084);

class daE_S1_HIO_c {
    /* 8077AB8C */ daE_S1_HIO_c();
    /* 80780840 */ ~daE_S1_HIO_c();
};

struct s1_ke_s {
    /* 807803F4 */ ~s1_ke_s();
    /* 80780470 */ s1_ke_s();
};



#endif /* D_A_E_S1_H */
