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
class npc_du_class : public fopAc_ac_c {
private:
    /* 0x568 */ u8 field_0x568[0xa00 - 0x568];
};

STATIC_ASSERT(sizeof(npc_du_class) == 0xa00);

class daNpc_Du_HIO_c {
public:
    /* 809AFD4C */ daNpc_Du_HIO_c();
    /* 809B17A0 */ ~daNpc_Du_HIO_c();
};


#endif /* D_A_NPC_DU_H */
