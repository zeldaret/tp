#ifndef D_A_B_OB_H
#define D_A_B_OB_H

#include "SSystem/SComponent/c_phase.h"
#include "Z2AudioLib/Z2Creature.h"
#include "f_op/f_op_actor.h"
#include "d/bg/d_bg_s_acch.h"
#include "d/cc/d_cc_d.h"
#include "d/cc/d_cc_uty.h"

enum b_ob_action {
    // Phase 1
    OB_ACTION_CORE_START,
    OB_ACTION_CORE_HAND_MOVE,
    OB_ACTION_BOMBFISH_SET,
    OB_ACTION_CORE_HOOK,
    OB_ACTION_CORE_CHANCE,
    OB_ACTION_CORE_END,

    // Phase 2
    OB_ACTION_FISH_NORMAL = 100,
    OB_ACTION_FISH_VACUME,
    OB_ACTION_FISH_END,
};

enum b_oh_anm {
    OB_ANM_APPEAR = 0x12,
    OB_ANM_APPEAR_2,
    OB_ANM_DEAD,
    OB_ANM_EAT,
    OB_ANM_EAT_2,
    OB_ANM_LAST_DAMAGE,
    OB_ANM_OPEN_MOUTH,
    OB_ANM_OPEN_MOUTH_WAIT,
    OB_ANM_SWALLOW,
    OB_ANM_SWIM_WAIT,
    OB_ANM_TENTACLE_END,
    OB_ANM_THROWUP,
    OB_ANM_WAIT,
};

struct ob_part_s {
    /* 0x00 */ mDoExt_McaMorf* mpMorf;
    /* 0x04 */ mDoExt_McaMorf* mpFinMorf;
    /* 0x08 */ mDoExt_McaMorf* mpFinUnkMorf;
    /* 0x0C */ mDoExt_McaMorf* mpFinBMorf;
    /* 0x10 */ mDoExt_McaMorf* mpFinCMorf;
    /* 0x14 */ cXyz mPos;
    /* 0x20 */ csXyz mAngle;
    /* 0x26 */ s16 field_0x26;
    /* 0x28 */ f32 mSize;
    /* 0x2C */ csXyz mFinARot;
    /* 0x32 */ csXyz mFinBRot;
    /* 0x38 */ csXyz mFinCRot;
    /* 0x3E */ s8 field_0x3e;
    /* 0x3F */ s8 mHide;
    /* 0x40 */ dCcD_Sph mSph;
};  // Size: 0x178

struct ob_ke_s {
    /* 0x000 */ cXyz field_0x0[20];
    /* 0x0F0 */ cXyz field_0xf0[20];
    /* 0x1E0 */ cXyz field_0x1e0;
};  // Size: 0x1EC

/**
 * @ingroup actors-enemies
 * @brief Morpheel (body)
 * 
 * Lakebed Temple dungeon boss. This is the core/body part of the boss.
 * 
 */
