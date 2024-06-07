#ifndef D_A_BD_H
#define D_A_BD_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-unsorted
 * @class bd_class
 * @brief Bird
 *
 * @details Used by birds that sit on Coro's head.
 *
 */
class bd_class : public fopEn_enemy_c {
private:
    /* 0x5ac */ u8 field_0x5ac[0x9ec - 0x5ac];
};

STATIC_ASSERT(sizeof(bd_class) == 0x9ec);

class daBd_HIO_c {
public:
    /* 804D6C4C */ daBd_HIO_c();
    /* 804D9CB8 */ ~daBd_HIO_c();
};


#endif /* D_A_BD_H */
