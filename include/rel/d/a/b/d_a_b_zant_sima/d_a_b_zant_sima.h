#ifndef D_A_B_ZANT_SIMA_H
#define D_A_B_ZANT_SIMA_H

#include "d/bg/d_bg_w.h"
#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daB_ZANTS_c : public fopAc_ac_c {
public:
    /* 806529D8 */ int draw();
    /* 80652B28 */ void action();
    /* 80652DA8 */ int execute();
    /* 80652EC0 */ int _delete();
    /* 80652F38 */ int CreateHeap();
    /* 806531E8 */ int create();

    /* 0x568 */ request_of_phase_process_class mPhase;
    /* 0x570 */ J3DModel* mpModel;
    /* 0x574 */ mDoExt_brkAnm* mpBrkAnm;
    /* 0x578 */ mDoExt_btkAnm* mpBtkAnm;
    /* 0x57C */ u32 mPlayerID;
    /* 0x580 */ u32 mBossID;
    /* 0x584 */ u8 mSinkTimers[2];
    /* 0x586 */ bool mSinkPlayer;
    /* 0x587 */ bool mSinkZant;
    /* 0x588 */ f32 mHeight;
    /* 0x58C */ csXyz mRotation;
    /* 0x594 */ Mtx mMtx;
    /* 0x5C4 */ dBgW* mpBgW;
};

#endif /* D_A_B_ZANT_SIMA_H */
