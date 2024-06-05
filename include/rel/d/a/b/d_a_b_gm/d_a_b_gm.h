#ifndef D_A_B_GM_H
#define D_A_B_GM_H

#include "f_op/f_op_actor_mng.h"

class b_gm_class : public fopEn_enemy_c {
public:
    /* 805F38E4 */ b_gm_class();

private:
    /* 0x5ac */ u8 field_0x5ac[0x1d08 - 0x5ac];
};
STATIC_ASSERT(sizeof(b_gm_class) == 0x1d08);

class daB_GM_HIO_c {
public:
    /* 805ED94C */ daB_GM_HIO_c();
    /* 805F3E64 */ ~daB_GM_HIO_c();
};

struct b_gm_foot {
public:
    /* 805F3AC0 */ ~b_gm_foot();
    /* 805F3AFC */ b_gm_foot();
};

#endif /* D_A_B_GM_H */
