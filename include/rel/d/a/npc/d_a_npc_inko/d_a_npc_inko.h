#ifndef D_A_NPC_INKO_H
#define D_A_NPC_INKO_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class npc_inko_class
 * @brief Inko (Hena's Bird)
 *
 * @details
 *
 */
class npc_inko_class : public fopAc_ac_c {
private:
    /* 0x568 */ u8 field_0x568[0x648 - 0x568];
};

STATIC_ASSERT(sizeof(npc_inko_class) == 0x648);


#endif /* D_A_NPC_INKO_H */
