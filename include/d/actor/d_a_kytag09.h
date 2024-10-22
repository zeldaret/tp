#ifndef D_A_KYTAG09_H
#define D_A_KYTAG09_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-tags
 * @class kytag09_class
 * @brief Twilight Film Tag
 *
 * @details
 *
 */
class kytag09_class : public fopAc_ac_c {
public:
    /* 0x568 */ J3DModel* mpModel;
    /* 0x56C */ J3DModel* mpModel2;
    /* 0x570 */ u8 field_0x570[0x574 - 0x570];
    /* 0x574 */ mDoExt_btkAnm mBtk_2;
    /* 0x58C */ mDoExt_btkAnm mBtk;
    /* 0x5A4 */ mDoExt_btkAnm unused_0x5a4;
    /* 0x5BC */ request_of_phase_process_class mPhase;
    /* 0x5C4 */ u8 field_0x5c4;
    /* 0x5C5 */ u8 mType;
};

STATIC_ASSERT(sizeof(kytag09_class) == 0x5C8);

#endif /* D_A_KYTAG09_H */
