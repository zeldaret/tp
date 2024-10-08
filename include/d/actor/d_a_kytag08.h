#ifndef D_A_KYTAG08_H
#define D_A_KYTAG08_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-tags
 * @class kytag08_class
 * @brief Fog Avoid Tag
 *
 * @details
 *
 */
class kytag08_class : public fopAc_ac_c {
public:
    /* 0x568 */ J3DModel* mpModel;
    /* 0x56C */ mDoExt_btkAnm mBtk;
    /* 0x584 */ mDoExt_brkAnm mBrk;
    /* 0x59C */ JPABaseEmitter* mpEmitter1;
    /* 0x5A0 */ JPABaseEmitter* mpEmitter2;
    /* 0x5A4 */ request_of_phase_process_class mPhase;
    /* 0x5AC */ cXyz mSize;
    /* 0x5B8 */ cXyz mAvoidPos;
    /* 0x5C4 */ cXyz mTargetAvoidPos;
    /* 0x5D0 */ f32 mSizeScale;
    /* 0x5D4 */ int mSizeTimer;
    /* 0x5D8 */ u8 field_0x5d8;
};

STATIC_ASSERT(sizeof(kytag08_class) == 0x5DC);

#endif /* D_A_KYTAG08_H */
