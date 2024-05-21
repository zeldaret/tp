#ifndef D_A_E_KR_H
#define D_A_E_KR_H
#include "f_op/f_op_actor_mng.h"

class e_kr_class : public fopEn_enemy_c {
    /* 80705004 */ e_kr_class();
private:
    /* 0x5ac */ u8 field_0x5ac[0xf08 - 0x5ac];
};
STATIC_ASSERT(sizeof(e_kr_class) == 0xf08);

class e_krHIO_c {
    /* 80705574 */ ~e_krHIO_c();
};


#endif /* D_A_E_KR_H */
