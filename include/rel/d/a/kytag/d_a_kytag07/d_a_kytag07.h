#ifndef D_A_KYTAG07_H
#define D_A_KYTAG07_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-tags
 * @class kytag07_class
 * @brief Plight Setter Tag
 *
 * @details
 *
 */
class kytag07_class : public fopAc_ac_c {
public:
    /* 0x568 */ LIGHT_INFLUENCE mLightInfluence;
    /* 0x588 */ f32 field_0x588;
    /* 0x58C */ u8 field_0x58c;
};

STATIC_ASSERT(sizeof(kytag07_class) == 0x590);

#endif /* D_A_KYTAG07_H */
