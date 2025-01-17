#ifndef D_A_B_GM_H
#define D_A_B_GM_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"

struct b_gm_foot {
    /* 0x00 */ f32 field_0x0;
    /* 0x04 */ f32 field_0x4;
    /* 0x08 */ s16 field_0x8[1];
    /* 0x0A */ s16 field_0xa;
    /* 0x0C */ s16 field_0xc;
    /* 0x10 */ cXyz field_0x10;
    /* 0x1C */ cXyz field_0x1c;
};

/**
 * @ingroup actors-enemies
 * @class b_gm_class
 * @brief Armogohma
 *
 * @details Temple of Time dungeon boss.
 *
 */
class b_gm_class : public fopEn_enemy_c {
public:
    /* 0x05AC */ request_of_phase_process_class mPhase;
    /* 0x05B4 */ u8 field_0x5B4[0x05B6 - 0x05B4];
    /* 0x05B6 */ u8 field_0x5b6;
    /* 0x05B8 */ cXyz mTargetMovePos;
    /* 0x05C4 */ s16 mAngleToPlayer;
    /* 0x05C8 */ f32 mPlayerDistance;
    /* 0x05CC */ s16 unk_0x5cc;
    /* 0x05CE */ s16 field_0x5ce;
    /* 0x05D0 */ u8 field_0x5D0[0x05D4 - 0x05D0];
    /* 0x05D4 */ f32 field_0x5d4;
    /* 0x05D8 */ f32 field_0x5d8;
    /* 0x05DC */ mDoExt_McaMorfSO* mpModelMorf;
    /* 0x05E0 */ Z2CreatureEnemy mCreatureSound;
    /* 0x0684 */ Z2SoundObjSimple mBeamSound;
    /* 0x06A4 */ int mAnmID;
    /* 0x06A8 */ mDoExt_btkAnm* mpZoomBtk;
    /* 0x06AC */ f32 mZoomBtkFrame;
    /* 0x06B0 */ u32 mShadowID;
    /* 0x06B4 */ u8 mIsDisappear;
    /* 0x06B8 */ mDoExt_McaMorf* mpBeamModelMorf;
    /* 0x06BC */ mDoExt_btkAnm* mpBeamBtk;
    /* 0x06C0 */ f32 field_0x6c0;
    /* 0x06C4 */ f32 field_0x6c4;
    /* 0x06C8 */ s16 field_0x6c8;
    /* 0x06CC */ cXyz field_0x6cc;
    /* 0x06D8 */ cXyz field_0x6d8;
    /* 0x06E4 */ u32 mBeamEmitterIDs[4];
    /* 0x06F4 */ u8 field_0x6f4;
    /* 0x06F5 */ s8 field_0x6f5;
    /* 0x06F8 */ J3DModel* mpSpotLightModel[4];
    /* 0x0708 */ mDoExt_btkAnm* mpSpotLightBtk;
    /* 0x070C */ f32 mSpotLightSize[4];
    /* 0x071C */ s16 mCounter;
    /* 0x071E */ s16 mAction;
    /* 0x0720 */ s16 mMode;
    /* 0x0722 */ s16 mTimers[4];
    /* 0x072A */ s16 mInvincibilityTimer;
    /* 0x072C */ u8 field_0x72C[0x0730 - 0x072C];
    /* 0x0730 */ cXyz field_0x730;
    /* 0x073C */ cXyz field_0x73c;
    /* 0x0748 */ dBgS_AcchCir mAcchCir;
    /* 0x0788 */ dBgS_ObjAcch mAcch;
    /* 0x0960 */ dCcD_Stts mCcStts;
    /* 0x099C */ dCcD_Sph mCoreSph;
    /* 0x0AD4 */ dCcD_Sph mBodySph[2];
    /* 0x0D44 */ dCcD_Sph mHandSph[2];
    /* 0x0FB4 */ dCcD_Sph mFootSph[8];
    /* 0x1974 */ dCcD_Sph mBeamSph;
    /* 0x1AAC */ s8 field_0x1aac;
    /* 0x1AB0 */ dCcU_AtInfo mAtInfo;
    /* 0x1AD4 */ s8 mHitCount;
    /* 0x1AD5 */ s8 field_0x1ad5;
    /* 0x1AD6 */ s8 field_0x1ad6;
    /* 0x1AD8 */ s16 field_0x1ad8;
    /* 0x1ADA */ s16 field_0x1ada;
    /* 0x1ADC */ s16 field_0x1adc;
    /* 0x1ADE */ s16 field_0x1ade;
    /* 0x1AE0 */ f32 field_0x1ae0;
    /* 0x1AE4 */ f32 mBodyColorIntensity;
    /* 0x1AE8 */ b_gm_foot mFoot[10];
    /* 0x1C78 */ u8 field_0x1C78[0x1C84 - 0x1C78];
    /* 0x1C84 */ u32 field_0x1c84;
    /* 0x1C88 */ u32 field_0x1c88;
    /* 0x1C8C */ s16 mDemoMode;
    /* 0x1C8E */ s16 mDemoModeTimer;
    /* 0x1C90 */ cXyz mDemoCamEye;
    /* 0x1C9C */ cXyz mDemoCamCenter;
    /* 0x1CA8 */ cXyz mDemoCamEyeTarget;
    /* 0x1CB4 */ cXyz mDemoCamCenterTarget;
    /* 0x1CC0 */ cXyz mDemoCamEyeSpeed;
    /* 0x1CCC */ cXyz mDemoCamCenterSpeed;
    /* 0x1CD8 */ f32 mDemoCamFovy;
    /* 0x1CDC */ f32 field_0x1cdc;
    /* 0x1CE0 */ f32 field_0x1ce0;
    /* 0x1CE4 */ s16 field_0x1ce4;
    /* 0x1CE6 */ s16 field_0x1ce6;
    /* 0x1CE8 */ s16 field_0x1ce8;
    /* 0x1CEC */ cXyz field_0x1cec;
    /* 0x1CF8 */ u8 field_0x1cf8;
    /* 0x1CF9 */ u8 field_0x1cf9;
    /* 0x1CFA */ u8 field_0x1cfa;
    /* 0x1CFC */ int field_0x1cfc;
    /* 0x1D00 */ f32 mKankyoBlend;
    /* 0x1D04 */ u8 mInitHIO;
};

