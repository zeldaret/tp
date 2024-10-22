#ifndef D_A_TAG_SHOP_ITEM_H
#define D_A_TAG_SHOP_ITEM_H

#include "d/d_com_inf_game.h"

class daTag_ShopItem_c : public fopAc_ac_c {
public:
    /* 80D60B78 */ int create();
    /* 80D60D78 */ int Delete();
    /* 80D60E04 */ int Execute();
    /* 80D61024 */ int Draw();
    /* 80D6102C */ u8 getType();
    /* 80D61038 */ u8 getGroupID();
    /* 80D61044 */ u8 getSwitchBit1();
    /* 80D61050 */ u8 getSwitchBit2();
    /* 80D6105C */ void initialize();

    /* 80D61168 */ virtual ~daTag_ShopItem_c();

    u32 getProcessID() { return mProcessID; }

    /* 0x56C */ u32 mProcessID;
    /* 0x570 */ s16 mCreateTimer;
    /* 0x572 */ u8 field_0x572;
};  // Size: 0x574

#endif /* D_A_TAG_SHOP_ITEM_H */
