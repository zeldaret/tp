#ifndef D_A_E_YG_H
#define D_A_E_YG_H
#include "f_op/f_op_actor_mng.h"

struct yg_ke_s {
    /* 807FBE70 */ ~yg_ke_s();
    /* 807FBEEC */ yg_ke_s();
};

class e_yg_class : public fopEn_enemy_c {
private:
    /* 0x5ac */ u8 field_0x5ac[0x18a0 - 0x5ac];
};
STATIC_ASSERT(sizeof(e_yg_class) == 0x18a0);

class daE_YG_HIO_c {
    /* 807F834C */ daE_YG_HIO_c();
    /* 807FC168 */ ~daE_YG_HIO_c();
};


#endif /* D_A_E_YG_H */
