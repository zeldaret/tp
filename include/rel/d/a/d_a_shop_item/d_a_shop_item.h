#ifndef D_A_SHOP_ITEM_H
#define D_A_SHOP_ITEM_H

#include "d/a/d_a_shop_item_static.h"

namespace daShopItem_prm {
inline u8 getGroup(daShopItem_c* i_this) {
    return fopAcM_GetParam(i_this) >> 0x1C;
}

inline u8 getItemNo(daShopItem_c* i_this) {
    return fopAcM_GetParam(i_this) & 0xFF;
}
}  // namespace dahopItem_prm

#endif /* D_A_SHOP_ITEM_H */
