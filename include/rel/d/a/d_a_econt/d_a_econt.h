#ifndef D_A_ECONT_H
#define D_A_ECONT_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-unsorted
 * @class econt_class
 * @brief Encounter
 *
 * @details
 *
 */
class econt_class : public fopEn_enemy_c {
public:
    /* 0x5AC */ u8 field_0x5ac[8];
    /* 0x5B4 */ s16 field_0x5b4;
    /* 0x5B6 */ u8 field_0x5b6;
    /* 0x5B8 */ s16 field_0x5b8[3];
};

#endif /* D_A_ECONT_H */
