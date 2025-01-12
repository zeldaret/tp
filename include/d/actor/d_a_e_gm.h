#ifndef D_A_E_GM_H
#define D_A_E_GM_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class daE_GM_c
 * @brief Baby Gohma
 * 
 * @details 
 * 
 */
class daE_GM_c : public fopEn_enemy_c {
public:
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

    void InstantKill() { field_0xa76 = 1; }
    u8 CheckDeath() { return field_0xa68; }
    
    void MoveStart(u8 param_0) {
        field_0xa71 = 1;
        field_0xa5e = param_0;
    }

private:
    /* 0x5AC */ u8 field_0x5ac[0xa5e - 0x5ac];
    /* 0xA5E */ u16 field_0xa5e;
    /* 0xA60 */ u8 field_0xa60[0xa68 - 0xa60];
    /* 0xA68 */ u8 field_0xa68;
    /* 0xA69 */ u8 field_0xa69[0xa71 - 0xa69];
    /* 0xA71 */ u8 field_0xa71;
    /* 0xA72 */ u8 field_0xa72[0xa76 - 0xA72];
    /* 0xA76 */ u8 field_0xa76;
    /* 0xA77 */ u8 field_0xa77[0xa78 - 0xA77];
};

STATIC_ASSERT(sizeof(daE_GM_c) == 0xa78);

class daE_GM_HIO_c {
    /* 806D126C */ daE_GM_HIO_c();
    /* 806D7428 */ ~daE_GM_HIO_c();
};


#endif /* D_A_E_GM_H */
