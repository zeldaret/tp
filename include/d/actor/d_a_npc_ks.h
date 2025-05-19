#ifndef D_A_NPC_KS_H
#define D_A_NPC_KS_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class npc_ks_class
 * @brief Monkey NPC
 *
 * @details
 *
 */
class npc_ks_class : public fopAc_ac_c {
public:
    /* 0x568 */ u8 field_0x568[0x5b6 - 0x568];
    /* 0x5B6 */ u8 field_0x5b6;
    /* 0x5B7 */ u8 field_0x5b7[0x5c8 - 0x5b7];
    /* 0x5C8 */ s16 field_0x5c8;
    /* 0x5CA */ u8 field_0x5ca[0x5ea - 0x5ca];
    /* 0x5EA */ s16 mMode;
    /* 0x5EC */ u8 field_0x5ec[0xc20 - 0x5ec];
};

STATIC_ASSERT(sizeof(npc_ks_class) == 0xc20);

class daNpc_Ks_HIO_c {
public:
    /* 80A48F8C */ daNpc_Ks_HIO_c();
    /* 80A5DA90 */ ~daNpc_Ks_HIO_c();
};


#endif /* D_A_NPC_KS_H */
