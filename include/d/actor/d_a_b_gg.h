#ifndef D_A_B_GG_H
#define D_A_B_GG_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"

/**
 * @ingroup actors-enemies
 * @class daB_GG_c
 * @brief Aeralfos
 *
 * @details City in the Sky dungeon mini-boss.
 *
 */
class daB_GG_c : public fopEn_enemy_c {
public:
    /* 805DE464 */ int CreateHeap();
    /* 805DE650 */ void initCc();
    /* 805DE7A4 */ void setCcCylinder();
    /* 805DE9B8 */ void G_setCcCylinder();
    /* 805DEAD0 */ void MoveCo();
    /* 805DEB44 */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 805DED58 */ int HeadctrlJoint(J3DJoint*, J3DModel*);
    /* 805DEF64 */ void SetAnm(int, int, f32, f32);
    /* 805DF9F4 */ void Yazirushi();
    /* 805DFA48 */ void SpeedClear();
    /* 805DFA64 */ void SetAction(u8, u8, u8);
    /* 805DFA8C */ u8 GetAction(u8, u8, u8);
    /* 805DFACC */ void DemoSkip(int);
    /* 805DFC24 */ static int DemoSkipCallBack(void*, int);
    /* 805DFC58 */ bool CameraSet();
    /* 805DFD78 */ void SetStopingCam();
    /* 805DFDFC */ void SetStopCam(cXyz, f32, f32, s16);
    /* 805DFF4C */ void SetMoveCam(cXyz, f32, f32, s16, f32, f32);
    /* 805E00D4 */ void SetMoveCam1(f32, f32);
    /* 805E01F8 */ void SetReleaseCam();
    /* 805E029C */ void St_CamAction();
    /* 805E0F2C */ void St_DemoAction();
    /* 805E18E8 */ void Md_CamAction();
    /* 805E1C28 */ void Md_DemoAction();
    /* 805E23E8 */ void Gn_CamAction();
    /* 805E2974 */ void Gn_DemoAction();
    /* 805E2F44 */ void DemoAction();
    /* 805E3024 */ void F_WaitAction();
    /* 805E31E4 */ void F_FookChk();
    /* 805E3448 */ void F_MoveAction();
    /* 805E3CAC */ void F_LV7_W_MoveAction();
    /* 805E3F0C */ void F_AttackAction();
    /* 805E4914 */ void F_DamageAction();
    /* 805E5190 */ void AttentionChk();
    /* 805E5220 */ void FlyAction();
    /* 805E561C */ bool F_A_TargetMove(cXyz);
    /* 805E53DC */ bool F_A_TargetMove(cXyz, u8);
    /* 805E5808 */ void F_A_MoveAction();
    /* 805E5D0C */ void F_A_WaitAction();
    /* 805E5D2C */ void F_A_Action();
    /* 805E5E78 */ void FookChk();
    /* 805E608C */ void CutChk();
    /* 805E6174 */ void G_MoveAction();
    /* 805E6AB0 */ void FallChk();
    /* 805E6E30 */ void G_AttackAction();
    /* 805E73A8 */ void G_DamageAction();
    /* 805E7D50 */ void G_DeathAction();
    /* 805E7F50 */ void G_DeathAction1();
    /* 805E82F0 */ void DeathCam();
    /* 805E8D48 */ void GroundAction();
    /* 805E8EE8 */ void StopAction();
    /* 805E92A0 */ void HitChk();
    /* 805E9310 */ void Action();
    /* 805E9418 */ void HeadAction();
    /* 805E9A28 */ void SetHeadAngle();
    /* 805E9B48 */ void SoundChk();
    /* 805EA344 */ int Execute();
    /* 805EA72C */ void ObjHit();
    /* 805EA74C */ void At_Check();
    /* 805EA938 */ void MoveAt();
    /* 805EA9AC */ void F_AtHit();
    /* 805EAAFC */ void ChanceTime();
    /* 805EB028 */ void ArmAngleSet();
    /* 805EB090 */ void Guard();
    /* 805EB5E0 */ int Draw();
    /* 805EB8A8 */ int Delete();
    /* 805EB910 */ void setBaseMtx();
    /* 805EB980 */ void setShieldMtx();
    /* 805EB9DC */ void setSwordMtx();
    /* 805EBA4C */ void setSwordMtx1();
    /* 805EBAB8 */ void setHeadMtx();
    /* 805EBB30 */ void setHeadMtx1();
    /* 805EBBE4 */ int Create();