STATIC_ASSERT(sizeof(b_gm_class) == 0x1d08);

class daB_GM_HIO_c {
public:
    /* 805ED94C */ daB_GM_HIO_c();
    /* 805F3E64 */ virtual ~daB_GM_HIO_c() {}

    /* 0x04 */ s8 field_0x4;
    /* 0x08 */ f32 model_size;
    /* 0x0C */ f32 check_size;
    /* 0x10 */ f32 dash_speed;
    /* 0x14 */ f32 dash_anm_speed;
    /* 0x18 */ f32 move_speed;
    /* 0x1C */ f32 move_anm_speed;
    /* 0x20 */ f32 wait_anm_speed;
    /* 0x24 */ f32 range;
    /* 0x28 */ s16 smoke_prim_R;
    /* 0x2A */ s16 smoke_prim_G;
    /* 0x2C */ s16 smoke_prim_B;
    /* 0x2E */ s16 smoke_env_R;
    /* 0x30 */ s16 smoke_env_G;
    /* 0x32 */ s16 smoke_env_B;
    /* 0x34 */ s16 smoke_alpha;
    /* 0x36 */ s16 field_0x36;
    /* 0x38 */ f32 smoke_blend;
    /* 0x3C */ f32 bend_degree_1;
    /* 0x40 */ f32 bend_degree_2;
    /* 0x44 */ f32 bend_degree_3;
    /* 0x48 */ u8 foot_pos_check;
    /* 0x49 */ u8 eye_check;
};

#endif /* D_A_B_GM_H */
