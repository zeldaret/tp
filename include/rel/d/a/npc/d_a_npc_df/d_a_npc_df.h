#ifndef D_A_NPC_DF_H
#define D_A_NPC_DF_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class npc_df_class
 * @brief ???
 *
 * @details
 *
 */
class npc_df_class : public fopAc_ac_c {
private:
    /* 0x568 */ u8 field_0x568[0xd44 - 0x568];
};

STATIC_ASSERT(sizeof(npc_df_class) == 0xd44);

struct df_s {
public:
    /* 809A6728 */ ~df_s();
    /* 809A6764 */ df_s();
};


#endif /* D_A_NPC_DF_H */
