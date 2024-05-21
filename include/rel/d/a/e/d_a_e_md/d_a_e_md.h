#ifndef D_A_E_MD_H
#define D_A_E_MD_H
#include "f_op/f_op_actor_mng.h"

class daE_MD_c : public fopEn_enemy_c {
    /* 80708DF8 */ void initCcCylinder();
    /* 80708E70 */ void setCcCylinder(f32);
    /* 807091F0 */ void SetAnm(mDoExt_McaMorfSO*, int, int, f32, f32);
    /* 807092C8 */ void At_Check();
    /* 80709378 */ void CheckHit();
    /* 8070992C */ void WaitAction();
    /* 8070994C */ void HalfBreakAction();
    /* 80709A04 */ void VibAction();
    /* 80709ABC */ void DummyAction();
    /* 80709BB4 */ void RealAction();
    /* 80709C3C */ void Action();
    /* 80709CFC */ void Execute();
    /* 80709D58 */ void Delete();
    /* 80709DA8 */ void setBaseMtx();
    /* 8070A044 */ void create();
private:
    /* 0x5ac */ u8 field_0x5ac[0xa50 - 0x5ac];
};
STATIC_ASSERT(sizeof(daE_MD_c) == 0xa50);


#endif /* D_A_E_MD_H */
