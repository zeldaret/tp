#ifndef D_A_NPC_SHOP_MARO_H
#define D_A_NPC_SHOP_MARO_H

#include "d/d_shop_system.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_shopMaro_c
 * @brief Malo (Shopkeeper)
 *
 * @details
 *
 */
class daNpc_shopMaro_c : public dShopSystem_c {
public:
    /* 80AEBEB4 */ int create();
    /* 80AEBF04 */ daNpc_shopMaro_c() : dShopSystem_c(0,0,0,0,0,0,0,0) {}
    /* 80AEBF64 */ virtual ~daNpc_shopMaro_c() {}
};

STATIC_ASSERT(sizeof(daNpc_shopMaro_c) == 0xf7c);


#endif /* D_A_NPC_SHOP_MARO_H */
