#ifndef D_A_NPC_KS_H
#define D_A_NPC_KS_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class npc_ks_class
 * @brief Monkey NPC
 *
 * @details
 *
 */
class npc_ks_class : public fopAc_ac_c {
private:
    /* 0x568 */ u8 field_0x568[0xc20 - 0x568];
};
STATIC_ASSERT(sizeof(npc_ks_class) == 0xc20);

class daNpc_Ks_HIO_c {
public:
    /* 80A48F8C */ daNpc_Ks_HIO_c();
    /* 80A5DA90 */ ~daNpc_Ks_HIO_c();
};


#endif /* D_A_NPC_KS_H */
