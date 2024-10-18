#ifndef D_A_OBJ_TP_H
#define D_A_OBJ_TP_H

#include "JSystem/J3DGraphAnimator/J3DModel.h"
#include "SSystem/SComponent/c_phase.h"
#include "d/d_bg_w.h"
#include "d/d_cc_d.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class obj_tp_class
 * @brief Shadow Beast Barrier Pole (Twilight Pole)
 *
 * @details
 *
 */
class obj_tp_class : public fopAc_ac_c {
public:
    /* 0x568 */ request_of_phase_process_class mPhase;
    /* 0x570 */ mDoExt_McaMorf* mMorf;
    /* 0x574 */ int field_0x574;
    /* 0x578 */ mDoExt_brkAnm* mBrk;
    /* 0x57C */ J3DModel* mModels[2];
    /* 0x584 */ mDoExt_btkAnm* mBtks[2];
    /* 0x58C */ mDoExt_brkAnm* mBrks[2];
    /* 0x594 */ u8 field_0x594;
    /* 0x595 */ u8 field_0x595;
    /* 0x596 */ u8 field_0x596;
    /* 0x597 */ u8 field_0x597;
    /* 0x598 */ u8 field_0x598;
    /* 0x59C */ int field_0x59c;
    /* 0x5A0 */ int field_0x5a0;
    /* 0x5A4 */ u8 field_0x5a4;
    /* 0x5A5 */ u8 field_0x5a5;
    /* 0x5A6 */ s16 field_0x5a6;
    /* 0x5A8 */ s16 field_0x5a8;
    /* 0x5AC */ cXyz field_0x5ac;
    /* 0x5B8 */ s16 field_0x5b8[2];
    /* 0x5BC */ s16 field_0x5bc;
    /* 0x5C0 */ cXyz field_0x5c0;
    /* 0x5CC */ s16 field_0x5cc;
    /* 0x5D0 */ int field_0x5d0;
    /* 0x5D4 */ Mtx field_0x5d4;
    /* 0x604 */ dBgW* mBgw;
    /* 0x608 */ dCcD_Stts mStts;
    /* 0x644 */ dCcD_Cyl mCyl;
    /* 0x780 */ int field_0x780;
};

STATIC_ASSERT(sizeof(obj_tp_class) == 0x784);


#endif /* D_A_OBJ_TP_H */
