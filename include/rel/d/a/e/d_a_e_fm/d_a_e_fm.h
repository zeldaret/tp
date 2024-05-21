#ifndef D_A_E_FM_H
#define D_A_E_FM_H
#include "f_op/f_op_actor_mng.h"

class e_fm_class : public fopEn_enemy_c {
    /* 804F9B64 */ e_fm_class();
private:
    /* 0x5ac */ u8 field_0x5ac[0x1b084 - 0x5ac];
};
STATIC_ASSERT(sizeof(e_fm_class) == 0x1b084);

class daE_FM_HIO_c {
    /* 804EF0EC */ daE_FM_HIO_c();
    /* 804FA3D8 */ ~daE_FM_HIO_c();
};

struct chain_s {
    /* 804F9E14 */ ~chain_s();
    /* 804F9F14 */ chain_s();
};


#endif /* D_A_E_FM_H */
