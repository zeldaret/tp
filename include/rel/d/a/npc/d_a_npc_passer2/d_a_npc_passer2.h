#ifndef D_A_NPC_PASSER2_H
#define D_A_NPC_PASSER2_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpcPasser2_c
 * @brief Hylian Passerby 2 (Castle Town NPC?)
 *
 * @details
 *
 */
class daNpcPasser2_c : public fopAc_ac_c {
public:
    struct Mode_e {};

    /* 80AA755C */ void setAction(daNpcPasser2_c::Mode_e);
    /* 80AA75A0 */ void callInit();
    /* 80AA75C8 */ void callExecute();
    /* 80AA75F4 */ void initPath();
    /* 80AA774C */ void executePath();
    /* 80AA790C */ void setAngle();
    /* 80AA7918 */ void pathMoveF();
    /* 80AA7CD8 */ void create();
    /* 80AA7F78 */ void create_init();
    /* 80AA8270 */ ~daNpcPasser2_c();

    static u8 ActionTable[24];

private:
    /* 0x568 */ u8 field_0x568[0xa44 - 0x568];
};

STATIC_ASSERT(sizeof(daNpcPasser2_c) == 0xa44);

#endif /* D_A_NPC_PASSER2_H */
