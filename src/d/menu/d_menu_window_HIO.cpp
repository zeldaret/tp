/**
 * d_menu_window_HIO.cpp
 * Menu HostIO functionality
 */

#include "d/menu/d_menu_window_HIO.h"
#include "d/com/d_com_inf_game.h"

/* 801F9AFC-801F9B38 1F443C 003C+00 1/1 0/0 0/0 .text            __ct__9dMw_HIO_cFv */
dMw_HIO_c::dMw_HIO_c() {
    init();
}

/* 801F9B38-801F9E14 1F4478 02DC+00 1/1 0/0 0/0 .text            init__9dMw_HIO_cFv */
void dMw_HIO_c::init() {
    static u8 m_cloth_item[3] = {WEAR_KOKIRI, ARMOR, WEAR_ZORA};
    static u8 m_sword_item[4] = {SWORD, MASTER_SWORD, LIGHT_SWORD, WOOD_STICK};
    static u8 m_shield_item[3] = {SHIELD, HYLIA_SHIELD, WOOD_SHIELD};

    mArrowFlag = 0;
    mBombFlag = 0;
    mPachinkoFlag = 0;

    mLifeCopy = 0;
    mLife = 0;
    mMaxLifeCopy = 0;
    mMaxLife = 0;
    mMagicCopy = 0;
    mMagic = 0;
    mMaxMagicCopy = 0;
    mMaxMagic = 0;
    mOilCopy = 0;
    mOil = 0;
    mMaxOilCopy = 0;
    mMaxOil = 0;
    mOxygenCopy = 0;
    mOxygen = 0;
    mMaxOxygenCopy = 0;
    mMaxOxygen = 0;
    mEnableMagicCopy = false;
    mEnableMagic = false;
    mEnableArrowDropsCopy = false;
    mEnableArrowDrops = false;
    mRupeesCopy = 0;
    mRupees = 0;
    mWalletSizeCopy = WALLET;
    mWalletSize = WALLET;
    mKeysCopy = 0;
    mKeys = 0;
    field_0x47 = 0;
    field_0x23 = 0;
    mEnableOxygenMeterCopy = false;
    mEnableOxygenMeter = false;
    mPoesCopy = 0;
    mPoes = 0;
    mDonationAmountCopy = 0;
    mDonationAmount = 0;

    for (int i = 0; i < 24; i++) {
        mItemsCopy[i] = NO_ITEM;
        mItems[i] = NO_ITEM;
        field_0x7a[i] = 0;
    }

    for (int i = 0; i < 4; i++) {
        mBottleNumCopy[i] = 0;
        mBottleNum[i] = 0;
    }

    for (int i = 0; i < 3; i++) {
        mBombNumCopy[i] = 0;
        mBombNum[i] = 0;
    }

    mScentCopy = NO_ITEM;
    mScent = NO_ITEM;
    field_0xa8 = 0;
    field_0xf4 = 0;
    field_0xea = 0;

    for (int i = 0; i < 4; i++) {
        bool swordBit = dComIfGs_isItemFirstBit(m_sword_item[i]);
        mSwordsCopy[i] = swordBit;
        mSwords[i] = swordBit;
    }

    for (int i = 0; i < 3; i++) {
        bool shieldBit = dComIfGs_isItemFirstBit(m_shield_item[i]);
        mShieldsCopy[i] = shieldBit;
        mShields[i] = shieldBit;

        bool clothesBit = dComIfGs_isItemFirstBit(m_cloth_item[i]);
        mClothesCopy[i] = clothesBit;
        mClothes[i] = clothesBit;
    }

    mBombBagLV2Copy = false;
    mBombBagLV2 = false;

    for (int i = 0; i < 3; i++) {
        mLV2KeyShardsCopy[i] = false;
        mLV2KeyShards[i] = false;
    }

    for (int i = 0; i < 2; i++) {
        mLV5ItemCopy[i] = false;
        mLV5Item[i] = false;
    }

    for (int i = 0; i < 24; i++) {
        mGoldBugCopy[i] = false;
        mGoldBug[i] = false;
    }

    for (int i = 0; i < 8; i++) {
        field_0x101[i] = 0;
        field_0xf9[i] = 0;
        field_0x111[i] = 0;
        field_0x109[i] = 0;
    }

    for (int i = 0; i < 4; i++) {
        mFusedShadowCopy[i] = false;
        mFusedShadow[i] = false;
    }

    for (int i = 0; i < 4; i++) {
        mMirrorShardCopy[i] = false;
        mMirrorShard[i] = false;
    }
}

/* 801F9E14-801F9E1C 1F4754 0008+00 0/0 1/1 0/0 .text            getBombFlag__9dMw_HIO_cFv */
bool dMw_HIO_c::getBombFlag() {
    return false;
}

/* 801F9E1C-801F9E24 1F475C 0008+00 0/0 1/1 0/0 .text            getArrowFlag__9dMw_HIO_cFv */
bool dMw_HIO_c::getArrowFlag() {
    return false;
}

/* 801F9E24-801F9E2C 1F4764 0008+00 0/0 1/1 0/0 .text            getPachinkoFlag__9dMw_HIO_cFv */
bool dMw_HIO_c::getPachinkoFlag() {
    return false;
}

/* 801F9E2C-801F9E98 1F476C 006C+00 1/1 0/0 0/0 .text            __ct__10dMw_DHIO_cFv */
dMw_DHIO_c::dMw_DHIO_c() {
    for (int i = 0; i < 32; i++) {
        mMap[i] = false;
        mCompass[i] = false;
        mBossKey[i] = false;
        mBossClear[i] = false;
        mHeartContainer[i] = false;
        mBossDemo[i] = false;
        mPortal[i] = false;
        mMidBossClear[i] = false;
        mMapCopy[i] = false;
        mCompassCopy[i] = false;
        mBossKeyCopy[i] = false;
        mBossClearCopy[i] = false;
        mHeartContainerCopy[i] = false;
        mBossDemoCopy[i] = false;
        mPortalCopy[i] = false;
        mMidBossClearCopy[i] = false;
    }
}

/* 8042E86C-8042E99C 05B58C 0130+00 0/1 4/4 0/0 .bss             g_mwHIO */
dMw_HIO_c g_mwHIO;

/* 8042E9A8-8042EBB0 05B6C8 0208+00 0/1 1/1 0/0 .bss             g_mwDHIO */
dMw_DHIO_c g_mwDHIO;
