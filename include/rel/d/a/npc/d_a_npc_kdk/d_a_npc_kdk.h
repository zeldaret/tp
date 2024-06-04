#ifndef D_A_NPC_KDK_H
#define D_A_NPC_KDK_H

#include "d/a/d_a_npc.h"

class daNpcKdk_c : public fopAc_ac_c {
private:
    /* 0x568 */ u8 field_0x568[0xFA0 - 0x568];
};

STATIC_ASSERT(sizeof(daNpcKdk_c) == 0xFA0);

#endif /* D_A_NPC_KDK_H */
