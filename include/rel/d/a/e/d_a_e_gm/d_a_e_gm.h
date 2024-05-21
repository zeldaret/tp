#ifndef D_A_E_GM_H
#define D_A_E_GM_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daE_GM_c : public fopEn_enemy_c {
    /* 806D12C8 */ void setAction(void (daE_GM_c::*)());
    /* 806D136C */ void action();
    /* 806D1580 */ void egg_wait();
    /* 806D1A9C */ void appear();
    /* 806D1CC0 */ void walk();
    /* 806D21A4 */ void create_item();
    /* 806D2294 */ void pechanko_damage();
    /* 806D24C0 */ void wait();
    /* 806D25E8 */ void egg_damage();
    /* 806D289C */ void setDeathLightEffect();
    /* 806D2940 */ void setEggBreakEffect();
    /* 806D29E4 */ void damage();
    /* 806D2DD4 */ void core_damage();
    /* 806D3308 */ void core_delwait();
    /* 806D344C */ void core_piku();
    /* 806D35E4 */ void core_pechanko_damage();
    /* 806D378C */ void hook();
    /* 806D398C */ void rebound();
    /* 806D3EC4 */ void walk2();
    /* 806D4288 */ void dead_wait();
    /* 806D4468 */ void core_wait();
    /* 806D462C */ void core_escape();
    /* 806D4D1C */ void chaseCheck();
    /* 806D4EF4 */ void normal_wait();
    /* 806D545C */ void normal_chase();
    /* 806D578C */ void mtx_set();
    /* 806D59D0 */ void cc_set();
    /* 806D5D54 */ void draw();
    /* 806D631C */ void damage_check();
    /* 806D6708 */ void execute();
    /* 806D6980 */ void _delete();
    /* 806D6AC8 */ void CreateHeap();
    /* 806D6CF0 */ void create();
private:
    /* 0x5ac */ u8 field_0x5ac[0xa78 - 0x5ac];
};
STATIC_ASSERT(sizeof(daE_GM_c) == 0xa78);

class daE_GM_HIO_c {
    /* 806D126C */ daE_GM_HIO_c();
    /* 806D7428 */ ~daE_GM_HIO_c();
};


#endif /* D_A_E_GM_H */