class b_ob_class : public fopEn_enemy_c {
public:
    /* 0x05AC */ request_of_phase_process_class mPhase;
    /* 0x05B4 */ mDoExt_McaMorfSO* mpCoreMorf;
    /* 0x05B8 */ s8 mHideCore;
    /* 0x05BC */ f32 mBossLightScale;
    /* 0x05C0 */ ob_part_s mBodyParts[20];
    /* 0x2320 */ int field_0x2320;
    /* 0x2324 */ cXyz field_0x2324[512];
    /* 0x3B24 */ csXyz field_0x3b24[512];
    /* 0x4724 */ J3DModel* mpSuiModel;
    /* 0x4728 */ mDoExt_btkAnm* mpSuiBtk;
    /* 0x472C */ mDoExt_brkAnm* mpSuiBrk;
    /* 0x4730 */ f32 mSuiBrkFrame;
    /* 0x4734 */ int mAnmID;
    /* 0x4738 */ int mCoreAnm;
    /* 0x4738 */ u8 mCoreAnmMode;
    /* 0x4740 */ f32 field_0x4740;
    /* 0x4744 */ s8 field_0x4744;
    /* 0x4745 */ s8 mDrawShadow;
    /* 0x4748 */ u32 mShadowKey;
    /* 0x474C */ s8 mCoreBattleMode;
    /* 0x474D */ s8 mFishBattleMode;
    /* 0x474E */ u8 mAttnOffTimer;
    /* 0x4750 */ s16 field_0x4750;
    /* 0x4752 */ s16 mAction;
    /* 0x4754 */ s16 mMode;
    /* 0x4756 */ s16 field_0x4756;
    /* 0x4758 */ cXyz mTargetMovePos;
    /* 0x4764 */ csXyz mMoveAngle;
    /* 0x476A */ s16 field_0x476a;
    /* 0x476C */ s16 mYAngleToPlayer;
    /* 0x476E */ s16 mXAngleToPlayer;
    /* 0x4770 */ f32 mDistToPlayer;
    /* 0x4774 */ u8 field_0x4774[0x4778 - 0x4774];
    /* 0x4778 */ s16 mTimers[6];
    /* 0x05AC */ s16 mHitIFrameTimer;
    /* 0x4786 */ u8 field_0x4786[0x4788 - 0x4786];
    /* 0x4788 */ int mCoreHandNo;
    /* 0x478C */ int field_0x478c;
    /* 0x4790 */ int field_0x4790;
    /* 0x4794 */ s16 field_0x4794;
    /* 0x4798 */ f32 field_0x4798;
    /* 0x479C */ f32 field_0x479c;
    /* 0x47A0 */ f32 field_0x47a0;
    /* 0x47A4 */ s16 field_0x47a4[3];
    /* 0x47AA */ s16 field_0x47aa;
    /* 0x47AC */ s16 field_0x47ac;
    /* 0x47AE */ s16 field_0x47ae;
    /* 0x47B0 */ s16 field_0x47b0;
    /* 0x47B4 */ int field_0x47b4;
    /* 0x47B8 */ s16 mHangTimer;
    /* 0x47BA */ s16 field_0x47ba;
    /* 0x47BC */ s16 field_0x47bc;
    /* 0x47C0 */ f32 field_0x47c0;
    /* 0x47C4 */ s16 field_0x47c4;
    /* 0x47C8 */ int mDemoMovePosIdx;
    /* 0x47CC */ dCcD_Stts mCoreCcStts;
    /* 0x4808 */ dCcD_Sph mCcSph;
    /* 0x4940 */ dCcD_Sph mCoreSph;
    /* 0x4A78 */ dCcU_AtInfo mAtInfo;
    /* 0x4A9C */ u8 field_0x4a9c[0x4aa0 - 0x4a9c];
    /* 0x4AA0 */ dCcD_Stts mBodyCcStts;
    /* 0x4ADC */ dCcD_Sph mBodySph;
    /* 0x4C14 */ dCcD_Sph mFishHeadSph;
    /* 0x4D4C */ dBgS_AcchCir mAcchCir;
    /* 0x4D8C */ dBgS_ObjAcch mAcch;
    /* 0x4F64 */ u32 mTentacleActorIDs[8];
    /* 0x4F84 */ ob_ke_s field_0x4f84[5];
    /* 0x5920 */ mDoExt_3DlineMat0_c field_0x5920;
    /* 0x593C */ Z2CreatureEnemy mSound;
    /* 0x59E0 */ Z2CreatureOI mOISound;
    /* 0x5BE4 */ cXyz field_0x5be4[13];
    /* 0x5C80 */ s16 mDemoAction;
    /* 0x5C82 */ s16 mDemoActionTimer;
    /* 0x5C84 */ cXyz mDemoCamEye;
    /* 0x5C90 */ cXyz mDemoCamCenter;
    /* 0x5C9C */ cXyz mDemoCamEyeTarget;
    /* 0x5CA8 */ cXyz mDemoCamCenterTarget;
    /* 0x5CB4 */ f32 field_0x5cb4;
    /* 0x5CB8 */ f32 field_0x5cb8;
    /* 0x5CBC */ f32 field_0x5cbc;
    /* 0x5CC0 */ f32 field_0x5cc0;
    /* 0x5CC4 */ f32 field_0x5cc4;
    /* 0x5CC8 */ f32 field_0x5cc8;
    /* 0x5CCC */ f32 mDemoCamFovy;
    /* 0x5CD0 */ f32 field_0x5cd0;
    /* 0x5CD4 */ f32 field_0x5cd4;
    /* 0x5CD8 */ f32 field_0x5cd8;
    /* 0x5CDC */ f32 field_0x5cdc;
    /* 0x5CE0 */ s16 field_0x5ce0;
    /* 0x5CE4 */ f32 field_0x5ce4;
    /* 0x5CE8 */ int field_0x5ce8;
    /* 0x5CEC */ cXyz field_0x5cec;
    /* 0x5CF8 */ s16 field_0x5cf8;
    /* 0x5CFC */ f32 field_0x5cfc;
    /* 0x5D00 */ f32 field_0x5d00;
    /* 0x5D04 */ f32 field_0x5d04;
    /* 0x5D08 */ s16 field_0x5d08;
    /* 0x5D0A */ s16 mBlureRate;
    /* 0x5D0C */ s16 mBlureRateTarget;
    /* 0x5D0E */ u8 field_0x5d0e[0x5d10 - 0x5d0e];
    /* 0x5D10 */ u8 field_0x5d10;
    /* 0x5D11 */ s8 mHangHitCount;
    /* 0x5D12 */ s8 mHangFinishCount;
    /* 0x5D12 */ s8 field_0x5d13;
    /* 0x5D14 */ f32 field_0x5d14;
    /* 0x5D18 */ u8 field_0x5d18;
    /* 0x5D19 */ u8 field_0x5d19[0x5d24 - 0x5d19];
    /* 0x5D24 */ u32 field_0x5d24[5];
    /* 0x5D38 */ u32 field_0x5d38;
    /* 0x5D3C */ s16 mZoneSwTimer;
    /* 0x5D40 */ JPABaseEmitter* field_0x5d40[2][19];
    /* 0x5DD8 */ int field_0x5dd8;
    /* 0x5DDC */ f32 mColsetBlend;
    /* 0x5DE0 */ u8 mHIOInit;
};

STATIC_ASSERT(sizeof(b_ob_class) == 0x5DE4);

class daB_OB_HIO_c {
public:
public:
    /* 8061056C */ daB_OB_HIO_c();
    /* 8061A808 */ virtual ~daB_OB_HIO_c();

    /* 0x04 */ s8 field_0x04;
    /* 0x08 */ f32 mCoreSize;
    /* 0x0C */ f32 mCoreMoveSpeed;
    /* 0x10 */ f32 mBodySize;
    /* 0x14 */ s16 mLightR;
    /* 0x16 */ s16 mLightG;
    /* 0x18 */ s16 mLightB;
    /* 0x1C */ f32 mRange;
};


#endif /* D_A_B_OB_H */
