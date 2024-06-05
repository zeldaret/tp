#ifndef D_A_KYTAG01_H
#define D_A_KYTAG01_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-tags
 * @class kytag01_class
 * @brief Twilight Tag 1
 *
 * @details
 *
 */
class kytag01_class : public fopAc_ac_c {
public:
    /* 0x568 */ u8 field_0x568[0x588 - 0x568];
    /* 0x588 */ f32 mNamiInnerRange;
    /* 0x58C */ f32 mNamiOuterRange;
    /* 0x590 */ f32 mNamiSize;
    /* 0x594 */ f32 field_0x594;
    /* 0x598 */ u8 mSwNo1;
    /* 0x599 */ u8 mSwNo2;
    /* 0x59A */ u8 field_0x59A[0x59C - 0x59A];
    /* 0x59C */ u8 field_0x59c;
    /* 0x59D */ u8 field_0x59d;
    /* 0x59E */ u8 field_0x59e;
    /* 0x59F */ u8 mStartPoint;
};

STATIC_ASSERT(sizeof(kytag01_class) == 0x5A0);

#endif /* D_A_KYTAG01_H */