    /* 0x05AC */ f32 field_0x5ac;
    /* 0x05B0 */ u8 field_0x5b0;
    /* 0x05B1 */ u8 field_0x5b1;
    /* 0x05B2 */ u8 field_0x5b2;
    /* 0x05B4 */ s16 mInOutPosIdx;
    /* 0x05B6 */ u8 field_0x5b6;
    /* 0x05B7 */ u8 field_0x5b7;
    /* 0x05B8 */ u8 field_0x5B8[0x05BA - 0x05B8];
    /* 0x05BA */ s16 field_0x5ba;
    /* 0x05BC */ f32 field_0x5bc;
    /* 0x05C0 */ f32 field_0x5c0;
    /* 0x05C4 */ u8 field_0x5c4;
    /* 0x05C5 */ u8 mAction;
    /* 0x05C6 */ u8 mSubAction;
    /* 0x05C7 */ u8 mMode;
    /* 0x05C8 */ u8 mPrevAction;
    /* 0x05C9 */ u8 mPrevSubAction;
    /* 0x05CA */ u8 mPrevMode;
    /* 0x05CB */ u8 mCamMode;
    /* 0x05CC */ s16 field_0x5cc;
    /* 0x05CE */ u8 field_0x5ce;
    /* 0x05CF */ u8 field_0x5cf;
    /* 0x05D0 */ u8 field_0x5d0;
    /* 0x05D4 */ int mAnm;
    /* 0x05D8 */ s16 mTimers[4];
    /* 0x05E0 */ s16 field_0x5e0;
    /* 0x05E4 */ cXyz field_0x5e4;
    /* 0x05F0 */ u8 field_0x5f0;
    /* 0x05F4 */ cXyz mCamCenter;
    /* 0x0600 */ cXyz mCamEye;
    /* 0x060C */ cXyz field_0x60c;
    /* 0x0618 */ cXyz field_0x618;
    /* 0x0624 */ cXyz mCamCenterTarget;
    /* 0x0630 */ cXyz mCamEyeTarget;
    /* 0x063C */ f32 mCamFovy;
    /* 0x0640 */ f32 mModelPlaySpeed;
    /* 0x0644 */ f32 field_0x644;
    /* 0x0648 */ f32 field_0x648;
    /* 0x064C */ f32 field_0x64c;
    /* 0x0650 */ f32 field_0x650;
    /* 0x0654 */ u8 field_0x654[0x0658 - 0x0654];
    /* 0x0658 */ s16 field_0x658;
    /* 0x065A */ s16 field_0x65a;
    /* 0x065C */ cXyz field_0x65c;
    /* 0x0668 */ f32 field_0x668;
    /* 0x066C */ u8 field_0x66c;
    /* 0x066D */ u8 field_0x66d;
    /* 0x0670 */ cXyz mSwordPos;
    /* 0x067C */ csXyz mSwordRot;
    /* 0x0684 */ cXyz field_0x684;
    /* 0x0690 */ u8 mType;
    /* 0x0694 */ cXyz mHeadPos;
    /* 0x06A0 */ csXyz mHeadRot;
    /* 0x06A8 */ cXyz field_0x6a8;
    /* 0x06B4 */ csXyz field_0x6b4;
    /* 0x06BA */ u8 field_0x6ba;
    /* 0x06BC */ s16 field_0x6bc;
    /* 0x06BE */ s16 field_0x6be;
    /* 0x06C0 */ u8 field_0x6C0[0x06C4 - 0x06C0];
    /* 0x06C4 */ s16 field_0x6c4;
    /* 0x06C6 */ u8 field_0x6C6[0x06C8 - 0x06C6];
    /* 0x06C8 */ csXyz mArmL1Rot;
    /* 0x06CE */ csXyz mArmL2Rot;
    /* 0x06D4 */ s16 field_0x6d4;
    /* 0x06D6 */ s16 field_0x6d6;
    /* 0x06D8 */ dCcD_Cyl mCcCyl;
    /* 0x0814 */ dCcD_Sph mCcSph[3];
    /* 0x0BBC */ dCcD_Cyl mCcHookCyl;
    /* 0x0CF8 */ dCcD_Sph mCcShieldSph;
    /* 0x0E30 */ mDoExt_McaMorfSO* mpModelMorf;
    /* 0x0E34 */ J3DModel* mpShieldModel;
    /* 0x0E38 */ J3DModel* mpSwordModel;
    /* 0x0E3C */ J3DModel* mpHelmetModel;
    /* 0x0E40 */ request_of_phase_process_class mPhase;
    /* 0x0E48 */ u32 mShadowId;
    /* 0x0E4C */ Z2CreatureEnemy mSound;
    /* 0x0EF0 */ dBgS_AcchCir mAcchCir;
    /* 0x0F30 */ dBgS_ObjAcch mAcch;
    /* 0x1108 */ dCcD_Stts mCcStts;
    /* 0x1144 */ dCcU_AtInfo mAtInfo;
    /* 0x1168 */ u8 mHIOInit;
};

STATIC_ASSERT(sizeof(daB_GG_c) == 0x116c);

#endif /* D_A_B_GG_H */
