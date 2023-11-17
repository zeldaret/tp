#ifndef D_A_KYTAG04_H
#define D_A_KYTAG04_H

#include "f_op/f_op_actor_mng.h"

class kytag04_class : public fopAc_ac_c {
public:
    /* 0x568 */ J3DModel* mpModel;
    /* 0x56C */ mDoExt_btkAnm mBtk;
    /* 0x584 */ mDoExt_brkAnm mBrk;
    /* 0x59C */ request_of_phase_process_class mPhaseReq;
    /* 0x5A4 */ JPABaseEmitter* field_0x5a4;
    /* 0x5A8 */ JPABaseEmitter* field_0x5a8;
    /* 0x5AC */ JPABaseEmitter* field_0x5ac;
    /* 0x5B0 */ int mStageNo;
    /* 0x5B4 */ u8 field_0x5b4;
    /* 0x5B5 */ u8 field_0x5b5;
    /* 0x5B6 */ u8 field_0x5b6;
    /* 0x5B7 */ u8 field_0x5b7;
    /* 0x5B8 */ u8 field_0x5b8;
    /* 0x5B9 */ u8 field_0x5b9;
    /* 0x5BC */ u32 mExitID;
    /* 0x5C0 */ int field_0x5c0;
    /* 0x5C4 */ u8 field_0x5c4;
    /* 0x5C5 */ u8 field_0x5c5;
    /* 0x5C6 */ u8 mNeedDropNum;
    /* 0x5C8 */ f32 field_0x5c8;
    /* 0x5CC */ int field_0x5cc;
    /* 0x5D0 */ u8 field_0x5d0;
    /* 0x5D1 */ u8 field_0x5d1;
};

#endif /* D_A_KYTAG04_H */
