//
// d/shop/d_shop_item_ctrl
//

#include "d/shop/d_shop_item_ctrl.h"
#include "SSystem/SComponent/c_lib.h"
#include "d/a/d_a_shop_item_static.h"
#include "f_op/f_op_actor_mng.h"

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
cXyz dShopItemCtrl_c::getCurrentPos(int item_index) {
    cXyz item_pos(0.0f, 0.0f, 0.0f);

    if (mItemIndex[item_index] != -1) {
        fopAc_ac_c* item = fopAcM_SearchByID(mItemIndex[item_index]);
        if (item != NULL) {
            item_pos.set(item->current.pos);
        }
    }

    return item_pos;
}

/* 80196A3C-80196AF0 19137C 00B4+00 0/0 2/2 0/0 .text            isHomePos__15dShopItemCtrl_cFi */
bool dShopItemCtrl_c::isHomePos(int item_index) {
    if (item_index >= 0 && item_index < 7 && mItemIndex[item_index] != -1) {
        daShopItem_c* item = (daShopItem_c*)fopAcM_SearchByID(mItemIndex[item_index]);
        if (item != NULL) {
            cXyz* item_pos = item->getPosP();
            cXyz item_home = item->orig.pos;

            if (item_pos->x == item_home.x && item_pos->y == item_home.y &&
                item_pos->z == item_home.z) {
                return true;
            }
        }
    }

    return false;
}

/* 80196AF0-80196BA4 191430 00B4+00 0/0 1/1 0/0 .text            setRotateAnime__15dShopItemCtrl_cFi
 */
void dShopItemCtrl_c::setRotateAnime(int item_index) {
    for (int i = 0; i < 7; i++) {
        if (mItemIndex[i] != -1) {
            daShopItem_c* item = (daShopItem_c*)fopAcM_SearchByID(mItemIndex[i]);
            if (item != NULL) {
                csXyz* item_rot = item->getRotateP();

                if (i == item_index - 1) {
                    item_rot->y += 0x200;
                } else {
                    cLib_addCalcAngleS(&item_rot->y, item->orig.angle.y, 4, 0x800, 0x80);
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
        daShopItem_c* shopItem = (daShopItem_c*) fopAcM_SearchByID(mItemIndex[i]);
        if (shopItem == NULL) {
            continue;
        }

        cXyz* this_01 = shopItem->getPosP();
        cXyz cStack_44 = shopItem->orig.pos;
        cXyz cStack_50 = *param_2 - cStack_44;
        s16 local_5e = shopItem->getAngleX();
        s16 local_60 = shopItem->getAngleY();
        if (i == param_1 - 1 && param_4 == true) {
            cLib_addCalcPos2(
                this_01,
                *param_2,
                0.5f,
                0.05f * cStack_50.abs()
                );
            cLib_addCalcAngleS(&local_5e, param_3, 4, 0x800, 0x80);
            shopItem->setAngleX(local_5e);
            cLib_addCalcAngleS(&local_60, shopItem->orig.angle.y, 4, 0x800, 0x80);
            shopItem->setAngleY(local_60);
        } else {
            cLib_addCalcPos2(
                this_01,
                cStack_44,
                0.5f,
                0.1f * cStack_50.abs());
            cXyz cStack_5c = *this_01 - cStack_44;
            if (cStack_5c.abs() < 0.01f) {
                this_01->set(shopItem->orig.pos);
            }
            cLib_addCalcAngleS(&local_5e, 0, 4, 0x800, 0x80);
            if (local_5e <= 0x80) {
                local_5e = 0;
            }
            shopItem->setAngleX(local_5e);
            cLib_addCalcAngleS(&local_60, 0, 4, 0x800, 0x80);
            if (local_60 <= 0x80) {
                local_60 = 0;
            }
            shopItem->setAngleY(local_60);
        }
    }
}
