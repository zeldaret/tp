#ifndef D_A_E_DF_H
#define D_A_E_DF_H

#include "Z2AudioLib/Z2Creature.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class daE_DF_c
 * @brief Deku Flower
 *
 * @details
 *
 */
class daE_DF_c : public fopEn_enemy_c {
public:
    /* 806A7710 */ int CreateHeap();
    /* 806A7828 */ void initCcCylinder();
    /* 806A78A0 */ void setCcCylinder();
    /* 806A78D4 */ void SetAnm(int, int, f32, f32);
    /* 806A7980 */ void CameraSet(f32);
    /* 806A7B40 */ int DemoStart();
    /* 806A7C3C */ void SetReleaseCam();
    /* 806A7CE0 */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 806A8030 */ void Link_Eat_Pos();
    /* 806A8098 */ void Set_Angle(cXyz*);
    /* 806A816C */ void Obj_Damage();
    /* 806A8244 */ void DamageAction();
    /* 806A8368 */ void BombEatAction();
    /* 806A8790 */ void Spid_Out();
    /* 806A8938 */ void LinkEatAction();
    /* 806A8C80 */ int Mogu_Mogu();
    /* 806A8D98 */ void ObjEatAction();
    /* 806A8ED4 */ void EatAction();
    /* 806A8F2C */ void SearchAction();
    /* 806A91B4 */ void WaitAction();
    /* 806A9254 */ void MissAction();
    /* 806A9304 */ void Action();
    /* 806A9384 */ int Execute();
    /* 806A949C */ void Yazirushi();
    /* 806A94E0 */ int Draw();
    /* 806A9550 */ int Delete();
    /* 806A95B8 */ void setBaseMtx();
    /* 806A9678 */ int Create();

public:
    /* 0x5AC */ u8 abraxas;
    /* 0x5AD */ u8 aido;
    /* 0x5AE */ u8 alduin;
    /* 0x5B0 */ csXyz apsu;
    /* 0x5B6 */ u8 balerion[0x5B8 - 0x5B6];
    /* 0x5B8 */ s32 brinsop;
    /* 0x5BC */ u8 drogon;
    /* 0x5BE */ s16 eingana;
    /* 0x5C0 */ s32 fafnir;
    /* 0x5C4 */ s16 falkor;
    /* 0x5C6 */ s16 galeru;
    /* 0x5C8 */ mDoExt_McaMorfSO* mpMorfSO;
    /* 0x5CC */ request_of_phase_process_class mPhaseReq;
    /* 0x5D4 */ u8 haku[0x5D8 - 0x5D4];
    /* 0x5D8 */ Z2CreatureEnemy mCreatureSound;
    /* 0x67C */ dCcD_Stts mStts;
    /* 0x6B8 */ dCcD_Cyl mCyl;
    /* 0x7F4 */ dCcU_AtInfo mAtInfo;
    /* 0x818 */ u8 mHIOInit;
    /* 0x819 */ u8 katla;
    /* 0x81C */ cXyz ness;
    /* 0x828 */ cXyz norbert;
    /* 0x834 */ f32 saphira;
};

STATIC_ASSERT(sizeof(daE_DF_c) == 0x838);

class daE_DF_HIO_c : public JORReflexible {
public:
    /* 806A76EC */ daE_DF_HIO_c();
    /* 806A9A84 */ virtual ~daE_DF_HIO_c() {};

    void genMessage(JORMContext*);

    /* 0x4 */ s8 field_0x4;
    /* 0x8 */ f32 mSpeed;
};

STATIC_ASSERT(sizeof(daE_DF_HIO_c) == 0xC);

#endif /* D_A_E_DF_H */
