#ifndef D_A_DISAPPEAR_H
#define D_A_DISAPPEAR_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-unsorted
 * @class disappear_class
 * @brief Enemy Death Effect
 *
 * @details
 *
 */
class disappear_class : public fopAc_ac_c {
public:
    /* 0x568 */ u8 field_0x568[0x574 - 0x568];
    /* 0x574 */ s16 mDeleteTimer;
    /* 0x576 */ u8 field_0x576[0x578 - 0x576];
};

#endif /* D_A_DISAPPEAR_H */
