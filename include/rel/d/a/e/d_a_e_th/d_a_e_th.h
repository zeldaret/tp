#ifndef D_A_E_TH_H
#define D_A_E_TH_H
#include "f_op/f_op_actor_mng.h"

struct th_ke_s {
    /* 807B3B58 */ ~th_ke_s();
    /* 807B3BD4 */ th_ke_s();
};

class e_th_class : public fopEn_enemy_c {
private:
    /* 0x5ac */ u8 field_0x5ac[0x123c - 0x5ac];
};
STATIC_ASSERT(sizeof(e_th_class) == 0x123c);

class daE_TH_HIO_c {
    /* 807B038C */ daE_TH_HIO_c();
    /* 807B3FA4 */ ~daE_TH_HIO_c();
};


#endif /* D_A_E_TH_H */
