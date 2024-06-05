#ifndef D_A_KYTAG02_H
#define D_A_KYTAG02_H

#include "d/com/d_com_inf_game.h"

/**
 * @ingroup actors-tags
 * @class kytag02_class
 * @brief Twilight Tag 2
 *
 * @details
 *
 */
class kytag02_class : public fopAc_ac_c {
public:
    /* 0x568 */ cXyz field_0x568;
    /* 0x574 */ s16 field_0x574;
    /* 0x576 */ u8 field_0x576;
    /* 0x577 */ u8 field_0x577;
    /* 0x578 */ u8 field_0x578;
};

STATIC_ASSERT(sizeof(kytag02_class) == 0x57C);

#endif /* D_A_KYTAG02_H */
