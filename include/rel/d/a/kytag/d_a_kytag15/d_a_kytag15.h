#ifndef D_A_KYTAG15_H
#define D_A_KYTAG15_H

#include "f_op/f_op_actor_mng.h"

class kytag15_class : public fopAc_ac_c {
public:
    /* 0x568 */ J3DModel* mpModel;
    /* 0x56C */ mDoExt_btkAnm mBtk;
    /* 0x584 */ request_of_phase_process_class mPhase;
    /* 0x58C */ u8 field_0x58c;
    /* 0x58D */ u8 field_0x58d[0x590 - 0x58D];
    /* 0x590 */ f32 field_0x590;
};

#endif /* D_A_KYTAG15_H */
