#ifndef D_A_NPC_HENNA_H
#define D_A_NPC_HENNA_H

#include "f_op/f_op_actor.h"

/**
 * @ingroup actors-npcs
 * @class npc_henna_class
 * @brief Hena
 *
 * @details
 *
 */
class npc_henna_class : public fopAc_ac_c {
public:
    /* 0x568 */ u8 field_0x568[0x752 - 0x568];
    /* 0x752 */ u16 field_0x752;
    /* 0x754 */ u16 field_0x754;
    /* 0x756 */ u8 field_0x756[0x7b5 - 0x756];
    /* 0x7B5 */ u8 field_0x7b5;
    /* 0x7B6 */ u8 field_0x7b6[0x7b9 - 0x7b6];
    /* 0x7B9 */ u8 field_0x7b9;
    /* 0x7BA */ u8 field_0x7ba[0x7fc - 0x7ba];
};

STATIC_ASSERT(sizeof(npc_henna_class) == 0x7fc);

class daNpc_Henna_HIO_c {
public:
    /* 80542F0C */ daNpc_Henna_HIO_c();
    /* 80549E40 */ ~daNpc_Henna_HIO_c();
};


#endif /* D_A_NPC_HENNA_H */
