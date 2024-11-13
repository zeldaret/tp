#ifndef D_A_B_ZANT_MAGIC_H
#define D_A_B_ZANT_MAGIC_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_cc_d.h"
#include "d/d_bg_s_acch.h"

/**
 * @ingroup actors-enemies
 * @class daB_ZANTM_c
 * @brief Zant - Magic Attack
 *
 * @details Palace of Twilight dungeon boss magic attack.
 *
 */
class daB_ZANTM_c : public fopEn_enemy_c {
public:
    /* 8064F778 */ int draw();
    /* 8064F7D4 */ void setMagicEffect();
    /* 8064F938 */ void setMagicHitEffect();
    /* 8064FA50 */ void executeSmall();
    /* 8064FD6C */ void cc_set();
    /* 8064FE6C */ int execute();
    /* 8064FF2C */ int _delete();
    /* 8064FF54 */ int create();

private:
    /* 0x5AC */ Mtx field_0x5ac;
    /* 0x5DC */ cXyz field_0x5dc;
    /* 0x5E8 */ f32 field_0x5e8;
    /* 0x5EC */ int mAliveTimer;
    /* 0x5F0 */ u8 mPrm;
    /* 0x5F1 */ u8 mMode;
    /* 0x5F4 */ dBgS_AcchCir mAcchCir;
    /* 0x634 */ dBgS_ObjAcch mAcch;
    /* 0x80C */ dCcD_Stts mCcStts;
    /* 0x848 */ dCcD_Sph field_0x848;
    /* 0x980 */ dCcD_Sph mTgCollider;
    /* 0xAB8 */ dCcD_Cps mAtCollider;
    /* 0xBFC */ u32 field_0xbfc[4];
};

STATIC_ASSERT(sizeof(daB_ZANTM_c) == 0xc0c);


#endif /* D_A_B_ZANT_MAGIC_H */
