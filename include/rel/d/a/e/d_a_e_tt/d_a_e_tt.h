#ifndef D_A_E_TT_H
#define D_A_E_TT_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class daE_TT_c
 * @brief Tektite
 * 
 * @details 
 * 
 */
class daE_TT_c : public fopEn_enemy_c {
    /* 807BD7EC */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 807BD8E0 */ void JointCallBack(J3DJoint*, int);
    /* 807BD92C */ void draw();
    /* 807BDAE0 */ void setBck(int, u8, f32, f32);
    /* 807BDB84 */ void calcHitGroundSpeed();
    /* 807BDBE4 */ void setActionMode(int, int);
    /* 807BDC10 */ void getCutType();
    /* 807BDC50 */ void damage_check();
    /* 807BDE5C */ void checkWaterSurface();
    /* 807BDF60 */ void checkFootGround();
    /* 807BE2A8 */ void setBodyLandEffect();
    /* 807BE438 */ void setWaterEffect();
    /* 807BE708 */ void setDeathEyeEffect();
    /* 807BE99C */ void setDeathFootEffect();
    /* 807BEBAC */ void checkPlayerSearch();
    /* 807BED70 */ void executeWait();
    /* 807BF358 */ void executeChase();
    /* 807BF914 */ void executeAttack();
    /* 807BFD38 */ void setDamageInit();
    /* 807BFD60 */ void executeDamage();
    /* 807BFFF4 */ void executeDeath();
    /* 807C033C */ void executeOutRange();
    /* 807C0530 */ void executeFirstAttack();
    /* 807C0C28 */ void action();
    /* 807C0E10 */ void mtx_set(int);
    /* 807C0EE8 */ void cc_set();
    /* 807C1024 */ void execute();
    /* 807C1164 */ void _delete();
    /* 807C121C */ void CreateHeap();
    /* 807C13B4 */ void create();
private:
    /* 0x5ac */ u8 field_0x5ac[0xad0 - 0x5ac];
};
STATIC_ASSERT(sizeof(daE_TT_c) == 0xad0);

class daE_TT_HIO_c {
    /* 807BD7AC */ daE_TT_HIO_c();
    /* 807C1AA8 */ ~daE_TT_HIO_c();
};


#endif /* D_A_E_TT_H */
