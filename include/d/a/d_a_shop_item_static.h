#ifndef D_A_D_A_SHOP_ITEM_STATIC_H
#define D_A_D_A_SHOP_ITEM_STATIC_H

#include "d/a/d_a_itembase.h"

struct ResourceData {
    char* get_arcName() const { return mArcName; }
    s16 get_bmdName() const { return mBmdName; }
    s16 get_btk1Name() const { return mBtkName; }
    s16 get_bpk1Name() const { return mBpkName; }
    s16 get_bck1Name() const { return mBckName; }
    s16 get_bxa1Name() const { return mBxaName; }
    s16 get_brk1Name() const { return mBrkName; }
    s16 get_btp1Name() const { return mBtpName; }

    /* 0x00 */ char* mArcName;
    /* 0x04 */ s16 mBmdName;
    /* 0x06 */ s16 mBtkName;
    /* 0x08 */ s16 mBpkName;
    /* 0x0A */ s16 mBckName;
    /* 0x0C */ s16 mBxaName;
    /* 0x0E */ s16 mBrkName;
    /* 0x10 */ s16 mBtpName;
    /* 0x14 */ f32 mOffsetY;
    /* 0x18 */ f32 mScale;
    /* 0x1C */ s16 mAngleOffsetX;
    /* 0x1E */ SVec mAngle;
    /* 0x24 */ u32 mFlag;
    /* 0x28 */ u8 mShadowSize;
    /* 0x29 */ u8 mCollisionH;
    /* 0x2A */ u8 mCollisionR;
    /* 0x2B */ s8 mTevFrm;
    /* 0x2C */ s8 mBtpFrm;
};  // Size: 0x30

class daShopItem_c : public daItemBase_c {
public:
    /* 80037C14 */ csXyz* getRotateP();
    /* 80037C1C */ cXyz* getPosP();

    u8 getShopItemID() const { return mShopItemID; }

    static ResourceData const mData[23];

private:
    /* 0x92C */ Mtx mMtx;
    /* 0x95C */ int field_0x95c;
    /* 0x960 */ s16 mAngleX;
    /* 0x962 */ s16 mAngleY;
    /* 0x964 */ u8 mShopItemID;
};

#endif /* D_A_D_A_SHOP_ITEM_STATIC_H */
