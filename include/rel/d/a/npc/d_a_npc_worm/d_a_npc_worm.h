#ifndef D_A_NPC_WORM_H
#define D_A_NPC_WORM_H

#include "dolphin/types.h"
#include "d/a/d_a_npc.h"

class npc_worm_class : public fopAc_ac_c {
private:
    /* 0x568 */ u8 field_0x568[0x5ec - 0x568];
};
STATIC_ASSERT(sizeof(npc_worm_class) == 0x5ec);


#endif /* D_A_NPC_WORM_H */
