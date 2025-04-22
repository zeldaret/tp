#ifndef D_A_OBJ_MSIMA_H
#define D_A_OBJ_MSIMA_H

#include "f_op/f_op_actor_mng.h"

struct ms_chain_s {
    /* 80C9CA60 */ ~ms_chain_s();
    /* 80C9CA9C */ ms_chain_s();

    /* 0x00 */ J3DModel* model[35];
    /* 0x8C */ f32 field_0x8c;
    /* 0x90 */ s16 field_0x90;
    /* 0x92 */ u8 field_0x92;
    /* 0x94 */ cXyz field_0x94;
};

/**
 * @ingroup actors-objects
 * @class obj_msima_class
 * @brief Dangoro Boss Stage (Magnetic Island)
 *
 * @details
 *
 */
class obj_msima_class : public fopAc_ac_c {
public:
    /* 0x568 */ request_of_phase_process_class mPhase;
    /* 0x570 */ u8 field_0x570;
    /* 0x574 */ J3DModel* mpModel;
    /* 0x578 */ mDoExt_brkAnm* mpBrk;
    /* 0x57C */ mDoExt_btkAnm* mpBtk;
    /* 0x580 */ s16 field_0x580;
    /* 0x582 */ s16 field_0x582;
    /* 0x584 */ s16 field_0x584;
    /* 0x586 */ s16 field_0x586[2];
    /* 0x58C */ f32 field_0x58c;
    /* 0x590 */ u8 field_0x590[0x594 - 0x590];
    /* 0x594 */ s16 field_0x594;
    /* 0x596 */ s16 field_0x596;
    /* 0x598 */ s16 field_0x598;
    /* 0x59A */ s16 field_0x59a;
    /* 0x59C */ f32 field_0x59c;
    /* 0x5A0 */ s16 field_0x5a0;
    /* 0x5A4 */ f32 field_0x5a4;
    /* 0x5A8 */ f32 field_0x5a8;
    /* 0x5AC */ s16 field_0x5ac;
    /* 0x5AE */ s16 field_0x5ae;
    /* 0x5B0 */ cXyz field_0x5b0;
    /* 0x5BC */ uint field_0x5bc[2];
    /* 0x5C4 */ s8 field_0x5c4[2];
    /* 0x5C6 */ u8 field_0x5C6[0x5CC - 0x5C6];
    /* 0x5CC */ Mtx field_0x5cc;
    /* 0x5FC */ dBgW* mpBgW;
    /* 0x600 */ Z2SoundObjSimple mSound;
    /* 0x620 */ ms_chain_s mChains[4];
    /* 0x8A0 */ u8 field_0x8a0;
};

STATIC_ASSERT(sizeof(obj_msima_class) == 0x8a4);

class daObj_Msima_HIO_c {
public:
    /* 80C9B40C */ daObj_Msima_HIO_c();
    /* 80C9CAA0 */ ~daObj_Msima_HIO_c();
};


#endif /* D_A_OBJ_MSIMA_H */
