#ifndef D_A_KYTAG08_H
#define D_A_KYTAG08_H

#include "f_op/f_op_actor_mng.h"

class kytag08_class : public fopAc_ac_c {
public:
    /* 0x568 */ J3DModel* mpModel;
    /* 0x56C */ mDoExt_btkAnm field_0x56c;
    /* 0x584 */ mDoExt_brkAnm field_0x584;
    /* 0x59C */ JPABaseEmitter* field_0x59c;
    /* 0x5A0 */ JPABaseEmitter* field_0x5a0;
    /* 0x5A4 */ request_of_phase_process_class mPhase;
    /* 0x5AC */ cXyz field_0x5ac;
    /* 0x5B8 */ cXyz field_0x5b8;
    /* 0x5C4 */ cXyz field_0x5c4;
    /* 0x5D0 */ f32 field_0x5d0;
    /* 0x5D4 */ int field_0x5d4;
    /* 0x5D8 */ u8 field_0x5d8;
};

#endif /* D_A_KYTAG08_H */
