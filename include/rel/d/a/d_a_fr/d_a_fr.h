#ifndef D_A_FR_H
#define D_A_FR_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-unsorted
 * @class fr_class
 * @brief Frog
 *
 * @details
 *
 */
class fr_class : public fopAc_ac_c {
private:
    /* 0x568 */ u8 field_0x568[0x9e8 - 0x568];
};

STATIC_ASSERT(sizeof(fr_class) == 0x9e8);

class daFr_HIO_c {
public:
    /* 805198EC */ daFr_HIO_c();
    /* 8051B920 */ ~daFr_HIO_c();
};


#endif /* D_A_FR_H */
