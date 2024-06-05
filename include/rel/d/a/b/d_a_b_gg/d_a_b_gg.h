#ifndef D_A_B_GG_H
#define D_A_B_GG_H

#include "f_op/f_op_actor_mng.h"

class daB_GG_c : public fopEn_enemy_c {
public:
    /* 805DE464 */ void CreateHeap();
    /* 805DE650 */ void initCc();
    /* 805DE7A4 */ void setCcCylinder();
    /* 805DE9B8 */ void G_setCcCylinder();
    /* 805DEAD0 */ void MoveCo();
    /* 805DEB44 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 805DED58 */ void HeadctrlJoint(J3DJoint*, J3DModel*);
    /* 805DEF64 */ void SetAnm(int, int, f32, f32);
    /* 805DF9F4 */ void Yazirushi();
    /* 805DFA48 */ void SpeedClear();
    /* 805DFA64 */ void SetAction(u8, u8, u8);
    /* 805DFA8C */ void GetAction(u8, u8, u8);
    /* 805DFACC */ void DemoSkip(int);
    /* 805DFC24 */ void DemoSkipCallBack(void*, int);
    /* 805DFC58 */ void CameraSet();
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
    /* 805E561C */ void F_A_TargetMove(cXyz);
    /* 805E53DC */ void F_A_TargetMove(cXyz, u8);
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
    /* 805EA344 */ void Execute();
    /* 805EA72C */ void ObjHit();
    /* 805EA74C */ void At_Check();
    /* 805EA938 */ void MoveAt();
    /* 805EA9AC */ void F_AtHit();
    /* 805EAAFC */ void ChanceTime();
    /* 805EB028 */ void ArmAngleSet();
    /* 805EB090 */ void Guard();
    /* 805EB5E0 */ void Draw();
    /* 805EB8A8 */ void Delete();
    /* 805EB910 */ void setBaseMtx();
    /* 805EB980 */ void setShieldMtx();
    /* 805EB9DC */ void setSwordMtx();
    /* 805EBA4C */ void setSwordMtx1();
    /* 805EBAB8 */ void setHeadMtx();
    /* 805EBB30 */ void setHeadMtx1();
    /* 805EBBE4 */ void Create();
    /* 805EC424 */ daB_GG_c();

private:
    /* 0x5ac */ u8 field_0x5ac[0x116c - 0x5ac];
};
STATIC_ASSERT(sizeof(daB_GG_c) == 0x116c);

class daB_GG_HIO_c {
public:
    /* 805DE40C */ daB_GG_HIO_c();
    /* 805EC9C4 */ ~daB_GG_HIO_c();
};


#endif /* D_A_B_GG_H */
