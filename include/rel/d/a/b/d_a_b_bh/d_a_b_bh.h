#ifndef D_A_B_BH_H
#define D_A_B_BH_H
#include "f_op/f_op_actor_mng.h"

class b_bh_class : public fopEn_enemy_c {
private:
    /* 0x5AC */ u8 field_0x568[0xf4c - 0x5AC];
};

STATIC_ASSERT(sizeof(b_bh_class) == 0xf4c);

class daB_BH_HIO_c {
public:
    /* 805AE26C */ daB_BH_HIO_c();
    /* 805B3098 */ ~daB_BH_HIO_c();
};


#endif /* D_A_B_BH_H */
