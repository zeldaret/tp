#ifndef D_A_KYTAG06_H
#define D_A_KYTAG06_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_path.h"

/**
 * @ingroup actors-tags
 * @class kytag06_class
 * @brief Weather Handler Tag
 *
 * @details
 *
 */
class kytag06_class : public fopAc_ac_c {
public:
    /* 0x568 */ dPath* mpPath;
    /* 0x56C */ f32 mWindPower;
    /* 0x570 */ f32 field_0x570;
    /* 0x574 */ int field_0x574;
    /* 0x578 */ int field_0x578;
    /* 0x57C */ int field_0x57c;
    /* 0x580 */ u32 field_0x580[4];
    /* 0x590 */ u8 mMode;
    /* 0x591 */ u8 field_0x591;
    /* 0x592 */ u8 field_0x592;
    /* 0x593 */ u8 mType;
    /* 0x594 */ u8 mPathNo;
    /* 0x595 */ u8 mSwNo;
    /* 0x596 */ u8 field_0x596;
    /* 0x597 */ u8 field_0x597;
    /* 0x598 */ u8 field_0x598;
};

STATIC_ASSERT(sizeof(kytag06_class) == 0x59C);

#endif /* D_A_KYTAG06_H */
