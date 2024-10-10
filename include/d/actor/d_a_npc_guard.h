#ifndef D_A_NPC_GUARD_H
#define D_A_NPC_GUARD_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpcGuard_c
 * @brief Guard (Hyrule Castle Town Guard?)
 *
 * @details
 *
 */
class daNpcGuard_c : public fopAc_ac_c {
public:
    struct Mode_e {};

    /* 809EFE20 */ void setAction(daNpcGuard_c::Mode_e);
    /* 809EFE64 */ void callInit();
    /* 809EFE8C */ void callExecute();
    /* 809EFEB8 */ void initPath();
    /* 809EFF1C */ void executePath();
    /* 809F0184 */ void initRun();
    /* 809F01E8 */ void executeRun();
    /* 809F03FC */ void initFightWait();
    /* 809F04B4 */ void executeFightWait();
    /* 809F06F4 */ void initFightStep();
    /* 809F0700 */ void executeFightStep();
    /* 809F0778 */ void initFightMenace();
    /* 809F07F8 */ void executeFightMenace();
    /* 809F08DC */ void initFear();
    /* 809F0960 */ void executeFear();
    /* 809F0A50 */ void initEscape();
    /* 809F0B20 */ void executeEscape();
    /* 809F0DD4 */ void setAngle();
    /* 809F0DE0 */ void setSpeed(f32, f32, f32*, int);
    /* 809F0ED4 */ void pathMoveF();
    /* 809F12F0 */ void create();
    /* 809F14CC */ void create_init();
    /* 809F17D0 */ void setMtx();
    /* 809F1878 */ void lookat();
    /* 809F1F74 */ ~daNpcGuard_c();
    /* 809F2044 */ void execute();

    static u8 ActionTable[168];

private:
    /* 0x568 */ u8 field_0x568[0xda8 - 0x568];
};

STATIC_ASSERT(sizeof(daNpcGuard_c) == 0xda8);


#endif /* D_A_NPC_GUARD_H */
