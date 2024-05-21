#ifndef D_A_E_HM_H
#define D_A_E_HM_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daE_HM_c : public fopEn_enemy_c {
    /* 806E043C */ void CreateHeap();
    /* 806E06C0 */ void initCcCylinder();
    /* 806E074C */ void setCcCylinder();
    /* 806E0958 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 806E0DB0 */ void Particle_Set(u32&, u16);
    /* 806E0E8C */ void SetAnm(int, int, f32, f32);
    /* 806E0F38 */ void W_TargetAngle(cXyz, cXyz);
    /* 806E0FF4 */ void W_DeathSpSet();
    /* 806E1118 */ void W_DeathAction();
    /* 806E1370 */ void W_DeathMotion();
    /* 806E155C */ void W_MoveCheckWall();
    /* 806E18A0 */ void W_WallCheck();
    /* 806E1A00 */ void WallExecute();
    /* 806E1AA0 */ void WallCreateExecute();
    /* 806E1B5C */ void CreateExecute();
    /* 806E1C28 */ void Tyakuchi_Set();
    /* 806E1E78 */ void UpDeathAction();
    /* 806E20FC */ void UpMoveAction();
    /* 806E2410 */ void UpWaitAction();
    /* 806E2568 */ void UpExecute();
    /* 806E25E8 */ void WallCheck();
    /* 806E2694 */ void MoveCheck();
    /* 806E29B8 */ void ShippuAction();
    /* 806E2B80 */ void ShieldMotion();
    /* 806E2C50 */ void ShieldAction();
    /* 806E2D08 */ void DeathSpSet();
    /* 806E2D40 */ void DeathMotion();
    /* 806E2EA0 */ void DeathCutDown();
    /* 806E2F5C */ void DeathAction();
    /* 806E31B0 */ void AttackAfter();
    /* 806E3208 */ void AttackMotion();
    /* 806E3420 */ void AttackAction();
    /* 806E34C8 */ void FreeMove();
    /* 806E3690 */ void LinkSearch();
    /* 806E3724 */ void WaitAction();
    /* 806E37F4 */ void MemberClear();
    /* 806E3800 */ void DownExecute();
    /* 806E3884 */ void At_Check();
    /* 806E39E8 */ void Obj_Damage();
    /* 806E3BE4 */ void ActionMode();
    /* 806E4008 */ void Yazirushi();
    /* 806E40B8 */ void setStabPos();
    /* 806E40D4 */ void Execute();
    /* 806E434C */ void Draw();
    /* 806E44F0 */ void Delete();
    /* 806E4558 */ void setBaseMtx();
    /* 806E4620 */ void CheckRoof();
    /* 806E486C */ void CheckWall();
    /* 806E4CCC */ void CreateStyle();
    /* 806E4E64 */ void Create();
private:
    /* 0x5ac */ u8 field_0x5ac[0xa88 - 0x5ac];
};
STATIC_ASSERT(sizeof(daE_HM_c) == 0xa88);

class daE_HM_HIO_c {
    /* 806E03EC */ daE_HM_HIO_c();
    /* 806E53F8 */ ~daE_HM_HIO_c();
};


#endif /* D_A_E_HM_H */
