#ifndef D_SHOP_D_SHOP_ITEM_CTRL_H
#define D_SHOP_D_SHOP_ITEM_CTRL_H

#include "SSystem/SComponent/c_xyz.h"

class dShopItemCtrl_c {
public:
    /* 80196914 */ dShopItemCtrl_c();
    /* 801969A0 */ cXyz getCurrentPos(int);
    /* 80196A3C */ bool isHomePos(int);
    /* 80196AF0 */ void setRotateAnime(int);
    /* 80196BA4 */ void setZoomAnime(int, cXyz*, s16, bool);

    /* 80196958 */ virtual ~dShopItemCtrl_c();

    void setItemIndex(int i, u32 index) { mItemIndex[i] = index; }
    u32 getItemIndex(int i) { return mItemIndex[i]; }
    void setMessageIndex(int i, u16 messageIndex) { mMessageIndex[i] = messageIndex; }
    u16 getMessageIndex(int i) { return mMessageIndex[i]; }

private:
    /* 0x04 */ u32 mItemIndex[7];
    /* 0x20 */ u16 mMessageIndex[7];
};

#endif /* D_SHOP_D_SHOP_ITEM_CTRL_H */
