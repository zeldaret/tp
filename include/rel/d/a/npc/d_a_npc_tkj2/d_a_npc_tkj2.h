#ifndef D_A_NPC_TKJ2_H
#define D_A_NPC_TKJ2_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class npc_tkj2_class
 * @brief Oocca 2
 *
 * @details
 *
 */
class npc_tkj2_class : public fopAc_ac_c {
private:
    /* 0x568 */ u8 field_0x568[0xaa0 - 0x568];
};

STATIC_ASSERT(sizeof(npc_tkj2_class) == 0xaa0);

class daNpc_Tkj2_HIO_c {
public:
    /* 80B10DEC */ daNpc_Tkj2_HIO_c();
    /* 80B1421C */ ~daNpc_Tkj2_HIO_c();
};


#endif /* D_A_NPC_TKJ2_H */
