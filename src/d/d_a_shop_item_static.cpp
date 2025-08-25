/**
 * d_a_shop_item_static.cpp
 *
 */

#include "d/dolzel.h"

#include "d/d_a_shop_item_static.h"

/* 80037C14-80037C1C 032554 0008+00 0/0 1/1 0/0 .text            getRotateP__12daShopItem_cFv */
csXyz* daShopItem_c::getRotateP() {
    return &current.angle;
}

/* 80037C1C-80037C24 03255C 0008+00 0/0 2/2 0/0 .text            getPosP__12daShopItem_cFv */
cXyz* daShopItem_c::getPosP() {
    return &current.pos;
}

/* 803792E8-80379738 -00001 0450+00 1/1 0/0 9/9 .rodata          mData__12daShopItem_c */
ResourceData const daShopItem_c::mData[23] = {
    {"B_mD_sold", 3, -1, -1, -1, -1, -1, -1, 0.0f, 1.0f, 0, {0, 0x8000, 0}, 0, 0, 0, 0, -1, -1},
    {"B_mD_oil", 3, -1, -1, -1, -1, -1, -1, 0.0f, 1.0f, 0, {0, 0, 0}, 0, 0, 0, 0, -1, -1},
    {"O_mD_red", 3, -1, -1, -1, -1, -1, -11, 0.0f, 1.0f, 0, {0, 0, 0}, 0, 0, 0, 0, -1, -1},
    {"B_mD_milk", 3, -1, -1, -1, -1, -1, -1, 0.0f, 1.0f, 0, {0, 0, 0}, 0, 0, 0, 0, -1, -1},
    {"O_mD_bott", 6, 12, -1, -1, -1, 9, 15, 0.0f, 1.0f, 0, {0, 0, 0}, 4, 0, 0, 0, 3, 1},
    {"O_mD_arw", 3, -1, -1, -1, -1, -1, -1, 0.0f, 1.0f, 0, {0, 0, 0}, 0, 0, 0, 0, -1, -1},
    {"O_mD_SHB", 3, -1, -1, -1, -1, -1, -1, 30.0f, 1.0f, 0, {0, 0x7FFF, 0}, 0, 0, 0, 0, -1, -1},
    {"O_mD_SHA", 3, -1, -1, -1, -1, -1, -1, 30.0f, 1.0f, 0, {0, 0x7FFF, 0}, 0, 0, 0, 0, -1, -1},
    {"O_mD_bomb", 3, -1, -1, -1, -1, -1, -1, 0.0f, 1.0f, 0, {0, 0, 0}, 0, 0, 0, 0, 0, -1},
    {"O_mD_pg", 3, -1, -1, -1, -1, -1, -1, 0.0f, 1.0f, 0, {0, 0, 0}, 0, 0, 0, 0, 0, -1},
    {"O_mD_bi", 3, -1, -1, -1, -1, -1, -1, 0.0f, 1.0f, 0, {0, 0, 0}, 0, 0, 0, 0, 0, -1},
    {"O_mD_bmcs", 3, -1, -1, -1, -1, -1, -1, 0.0f, 1.0f, 0, {0, 0, 0}, 0, 0, 0, 0, 0, -1},
    {"O_mD_bmc2", 3, -1, -1, -1, -1, -1, -1, 0.0f, 1.0f, 0, {0, 0, 0}, 0, 0, 0, 0, 0, -1},
    {"O_mD_jira", 3, -1, -1, -1, -1, -1, -1, 0.0f, 1.0f, 0, {0, 0, 0}, 0, 0, 0, 0, 0, -1},
    {"O_mD_bott", 6, 12, -1, -1, -1, 9, 15, 0.0f, 1.0f, 0, {0, 0, 0}, 4, 0, 0, 0, 1, 0},
    {"O_mD_hati", 3, -1, -1, -1, -1, -1, -1, 0.0f, 1.0f, 0, {0, 0, 0}, 0, 0, 0, 0, -1, -1},
    {"O_mD_pach", 3, -1, -1, -1, -1, -1, -1, 0.0f, 1.0f, 0, {0, 0, 0}, 0, 0, 0, 0, -1, -1},
    {"O_mD_blue", 3, -1, -1, -1, -1, -1, -11, 0.0f, 1.0f, 0, {0, 0, 0}, 0, 0, 0, 0, -1, -1},
    {"O_mD_hawk", 3, -1, -1, -1, -1, -1, -1, 0.0f, 1.0f, 0, {0, 0, 0}, 0, 0, 0, 0, -1, -1},
    {"O_mD_marm", 3, -1, -1, -1, -1, -1, -1, 0.0f, 1.0f, 0, {0, 0, 0}, 0, 0, 0, 0, -1, -1},
    {"O_mD_marm", 4, -1, -1, -1, -1, -1, -1, 0.0f, 1.0f, 0, {0, 0, 0}, 0, 0, 0, 0, -1, -1},
    {"O_mD_gren", 3, -1, -1, -1, -1, -1, -1, 0.0f, 1.0f, 0, {0, 0, 0}, 0, 0, 0, 0, -1, -1},
    {"O_mD_bott", 6, 12, -1, -1, -1, 9, 15, 0.0f, 1.0f, 0, {0, 0, 0}, 4, 0, 0, 0, 12, 0},
};

/* 80037C24-80037C7C 032564 0058+00 0/0 0/0 1/1 .text CheckShopItemCreateHeap__FP10fopAc_ac_c */
int CheckShopItemCreateHeap(fopAc_ac_c* i_this) {
    daShopItem_c* a_this = static_cast<daShopItem_c*>(i_this);

    u8 a_ShopItemID = a_this->getShopItemID();
    return a_this->CreateItemHeap(daShopItem_c::mData[a_ShopItemID].get_arcName(),
                                  daShopItem_c::mData[a_ShopItemID].get_bmdName(),
                                  daShopItem_c::mData[a_ShopItemID].get_btk1Name(),
                                  daShopItem_c::mData[a_ShopItemID].get_bpk1Name(),
                                  daShopItem_c::mData[a_ShopItemID].get_bck1Name(),
                                  daShopItem_c::mData[a_ShopItemID].get_bxa1Name(),
                                  daShopItem_c::mData[a_ShopItemID].get_brk1Name(),
                                  daShopItem_c::mData[a_ShopItemID].get_btp1Name());
}
