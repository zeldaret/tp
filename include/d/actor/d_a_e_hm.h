#ifndef D_A_E_HM_H
#define D_A_E_HM_H

#include "f_op/f_op_actor_mng.h"

#include <d/d_cc_uty.h>

/**
 * @ingroup actors-enemies
 * @class daE_HM_c
 * @brief Torch Slug
 *
 * @details
 *
 */
class daE_HM_c : public fopEn_enemy_c {
public:
    /* 806E043C */ int CreateHeap();
    /* 806E06C0 */ void initCcCylinder();
    /* 806E074C */ void setCcCylinder();
    /* 806E0958 */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 806E0DB0 */ void Particle_Set(u32&, u16);
    /* 806E0E8C */ void SetAnm(int, int, f32, f32);
    /* 806E0F38 */ s16 W_TargetAngle(cXyz, cXyz);
    /* 806E0FF4 */ void W_DeathSpSet();
    /* 806E1118 */ void W_DeathAction();
    /* 806E1370 */ void W_DeathMotion();
    /* 806E155C */ int W_MoveCheckWall();
    /* 806E18A0 */ int W_WallCheck();
    /* 806E1A00 */ void WallExecute();
    /* 806E1AA0 */ void WallCreateExecute();
    /* 806E1B5C */ void CreateExecute();
    /* 806E1C28 */ void Tyakuchi_Set();
    /* 806E1E78 */ void UpDeathAction();
    /* 806E20FC */ void UpMoveAction();
    /* 806E2410 */ void UpWaitAction();
    /* 806E2568 */ void UpExecute();
    /* 806E25E8 */ int WallCheck();
    /* 806E2694 */ int MoveCheck();
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
    /* 806E40D4 */ int Execute();
    /* 806E434C */ int Draw();
    /* 806E44F0 */ int Delete();
    /* 806E4558 */ void setBaseMtx();
    /* 806E4620 */ void CheckRoof();
    /* 806E486C */ void CheckWall();
    /* 806E4CCC */ void CreateStyle();
    /* 806E4E64 */ int Create();
private:
    /* 0x5AC */ u8 field_0x5ac;
    /* 0x5AD */ u8 field_0x5ad;
    /* 0x5AE */ u8 field_0x5ae;
    /* 0x5AF */ u8 field_0x5af;
    /* 0x5B0 */ f32 field_0x5b0;
    /* 0x5B4 */ s16 field_0x5b4;
    /* 0x5B8 */ s32 field_0x5b8;
    /* 0x5BC */ s32 field_0x5bc;
    /* 0x5C0 */ s16 field_0x5c0;
    /* 0x5C2 */ s16 field_0x5c2;
    /* 0x5C4 */ fpc_ProcID field_0x5c4;
    /* 0x5C8 */ u8 field_0x5c8[0x5cc - 0x5c8];
    /* 0x5CC */ csXyz field_0x5cc;
    /* 0x5D2 */ s16 field_0x5d2;
    /* 0x5D4 */ s16 field_0x5d4;
    /* 0x5D6 */ s16 field_0x5d6;
    /* 0x5D8 */ u8 field_0x5d8[0x5da - 0x5d8];
    /* 0x5DA */ u8 field_0x5da;
    /* 0x5DC */ cXyz field_0x5dc;
    /* 0x5E8 */ cXyz field_0x5e8;
    /* 0x5F4 */ f32 field_0x5f4;
    /* 0x5F8 */ f32 field_0x5f8;
    /* 0x5FC */ u32 field_0x5fc;
    /* 0x600 */ u32 field_0x600;
    /* 0x604 */ s32 field_0x604;
    /* 0x608 */ u32 field_0x608;
    /* 0x60C */ u8 field_0x60c;
    /* 0x60D */ u8 field_0x60d;
    /* 0x610 */ mDoExt_brkAnm* mpBrkAnm;
    /* 0x614 */ mDoExt_btkAnm* mpBtkAnm;
    /* 0x618 */ mDoExt_McaMorfSO* mAnm_p;
    /* 0x61C */ s32 field_0x61c;
    /* 0x620 */ u8 field_0x620;
    /* 0x624 */ request_of_phase_process_class mPhase;
    /* 0x62C */ u32 field_0x62c;
    /* 0x630 */ Z2CreatureEnemy mSound;
    /* 0x6D4 */ dBgS_AcchCir mAcchCir;
    /* 0x714 */ dBgS_ObjAcch mAcch;
    /* 0x8EC */ dCcD_Stts mStts;
    /* 0x928 */ dCcD_Sph mSph;
    /* 0xA60 */ dCcU_AtInfo mAtInfo;
    /* 0xA84 */ u8 field_0xa84;
};

STATIC_ASSERT(sizeof(daE_HM_c) == 0xa88);


#endif /* D_A_E_HM_H */
