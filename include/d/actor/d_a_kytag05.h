#ifndef D_A_KYTAG05_H
#define D_A_KYTAG05_H

#include "f_op/f_op_actor.h"

/**
 * @ingroup actors-tags
 * @class kytag05_class
 * @brief Peep Hole Tag
 *
 * @details
 *
 */
class kytag05_class : public fopAc_ac_c {
public:
    u8 getSceneListID() const { return mSceneListID; }

    /* 0x568 */ f32 field_0x568;
    /* 0x56C */ u8 field_0x56c;
    /* 0x56D */ u8 mSceneListID;
};

STATIC_ASSERT(sizeof(kytag05_class) == 0x570);

#endif /* D_A_KYTAG05_H */
