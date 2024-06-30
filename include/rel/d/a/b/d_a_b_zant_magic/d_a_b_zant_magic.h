#ifndef D_A_B_ZANT_MAGIC_H
#define D_A_B_ZANT_MAGIC_H

#include "f_op/f_op_actor_mng.h"

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
    /* 8064F778 */ void draw();
    /* 8064F7D4 */ void setMagicEffect();
    /* 8064F938 */ void setMagicHitEffect();
    /* 8064FA50 */ void executeSmall();
    /* 8064FD6C */ void cc_set();
    /* 8064FE6C */ void execute();
    /* 8064FF2C */ bool _delete();
    /* 8064FF54 */ void create();
    /* 806500A8 */ daB_ZANTM_c();

private:
    /* 0x5ac */ u8 field_0x5ac[0xc0c - 0x5ac];
};

STATIC_ASSERT(sizeof(daB_ZANTM_c) == 0xc0c);


#endif /* D_A_B_ZANT_MAGIC_H */
