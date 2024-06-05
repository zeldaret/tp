#ifndef D_A_NPC_SHOP_MARO_H
#define D_A_NPC_SHOP_MARO_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_shopMaro_c
 * @brief Malo (Shopkeeper)
 *
 * @details
 *
 */
class daNpc_shopMaro_c : public fopAc_ac_c {
public:
    /* 80AEBEB4 */ void create();
    /* 80AEBF04 */ daNpc_shopMaro_c();
    /* 80AEBF64 */ ~daNpc_shopMaro_c();

private:
    /* 0x568 */ u8 field_0x568[0xf7c - 0x568];
};
STATIC_ASSERT(sizeof(daNpc_shopMaro_c) == 0xf7c);


#endif /* D_A_NPC_SHOP_MARO_H */
