#ifndef D_A_KYTAG17_H
#define D_A_KYTAG17_H

#include "f_op/f_op_actor_mng.h"


/**
 * @ingroup actors-tags
 * @class kytag17_class
 * @brief Light Mask Tag
 *
 * @details
 *
 */
class kytag17_class : public fopAc_ac_c {
public:
    /* 0x568 */ u8 mParameters;
};

STATIC_ASSERT(sizeof(kytag17_class) == 0x56C);

#endif /* D_A_KYTAG17_H */
