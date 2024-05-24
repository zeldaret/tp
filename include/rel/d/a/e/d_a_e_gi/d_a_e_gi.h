#ifndef D_A_E_GI_H
#define D_A_E_GI_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class daE_GI_c
 * @brief Gibdo
 * 
 * @details 
 * 
 */
class daE_GI_c : public fopEn_enemy_c {
    /* 806CD4F4 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 806CD594 */ void JointCallBack(J3DJoint*, int);
    /* 806CD5E0 */ void draw();
    /* 806CD868 */ void setBck(int, u8, f32, f32);
    /* 806CD90C */ void setActionMode(int, int);
    /* 806CD938 */ void damage_check();
    /* 806CDD1C */ void setWeaponAtBit(u8);
    /* 806CDD8C */ void setCryStop();
    /* 806CDED8 */ void setAttackEffect();
    /* 806CDFB0 */ void setDragSwordEffect();
    /* 806CE0D4 */ void setDeathSmokeEffect();
    /* 806CE184 */ void setDamageEffect();
    /* 806CE3C4 */ void executeSleep();
    /* 806CE6AC */ void executeWait();
    /* 806CE858 */ void executeChase();
    /* 806CEC94 */ void executeAttack();
    /* 806CF0B8 */ void executeDamage();
    /* 806CF410 */ void executeBiteDamage();
    /* 806CF720 */ void PushButtonCount();
    /* 806CF878 */ void action();
    /* 806CFB60 */ void mtx_set();
    /* 806CFBF0 */ void cc_set();
    /* 806CFDF4 */ void execute();
    /* 806D0054 */ void _delete();
    /* 806D00E8 */ void CreateHeap();
    /* 806D027C */ void create();
private:
    /* 0x5ac */ u8 field_0x5ac[0x107c - 0x5ac];
};
STATIC_ASSERT(sizeof(daE_GI_c) == 0x107c);

class daE_GI_HIO_c {
    /* 806CD48C */ daE_GI_HIO_c();
    /* 806D098C */ ~daE_GI_HIO_c();
};


#endif /* D_A_E_GI_H */
