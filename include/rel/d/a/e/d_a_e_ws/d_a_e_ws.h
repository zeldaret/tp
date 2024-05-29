#ifndef D_A_E_WS_H
#define D_A_E_WS_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class daE_WS_c
 * @brief Wall Skulltula
 * 
 * @details 
 * 
 */
class daE_WS_c : public fopEn_enemy_c {
    /* 807E3A6C */ void draw();
    /* 807E3C20 */ void setBck(int, u8, f32, f32);
    /* 807E3CC4 */ void setFootSound();
    /* 807E3F90 */ void setActionMode(int);
    /* 807E3FAC */ void calcTargetDist(cXyz, cXyz);
    /* 807E40C8 */ void calcTargetAngle(cXyz, cXyz);
    /* 807E416C */ void checkInSearchRange(cXyz, cXyz);
    /* 807E4224 */ void checkPlayerPos();
    /* 807E4568 */ void checkAttackEnd();
    /* 807E470C */ void executeWait();
    /* 807E4AB8 */ void executeAttack();
    /* 807E4E68 */ void executeDown();
    /* 807E5294 */ void executeWindDown();
    /* 807E56D0 */ void damage_check();
    /* 807E58AC */ void action();
    /* 807E5A3C */ void mtx_set();
    /* 807E5AAC */ void cc_set();
    /* 807E5C0C */ void execute();
    /* 807E5CD8 */ void checkInitialWall();
    /* 807E5FB8 */ void checkBeforeBg(s16);
    /* 807E63F8 */ void checkWall();
    /* 807E66B4 */ void _delete();
    /* 807E6748 */ void CreateHeap();
    /* 807E6860 */ void create();
private:
    /* 0x5ac */ u8 field_0x5ac[0xb80 - 0x5ac];
};
STATIC_ASSERT(sizeof(daE_WS_c) == 0xb80);

class daE_WS_HIO_c {
    /* 807E3A0C */ daE_WS_HIO_c();
    /* 807E6E44 */ ~daE_WS_HIO_c();
};


#endif /* D_A_E_WS_H */
