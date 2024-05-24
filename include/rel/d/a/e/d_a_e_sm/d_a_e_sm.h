#ifndef D_A_E_SM_H
#define D_A_E_SM_H
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class daE_SM_c
 * @brief ChuChu
 * 
 * @details 
 * 
 */
class daE_SM_c : public fopEn_enemy_c {
    /* 80792260 */ void SetAnm(int, int, f32, f32);
    /* 8079230C */ void Draw();
    /* 807928A4 */ void Particle_Set(u16, cXyz, cXyz, csXyz);
    /* 80792914 */ void ArrowCheck();
    /* 80792C20 */ void E_SM_Damage();
    /* 80792E70 */ void SmDamageCheck();
    /* 807936B4 */ void E_SM_Normal();
    /* 80793B64 */ void E_SM_Move();
    /* 80793E18 */ void E_SM_Attack();
    /* 80794100 */ void Action();
    /* 80794338 */ void E_SM_C_Normal();
    /* 807943C4 */ void E_SM_C_Fight();
    /* 80794458 */ void E_SM_C_Near_Escape();
    /* 8079473C */ void E_SM_C_Far_Escape();
    /* 807949CC */ void E_SM_C_Home_Escape();
    /* 807951EC */ void E_SM_C_Escape();
    /* 80795244 */ void E_SM_C_Free();
    /* 80795530 */ void E_SM_C_Death();
    /* 807958A0 */ void C_DamageCheck();
    /* 80795E64 */ void E_SM_C_Hook();
    /* 80796060 */ void CheckViewArea();
    /* 807960E4 */ void CameraSet();
    /* 80796204 */ void SetStopCam(cXyz, f32, f32, s16);
    /* 80796324 */ void SetCMoveCam(cXyz, f32, f32);
    /* 80796368 */ void SetStopingCam();
    /* 807963EC */ void SetReleaseCam();
    /* 80796490 */ void DemoStart();
    /* 80796628 */ void DemoMid();
    /* 807968A0 */ void E_SM_C_Demo();
    /* 807968E4 */ void CoreAction();
    /* 80796AEC */ void ArrowOn();
    /* 80796D80 */ void Execute();
    /* 80796FC4 */ void setSmBaseMtx();
    /* 80797274 */ void setBaseMtx();
    /* 8079730C */ void CoCoreSet();
    /* 80797444 */ void CoSmSet();
    /* 80797570 */ void Delete();
    /* 8079764C */ void CreateHeap();
    /* 80797784 */ void initCoSph();
    /* 80797858 */ void Create();
    /* 80797CE0 */ daE_SM_c();
private:
    /* 0x5ac */ u8 field_0x5ac[0x1160 - 0x5ac];
};
STATIC_ASSERT(sizeof(daE_SM_c) == 0x1160);

class daE_Sm_HIO_c {
    /* 8079222C */ daE_Sm_HIO_c();
    /* 807980E8 */ ~daE_Sm_HIO_c();
};

#endif /* D_A_E_SM_H */
