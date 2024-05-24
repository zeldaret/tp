#ifndef D_A_E_DK_H
#define D_A_E_DK_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class daE_DK_c
 * @brief Bari
 * 
 * @details 
 * 
 */
class daE_DK_c : public fopEn_enemy_c {
    /* 806AA228 */ void draw();
    /* 806AA5C8 */ void setBck(int, u8, f32, f32);
    /* 806AA68C */ void setBckCore(int, u8, f32, f32);
    /* 806AA730 */ void setActionMode(int, int);
    /* 806AA73C */ void damage_check();
    /* 806AA8B0 */ void checkPlayerSearch();
    /* 806AAB18 */ void checkPlayerAttack(f32);
    /* 806AAC24 */ void checkWaterHeight();
    /* 806AAD68 */ void SphBgcCallBack(dBgS_SphChk*, cBgD_Vtx_t*, int, int, int, cM3dGPla*, void*);
    /* 806AAE10 */ void setElectricEffect();
    /* 806AB054 */ void setCoreDeadEffect();
    /* 806AB158 */ void setBodyDeadEffect();
    /* 806AB29C */ void executeWait();
    /* 806AB684 */ void executeChase();
    /* 806ABA78 */ void executeAttack();
    /* 806ABCC8 */ void executeDamage();
    /* 806ABE3C */ void BodyDeathMove();
    /* 806ABF6C */ void executeDeath();
    /* 806AC390 */ void action();
    /* 806AC5BC */ void mtx_set();
    /* 806AC754 */ void cc_set();
    /* 806AC968 */ void execute();
    /* 806ACA10 */ void _delete();
    /* 806ACAA4 */ void CreateHeap();
    /* 806ACE14 */ void create();
    /* 806AD0AC */ daE_DK_c();
private:
    /* 0x5ac */ u8 field_0x5ac[0xd54 - 0x5ac];
};
STATIC_ASSERT(sizeof(daE_DK_c) == 0xd54);

class daE_DK_HIO_c {
    /* 806AA1EC */ daE_DK_HIO_c();
    /* 806AD490 */ ~daE_DK_HIO_c();
};


#endif /* D_A_E_DK_H */
