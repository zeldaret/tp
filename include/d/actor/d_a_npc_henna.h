#ifndef D_A_NPC_HENNA_H
#define D_A_NPC_HENNA_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class npc_henna_class
 * @brief Hena
 *
 * @details
 *
 */
class npc_henna_class : public fopAc_ac_c {
private:
    /* 0x568 */ u8 field_0x568[0x7fc - 0x568];
};

STATIC_ASSERT(sizeof(npc_henna_class) == 0x7fc);

class daNpc_Henna_HIO_c {
public:
    /* 80542F0C */ daNpc_Henna_HIO_c();
    /* 80549E40 */ ~daNpc_Henna_HIO_c();
};


#endif /* D_A_NPC_HENNA_H */
