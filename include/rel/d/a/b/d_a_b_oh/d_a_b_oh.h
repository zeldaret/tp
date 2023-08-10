#ifndef D_A_B_OH_H
#define D_A_B_OH_H

#include "f_op/f_op_actor_mng.h"
#include "d/cc/d_cc_d.h"
#include "d/cc/d_cc_uty.h"

class daB_OH_HIO_c {
public:
    /* 8061B72C */ daB_OH_HIO_c();
    /* 8061D93C */ virtual ~daB_OH_HIO_c();

    /* 0x4 */ s8 field_0x4;
    /* 0x8 */ f32 mModelSize;
    /* 0xC */ f32 mLength;
};

class b_oh_class : public fopEn_enemy_c {
public:
    /* 0x05AC */ request_of_phase_process_class mPhase;
    /* 0x05B4 */ mDoExt_McaMorf* mpMorf;
    /* 0x05B8 */ mDoExt_invisibleModel mInvisModel;
    /* 0x05C0 */ mDoExt_btkAnm* mpBtk;
    /* 0x05C4 */ mDoExt_brkAnm* mpBrk;
    /* 0x05C8 */ int field_0x5c8;
    /* 0x05CC */ s16 field_0x5cc;
    /* 0x05CE */ s16 mAction;
    /* 0x05D0 */ s16 mActionPhase;
    /* 0x05D2 */ u8 field_0x5D2[0x05E2 - 0x05D2];
    /* 0x05E2 */ s16 mAngleToPlayer;
    /* 0x05E4 */ f32 mDistToPlayer;
    /* 0x05E8 */ u8 field_0x5E8[0x05EC - 0x05E8];
    /* 0x05EC */ s16 mTimers[4];
    /* 0x05F4 */ s16 field_0x5f4;
    /* 0x05F6 */ s16 field_0x5f6;
    /* 0x05F8 */ s16 field_0x5f8;
    /* 0x05FA */ s16 field_0x5fa;
    /* 0x05FC */ f32 field_0x5fc;
    /* 0x0600 */ f32 field_0x600;
    /* 0x0604 */ f32 field_0x604;
    /* 0x0608 */ f32 field_0x608;
    /* 0x060C */ f32 field_0x60c;
    /* 0x0610 */ f32 field_0x610;
    /* 0x0614 */ f32 field_0x614;
    /* 0x0618 */ f32 mTentacleLength;
    /* 0x061C */ csXyz field_0x61c[30];
    /* 0x06D0 */ csXyz field_0x6d0[30];
    /* 0x0784 */ csXyz field_0x784[30];
    /* 0x0838 */ csXyz field_0x838[30];
    /* 0x08EC */ f32 field_0x8ec[30];
    /* 0x0964 */ f32 field_0x964[30];
    /* 0x09DC */ f32 field_0x9dc[30];
    /* 0x0A54 */ u8 field_0xa54[0xA58 - 0xA54];
    /* 0x0A58 */ cXyz field_0xa58[31];
    /* 0x0BCC */ csXyz field_0xbcc[31];
    /* 0x0C86 */ u8 field_0xC86[0x0C88 - 0x0C86];
    /* 0x0C88 */ int field_0xc88;
    /* 0x0C8C */ f32 field_0xc8c;
    /* 0x0C90 */ f32 field_0xc90;
    /* 0x0C94 */ s16 field_0xc94;
    /* 0x0C96 */ s16 field_0xc96;
    /* 0x0C98 */ s16 field_0xc98;
    /* 0x0C9A */ u8 field_0xC9A[0x0C9C - 0x0C9A];
    /* 0x0C9C */ f32 field_0xc9c;
    /* 0x0CA0 */ s16 field_0xca0;
    /* 0x0CA2 */ s16 field_0xca2;
    /* 0x0CA4 */ s16 field_0xca4;
    /* 0x0CA6 */ u8 field_0xCA6[0x0CA8 - 0x0CA6];
    /* 0x0CA8 */ int field_0xca8;
    /* 0x0CAC */ f32 field_0xcac;
    /* 0x0CB0 */ dCcD_Stts mCcStts;
    /* 0x0CEC */ dCcD_Sph mColliders[15];
    /* 0x1F34 */ dCcU_AtInfo mAtInfo;
    /* 0x1F58 */ u8 field_0x1F58[0x1F80 - 0x1F58];
    /* 0x1F80 */ u32 field_0x1f80;
    /* 0x1F84 */ u8 field_0x1F84[0x1F86 - 0x1F84];
    /* 0x1F86 */ u8 field_0x1f86;
};

#endif /* D_A_B_OH_H */
