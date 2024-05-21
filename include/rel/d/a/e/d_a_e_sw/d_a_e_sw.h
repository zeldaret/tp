#ifndef D_A_E_SW_H
#define D_A_E_SW_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class daE_SW_c
 * @brief Moldorm
 * 
 * @details 
 * 
 */
class daE_SW_c : public fopEn_enemy_c {
    /* 807A7460 */ void bckSet(int, f32, u8, f32);
    /* 807A7504 */ void draw();
    /* 807A76E4 */ void setBeforeJumpEffect();
    /* 807A77CC */ void setJumpEffect();
    /* 807A78B4 */ void setSmokeEffect();
    /* 807A7A08 */ void setDiveEffect();
    /* 807A7AC0 */ void setHideEffect();
    /* 807A7B64 */ void setActionMode(s16, s16);
    /* 807A7C50 */ void search_bomb();
    /* 807A7CD0 */ void bomb_check();
    /* 807A7D48 */ void setModeBack();
    /* 807A7DAC */ void checkFall();
    /* 807A7EFC */ void checkBeforeWall();
    /* 807A7F88 */ void executeWait();
    /* 807A8290 */ void checkRunChase();
    /* 807A831C */ void executeChaseSlow();
    /* 807A8B98 */ void executeChaseFast();
    /* 807A9580 */ void executeBomb();
    /* 807A9768 */ void executeAttack();
    /* 807A9E58 */ void executeHook();
    /* 807AA050 */ void executeMoveOut();
    /* 807AA44C */ void executeChance();
    /* 807AA784 */ void executeDive();
    /* 807AA91C */ void executeDamage();
    /* 807AAB7C */ void executeDie();
    /* 807AADCC */ void executeMaster();
    /* 807AAF70 */ void checkSuddenAttack(int);
    /* 807AB310 */ void executeSuddenAttack();
    /* 807AB5C4 */ void executeFall();
    /* 807AB6C4 */ void action();
    /* 807AB884 */ void mtx_set();
    /* 807AB930 */ void cc_set();
    /* 807ABAB0 */ void damage_check();
    /* 807ABD28 */ void checkGroundSand();
    /* 807ABE50 */ void execute();
    /* 807AC170 */ void _delete();
    /* 807AC204 */ void CreateHeap();
    /* 807AC31C */ void create();
    /* 807ACA40 */ void d_setAction(void (daE_SW_c::*)());
    /* 807ACAE4 */ void d_checkFall();
    /* 807ACCB0 */ void d_damage_check();
    /* 807ACFF8 */ void d_action();
    /* 807AD10C */ void d_bomb_check();
    /* 807AD17C */ void d_bm_chase();
    /* 807AD4A8 */ void d_wait();
    /* 807AD7C0 */ void d_chaseCheck();
    /* 807ADA08 */ void d_chase();
    /* 807ADE50 */ void d_attk();
    /* 807AE4B4 */ void d_chance();
    /* 807AE7F4 */ void d_chance2();
    /* 807AE968 */ void d_dive();
    /* 807AEB08 */ void d_damage();
    /* 807AEE44 */ void d_die();
    /* 807AF01C */ void d_hook();
    /* 807AF4B4 */ void d_fall();
    /* 807AF57C */ void d_execute();
private:
    /* 0x5ac */ u8 field_0x5ac[0xb18 - 0x5ac];
};
STATIC_ASSERT(sizeof(daE_SW_c) == 0xb18);

class daE_SW_HIO_c {
    /* 807A740C */ daE_SW_HIO_c();
    /* 807AF870 */ ~daE_SW_HIO_c();
};


#endif /* D_A_E_SW_H */
