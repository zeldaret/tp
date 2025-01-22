#ifndef D_A_B_DRE_H
#define D_A_B_DRE_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_acch.h"
#include "d/d_cc_uty.h"
#include "Z2AudioLib/Z2Creature.h"

/**
 * @ingroup actors-enemies
 * @class daB_DRE_c
 * @brief Argorok (child actor?)
 *
 * @details Used in the City in the Sky dungeon boss fight.
 *
 */
class daB_DRE_c : public fopEn_enemy_c {
public:
    /* 805C7DD4 */ void SetAnm(mDoExt_McaMorfSO*, int, int, f32, f32);
    /* 805C7EAC */ bool CameraSet();
    /* 805C8008 */ void SetStopingCam();
    /* 805C808C */ void SetStopCam(cXyz, f32, f32, s16);
    /* 805C8208 */ void SetCMoveCam(cXyz, f32, f32);
    /* 805C81B8 */ bool SetCMoveCam(cXyz, f32);
    /* 805C8348 */ void SetEyeMoveCam(cXyz, f32, f32, s16, f32, f32);
    /* 805C824C */ void SetEyeMoveCam(cXyz, f32, f32, s16, f32);
    /* 805C8458 */ void SetMoveCam(f32, f32);
    /* 805C8544 */ void SetReleaseCam();
    /* 805C85E8 */ void CamAction2();
    /* 805C8BF8 */ void DrAction2();
    /* 805C8EDC */ void CamAction();
    /* 805C9318 */ void Action();
    /* 805C9378 */ void DrAction();
    /* 805C9B40 */ void SoundChk();
    /* 805CA158 */ int Execute();
    /* 805CA49C */ void SpeedSet();
    /* 805CA4FC */ void BreathSet();
    /* 805CA670 */ int Delete();
    /* 805CA6C0 */ void setBaseMtx();
    /* 805CA944 */ int create();

    inline int CreateHeap();
    inline int Draw();

    MtxP getMtx() { return mpModelMorf->getModel()->getAnmMtx(15); }

    /* 0x5AC */ u8 field_0x5AC[0x5B0 - 0x5AC];
    /* 0x5B0 */ int mAnm;
    /* 0x5B4 */ u8 mDrMode;
    /* 0x5B5 */ u8 field_0x5b5;
    /* 0x5B6 */ u8 field_0x5b6;
    /* 0x5B7 */ u8 mAction;
    /* 0x5B8 */ u8 mCameraMode;
    /* 0x5B9 */ u8 field_0x5b9;
    /* 0x5BA */ u8 field_0x5BA[0x5C8 - 0x5BA];
    /* 0x5C8 */ cXyz mCamCenter;
    /* 0x5D4 */ cXyz mCamCenterTarget;
    /* 0x5E0 */ cXyz mCamEye;
    /* 0x5EC */ cXyz mCamEyeTarget;
    /* 0x5F8 */ f32 mBlurRate;
    /* 0x5FC */ s16 field_0x5fc;
    /* 0x600 */ f32 mCamFovy;
    /* 0x604 */ mDoExt_brkAnm* mpCoreBrk;
    /* 0x608 */ f32 field_0x608;
    /* 0x60C */ u8 field_0x60C[0x610 - 0x60C];
    /* 0x610 */ f32 mTargetSpeedF;
    /* 0x614 */ f32 mTargetSpeedY;
    /* 0x618 */ f32 field_0x618;
    /* 0x61C */ u32 mBreathEmtrIDs[4];
    /* 0x62C */ s16 mTimers[5];
    /* 0x636 */ u8 mHideModel;
    /* 0x637 */ u8 mHideParts;
    /* 0x638 */ u8 field_0x638;
    /* 0x63C */ request_of_phase_process_class mPhase;
    /* 0x644 */ Z2CreatureEnemy mSound;
    /* 0x6E8 */ u32 mShadowKey;
    /* 0x6EC */ mDoExt_McaMorfSO* mpModelMorf;
    /* 0x6F0 */ dBgS_AcchCir mAcchCir;
    /* 0x730 */ dBgS_ObjAcch mAcch;
    /* 0x908 */ dCcU_AtInfo mAtInfo;
    /* 0x92C */ u8 field_0x92c[0x930 - 0x92C];
};

STATIC_ASSERT(sizeof(daB_DRE_c) == 0x930);


#endif /* D_A_B_DRE_H */
