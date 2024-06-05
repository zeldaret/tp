#ifndef D_A_KYTAG00_H
#define D_A_KYTAG00_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-tags
 * @class kytag00_class
 * @brief Twilight Tag 0
 *
 * @details
 *
 */
class kytag00_class : public fopAc_ac_c {
public:
    /* 0x568 */ u8 field_0x568[0x56C - 0x568];
    /* 0x56C */ u8 field_0x56c;
    /* 0x56D */ u8 field_0x56d;
    /* 0x56E */ u8 field_0x56e;
    /* 0x56F */ u8 field_0x56f;
    /* 0x570 */ u8 field_0x570;
    /* 0x571 */ u8 field_0x571;
    /* 0x572 */ u8 field_0x572;
    /* 0x573 */ u8 field_0x573[0x578 - 0x573];
    /* 0x578 */ int field_0x578;
    /* 0x57C */ int field_0x57c;
    /* 0x580 */ f32 field_0x580;
    /* 0x584 */ f32 field_0x584;
    /* 0x588 */ f32 field_0x588;
};

STATIC_ASSERT(sizeof(kytag00_class) == 0x58C);

#endif /* D_A_KYTAG00_H */
