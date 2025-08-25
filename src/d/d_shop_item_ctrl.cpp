//
// d/shop/d_shop_item_ctrl
//

#include "d/dolzel.h"

#include "d/d_shop_item_ctrl.h"
#include "SSystem/SComponent/c_lib.h"
#include "d/d_a_shop_item_static.h"

/* 80196914-80196958 191254 0044+00 0/0 0/0 10/10 .text            __ct__15dShopItemCtrl_cFv */
dShopItemCtrl_c::dShopItemCtrl_c() {
    for (int i = 0; i < 7; i++) {
        mItemIndex[i] = -1;
        mMessageIndex[i] = 0;
    }
}

/* 80196958-801969A0 191298 0048+00 1/0 1/1 0/0 .text            __dt__15dShopItemCtrl_cFv */
dShopItemCtrl_c::~dShopItemCtrl_c() {}

/* 801969A0-80196A3C 1912E0 009C+00 0/0 3/3 3/3 .text            getCurrentPos__15dShopItemCtrl_cFi
 */
cXyz dShopItemCtrl_c::getCurrentPos(int i_itemIdx) {
    cXyz item_pos(0.0f, 0.0f, 0.0f);

    if (mItemIndex[i_itemIdx] != -1) {
        fopAc_ac_c* item = fopAcM_SearchByID(mItemIndex[i_itemIdx]);
        if (item != NULL) {
            item_pos.set(item->current.pos);
        }
    }

    return item_pos;
}

/* 80196A3C-80196AF0 19137C 00B4+00 0/0 2/2 0/0 .text            isHomePos__15dShopItemCtrl_cFi */
bool dShopItemCtrl_c::isHomePos(int i_itemIdx) {
    if (i_itemIdx >= 0 && i_itemIdx < 7 && mItemIndex[i_itemIdx] != -1) {
        daShopItem_c* item = (daShopItem_c*)fopAcM_SearchByID(mItemIndex[i_itemIdx]);
        if (item != NULL) {
            cXyz* item_pos = item->getPosP();
            cXyz item_home = item->home.pos;

            if (item_pos->x == item_home.x && item_pos->y == item_home.y &&
                item_pos->z == item_home.z)
            {
                return true;
            }
        }
    }

    return false;
}

/* 80196AF0-80196BA4 191430 00B4+00 0/0 1/1 0/0 .text            setRotateAnime__15dShopItemCtrl_cFi
 */
void dShopItemCtrl_c::setRotateAnime(int i_itemIdx) {
    for (int i = 0; i < 7; i++) {
        if (mItemIndex[i] != -1) {
            daShopItem_c* item = (daShopItem_c*)fopAcM_SearchByID(mItemIndex[i]);
            if (item != NULL) {
                csXyz* item_rot = item->getRotateP();

                if (i == i_itemIdx - 1) {
                    item_rot->y += 0x200;
                } else {
                    cLib_addCalcAngleS(&item_rot->y, item->home.angle.y, 4, 0x800, 0x80);
                }
            }
        }
    }
}

/* 80196BA4-80197098 1914E4 04F4+00 0/0 1/1 0/0 .text setZoomAnime__15dShopItemCtrl_cFiP4cXyzsb */
void dShopItemCtrl_c::setZoomAnime(int param_1, cXyz* param_2, s16 param_3, bool param_4) {
    for (int i = 0; i < 7; i++) {
        if (mItemIndex[i] == -1) {
            continue;
        }

        daShopItem_c* shopItem = (daShopItem_c*)fopAcM_SearchByID(mItemIndex[i]);
        if (shopItem == NULL) {
            continue;
        }

        cXyz* pos_p = shopItem->getPosP();
        cXyz target_pos = shopItem->home.pos;
        cXyz cStack_50 = *param_2 - target_pos;
        s16 x_angle = shopItem->getAngleX();
        s16 y_angle = shopItem->getAngleY();

        if (i == param_1 - 1 && param_4 == true) {
            cLib_addCalcPos2(pos_p, *param_2, 0.5f, 0.05f * cStack_50.abs());
            cLib_addCalcAngleS(&x_angle, param_3, 4, 0x800, 0x80);
            shopItem->setAngleX(x_angle);
            cLib_addCalcAngleS(&y_angle, shopItem->home.angle.y, 4, 0x800, 0x80);
            shopItem->setAngleY(y_angle);
        } else {
            cLib_addCalcPos2(pos_p, target_pos, 0.5f, 0.1f * cStack_50.abs());
            cXyz cStack_5c = *pos_p - target_pos;
            if (cStack_5c.abs() < 0.01f) {
                pos_p->set(shopItem->home.pos);
            }

            cLib_addCalcAngleS(&x_angle, 0, 4, 0x800, 0x80);
            if (x_angle <= 0x80) {
                x_angle = 0;
            }

            shopItem->setAngleX(x_angle);
            cLib_addCalcAngleS(&y_angle, 0, 4, 0x800, 0x80);
            if (y_angle <= 0x80) {
                y_angle = 0;
            }

            shopItem->setAngleY(y_angle);
        }
    }
}
