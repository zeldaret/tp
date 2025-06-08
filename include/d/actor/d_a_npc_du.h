#ifndef D_A_NPC_DU_H
#define D_A_NPC_DU_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class npc_du_class
 * @brief Duck
 *
 * @details
 *
 */
class npc_du_class {
public:
    fopAc_ac_c actor;
    /* 0x568 */ u8 field_0x568[0x5b8 - 0x568];
    /* 0x5B8 */ f32 field_0x5b8;
    /* 0x5BC */ u8 field_0x5bc[0xa00 - 0x5bc];
};

STATIC_ASSERT(sizeof(npc_du_class) == 0xa00);

class daNpc_Du_HIO_c {
public:
    /* 809AFD4C */ daNpc_Du_HIO_c();
    /* 809B17A0 */ ~daNpc_Du_HIO_c();
};


#endif /* D_A_NPC_DU_H */
