#ifndef D_A_E_PH_H
#define D_A_E_PH_H

#include "Z2AudioLib/Z2Creature.h"
#include "d/cc/d_cc_uty.h"
#include "d/d_path.h"

/**
* @ingroup actors-enemies
* @brief Peahat
*
*/
class daE_PH_c : public fopEn_enemy_c {
public:
    /* 8073D48C */ void initCcSph();
    /* 8073D5C4 */ void SetStopingCam();
    /* 8073D648 */ void SetStopCam(cXyz, f32, f32, s16);
    /* 8073D768 */ void SetCMoveCam(cXyz, f32, f32);
    /* 8073D7AC */ void SetReleaseCam();
    /* 8073D850 */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 8073D950 */ void setCcSph();
    /* 8073DB28 */ void SetAnm(int, int, f32, f32);
    /* 8073DBD4 */ void SearchNearP();
    /* 8073DDF8 */ void FlyAnm();
    /* 8073E068 */ void SetShapeAngle();
    /* 8073E22C */ void GoTarget();
    /* 8073E4A4 */ void SetCheckAngle();
    /* 8073E8B0 */ bool C_CheckPoint();
    /* 8073E924 */ void DownBoots();
    /* 8073EA50 */ void UpBoots();
    /* 8073EB64 */ void C_Action();
    /* 8073ED0C */ void SearchNextPos();
    /* 8073ED58 */ void SearchBackPos();
    /* 8073EDA0 */ void S_SetPlaySpeed();
    /* 8073EE68 */ void S_GoTarget();
    /* 8073F250 */ bool S_CheckPoint();
    /* 8073F3D4 */ void S_SetAngle();
    /* 8073F8C8 */ void FlyAnm2();
    /* 8073FB70 */ void S_Action();
    /* 8073FBDC */ void StopAction();
    /* 8073FD70 */ void Action();
    /* 80740024 */ void SetHeadAngle(s16);
    /* 80740098 */ void CamAction();
    /* 80740318 */ void DemoAction();
    /* 807408C0 */ void ToumeiAction();
    /* 80740B3C */ int Execute();
    /* 80740C3C */ void AttentionSet();
    /* 80740E70 */ void ObjHit();
    /* 807410B0 */ void BaseSet();
    /* 8074117C */ void De_Timer();
    /* 807411C0 */ void EyeSet();
    /* 80741200 */ int Delete();
    /* 80741268 */ void setBaseMtx();
    /* 80741428 */ int create();

    inline int CreateHeap();
    inline int Draw();

    /* 0x5AC */ s16 mStopTimer;
    /* 0x5AE */ s16 field_0x5ae;
    /* 0x5B0 */ u8 mCAction;
    /* 0x5B1 */ u8 mCamAction;
    /* 0x5B2 */ u8 field_0x5b2;
    /* 0x5B4 */ s16 field_0x5b4;
    /* 0x5B8 */ f32 field_0x5b8;
    /* 0x5BC */ cXyz mCamEye;
    /* 0x5C8 */ cXyz mCamEyeTarget;
    /* 0x5D4 */ cXyz mCamCenter;
    /* 0x5E0 */ cXyz mCamCenterTarget;
    /* 0x5EC */ s16 mTimers[3];
    /* 0x5F4 */ f32 mCamFovY;
    /* 0x5F8 */ u32 mFlyRockEMKey;
    /* 0x5FC */ u32 mFlyTsubuEMKey;
    /* 0x600 */ u32 mDemoRockEMKey;
    /* 0x604 */ u32 mDemoTsubuEMKey;
    /* 0x608 */ u32 mDemoRock2EMKey;
    /* 0x60C */ u32 mDemoRock3EMKey;
    /* 0x610 */ s16 field_0x610;
    /* 0x612 */ s16 field_0x612;
    /* 0x614 */ s16 field_0x614;
    /* 0x616 */ s16 field_0x616;
    /* 0x618 */ s16 field_0x618;
    /* 0x61A */ s16 field_0x61a;
    /* 0x61C */ s16 field_0x61c;
    /* 0x61E */ s16 field_0x61e;
    /* 0x620 */ f32 field_0x620;
    /* 0x624 */ f32 mAnmSpeed;
    /* 0x628 */ int mAnmID;
    /* 0x62C */ int mCurrentPntNo;
    /* 0x630 */ f32 field_0x630;
    /* 0x634 */ f32 mTargetSpeedY;
    /* 0x638 */ f32 mTargetSpeedF;
    /* 0x63C */ f32 field_0x63c;
    /* 0x640 */ f32 field_0x640;
    /* 0x644 */ dPath* mpPath;
    /* 0x648 */ cXyz mCurrentPntPos;
    /* 0x654 */ cXyz field_0x654;
    /* 0x660 */ u8 mAction;
    /* 0x661 */ u8 mPathNo;
    /* 0x662 */ u8 field_0x662;
    /* 0x663 */ u8 mMoveSpeed;
    /* 0x664 */ u8 mStopTimePrm;
    /* 0x666 */ s16 mHeadRotX;
    /* 0x668 */ s16 mHeadRotY;
    /* 0x66C */ request_of_phase_process_class mPhase;
    /* 0x674 */ Z2CreatureEnemy mSound;
    /* 0x718 */ u32 mShadowKey;
    /* 0x71C */ mDoExt_McaMorfSO* mpMorf;
    /* 0x720 */ dBgS_AcchCir mAcchCir;
    /* 0x760 */ dBgS_ObjAcch mAcch;
    /* 0x938 */ dCcD_Stts mCcStts;
    /* 0x974 */ dCcD_Sph mCcSph;
    /* 0xAAC */ dCcU_AtInfo mAtInfo;
    /* 0xAD0 */ u8 mInitializedHIO;
};

#endif /* D_A_E_PH_H */
