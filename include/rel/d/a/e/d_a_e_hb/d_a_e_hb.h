#ifndef D_A_E_HB_H
#define D_A_E_HB_H
#include "f_op/f_op_actor_mng.h"

class e_hb_class : public fopEn_enemy_c {
private:
    /* 0x5ac */ u8 field_0x5ac[0x1268 - 0x5ac];
};
STATIC_ASSERT(sizeof(e_hb_class) == 0x1268);

class daE_HB_HIO_c {
    /* 804FBD6C */ daE_HB_HIO_c();
    /* 805005D0 */ ~daE_HB_HIO_c();
};


#endif /* D_A_E_HB_H */
