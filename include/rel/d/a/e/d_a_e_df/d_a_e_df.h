#ifndef D_A_E_DF_H
#define D_A_E_DF_H
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
    /* 806A7710 */ void CreateHeap();
    /* 806A7828 */ void initCcCylinder();
    /* 806A78A0 */ void setCcCylinder();
    /* 806A78D4 */ void SetAnm(int, int, f32, f32);
    /* 806A7980 */ void CameraSet(f32);
    /* 806A7B40 */ void DemoStart();
    /* 806A7C3C */ void SetReleaseCam();
    /* 806A7CE0 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 806A8030 */ void Link_Eat_Pos();
    /* 806A8098 */ void Set_Angle(cXyz*);
    /* 806A816C */ void Obj_Damage();
    /* 806A8244 */ void DamageAction();
    /* 806A8368 */ void BombEatAction();
    /* 806A8790 */ void Spid_Out();
    /* 806A8938 */ void LinkEatAction();
    /* 806A8C80 */ void Mogu_Mogu();
    /* 806A8D98 */ void ObjEatAction();
    /* 806A8ED4 */ void EatAction();
    /* 806A8F2C */ void SearchAction();
    /* 806A91B4 */ void WaitAction();
    /* 806A9254 */ void MissAction();
    /* 806A9304 */ void Action();
    /* 806A9384 */ void Execute();
    /* 806A949C */ void Yazirushi();
    /* 806A94E0 */ void Draw();
    /* 806A9550 */ void Delete();
    /* 806A95B8 */ void setBaseMtx();
    /* 806A9678 */ void Create();
private:
    /* 0x5ac */ u8 field_0x5ac[0x838 - 0x5ac];
};
STATIC_ASSERT(sizeof(daE_DF_c) == 0x838);

class daE_DF_HIO_c {
    /* 806A76EC */ daE_DF_HIO_c();
    /* 806A9A84 */ ~daE_DF_HIO_c();
};


#endif /* D_A_E_DF_H */
