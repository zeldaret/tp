#ifndef D_A_E_MM_MT_H
#define D_A_E_MM_MT_H
#include "f_op/f_op_actor_mng.h"

class e_mm_mt_class : public fopEn_enemy_c {
private:
    /* 0x5ac */ u8 field_0x5ac[0xba4 - 0x5ac];
};
STATIC_ASSERT(sizeof(e_mm_mt_class) == 0xba4);


#endif /* D_A_E_MM_MT_H */
