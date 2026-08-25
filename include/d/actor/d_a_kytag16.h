#ifndef D_A_KYTAG16_H
#define D_A_KYTAG16_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-tags
 * @class kytag16_class
 * @brief Pikari Tag
 *
 * @details
 *
 */
class kytag16_class : public fopAc_ac_c {
public:
    /* 0x568 */ f32 blend;
    /* 0x56C */ u8 light_type;
    /* 0x56D */ GXColor color;
    /* 0x571 */ u8 time_start;
    /* 0x572 */ u8 time_end;
    /* 0x573 */ u8 bitsw;
    /* 0x574 */ f32 ref_dist;
    /* 0x578 */ f32 angleX;
    /* 0x57C */ f32 angleY;
    /* 0x580 */ f32 cutoff;
    /* 0x584 */ f32 field_0x584;
    /* 0x588 */ s16 swayX;
    /* 0x58A */ s16 swayY;
    /* 0x58C */ u8 spot_type;
    /* 0x58D */ u8 distattn_type;
};

STATIC_ASSERT(sizeof(kytag16_class) == 0x590);

#endif /* D_A_KYTAG16_H */
