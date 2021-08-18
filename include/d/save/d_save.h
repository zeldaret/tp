#ifndef D_SAVE_D_SAVE_H
#define D_SAVE_D_SAVE_H

#include "SSystem/SComponent/c_xyz.h"
#include "dolphin/types.h"
#include "msl_c/string.h"

#define DEFAULT_SELECT_ITEM_INDEX 0
#define MAX_SELECT_ITEM 4
#define MAX_EQUIPMENT 6
#define MAX_EVENTS 256
#define MAX_ITEM_SLOTS 24
#define LIGHT_DROP_STAGE 4
#define LETTER_INFO_BIT 64
#define BOMB_BAG_MAX 3
#define BOTTLE_MAX 4
#define TBOX_MAX 64
#define DSV_MEMBIT_ENUM_MAX 8
#define ITEM_MAX_DAN 128
#define SWITCH_ZONE_MAX 0x20
#define SWITCH_ONE_ZONE_MAX 0x10
#define ITEM_ZONE_MAX 0x20
#define ITEM_ONE_ZONE_MAX 0x10

enum Wallets { WALLET, BIG_WALLET, GIANT_WALLET };

enum ItemSlots {
    SLOT_0,
    SLOT_1,
    SLOT_2,
    SLOT_3,
    SLOT_4,
    SLOT_5,
    SLOT_6,
    SLOT_7,
    SLOT_8,
    SLOT_9,
    SLOT_10,
    SLOT_11,
    SLOT_12,
    SLOT_13,
    SLOT_14,
    SLOT_15,
    SLOT_16,
    SLOT_17,
    SLOT_18,
    SLOT_19,
    SLOT_20,
    SLOT_21,
    SLOT_22,
    SLOT_23
};

enum ItemTable {
    HEART,
    GREEN_RUPEE,
    BLUE_RUPEE,
    YELLOW_RUPEE,
    RED_RUPEE,
    PURPLE_RUPEE,
    ORANGE_RUPEE,
    SILVER_RUPEE,
    S_MAGIC,
    L_MAGIC,
    BOMB_5,
    BOMB_10,
    BOMB_20,
    BOMB_30,
    ARROW_10,
    ARROW_20,
    ARROW_30,
    ARROW_1,
    PACHINKO_SHOT,
    noentry1,
    noentry2,
    noentry3,
    WATER_BOMB_5,
    WATER_BOMB_10,
    WATER_BOMB_20,
    WATER_BOMB_30,
    BOMB_INSECT_5,
    BOMB_INSECT_10,
    BOMB_INSECT_20,
    BOMB_INSECT_30,
    RECOVERY_FAILY,
    TRIPLE_HEART,
    SMALL_KEY,
    KAKERA_HEART,
    UTAWA_HEART,
    MAP,
    COMPUS,
    DUNGEON_EXIT,
    BOSS_KEY,
    DUNGEON_BACK,
    SWORD,
    MASTER_SWORD,
    WOOD_SHIELD,
    SHIELD,
    HYLIA_SHIELD,
    TKS_LETTER,
    WEARS_CASUAL,
    WEAR_KOKIRI,
    ARMOR,
    WEAR_ZORA,
    MAGIC_LV1,
    DUNGEON_EXIT_2,
    WALLET_LV1,
    WALLET_LV2,
    WALLET_LV3,
    noentry4,
    noentry5,
    noentry6,
    noentry7,
    noentry8,
    noentry9,
    ZORAS_JEWEL,
    HAWK_EYE,
    WOOD_STICK,
    BOOMERANG,
    SPINNER,
    IRONBALL,
    BOW,
    HOOKSHOT,
    HVY_BOOTS,
    COPY_ROD,
    W_HOOKSHOT,
    KANTERA,
    LIGHT_SWORD,
    FISHING_ROD_1,
    PACHINKO,
    COPY_ROD_2,
    noentry10,
    noentry11,
    BOMB_BAG_LV2,
    BOMB_BAG_LV1,
    BOMB_IN_BAG,
    noentry12,
    LIGHT_ARROW,
    ARROW_LV1,
    ARROW_LV2,
    ARROW_LV3,
    noentry13,
    LURE_ROD,
    BOMB_ARROW,
    HAWK_ARROW,
    BEE_ROD,
    JEWEL_ROD,
    WORM_ROD,
    JEWEL_BEE_ROD,
    JEWEL_WORM_ROD,
    EMPTY_BOTTLE,
    RED_BOTTLE,
    GREEN_BOTTLE,
    BLUE_BOTTLE,
    MILK_BOTTLE,
    HALF_MILK_BOTTLE,
    OIL_BOTTLE,
    WATER_BOTTLE,
    OIL_BOTTLE_2,
    RED_BOTTLE_2,
    UGLY_SOUP,
    HOT_SPRING,
    FAIRY,
    HOT_SPRING_2,
    OIL2,
    OIL,
    NORMAL_BOMB,
    WATER_BOMB,
    POKE_BOMB,
    FAIRY_DROP,
    WORM,
    DROP_BOTTLE,
    BEE_CHILD,
    CHUCHU_RARE,
    CHUCHU_RED,
    CHUCHU_BLUE,
    CHUCHU_GREEN,
    CHUCHU_YELLOW,
    CHUCHU_PURPLE,
    LV1_SOUP,
    LV2_SOUP,
    LV3_SOUP,
    LETTER,
    BILL,
    WOOD_STATUE,
    IRIAS_PENDANT,
    HORSE_FLUTE,
    noentry14,
    noentry15,
    noentry16,
    noentry17,
    noentry18,
    noentry19,
    noentry20,
    noentry21,
    noentry22,
    noentry23,
    noentry24,
    RAFRELS_MEMO,
    ASHS_SCRIBBLING,
    noentry25,
    noentry26,
    noentry27,
    noentry28,
    noentry29,
    noentry30,
    noentry31,
    noentry32,
    noentry33,
    noentry34,
    CHUCHU_YELLOW2,
    OIL_BOTTLE3,
    SHOP_BEE_CHILD,
    CHUCHU_BLACK,
    LIGHT_DROP,
    DROP_CONTAINER,
    DROP_CONTAINER02,
    DROP_CONTAINER03,
    FILLED_CONTAINER,
    MIRROR_PIECE_2,
    MIRROR_PIECE_3,
    MIRROR_PIECE_4,
    noentry35,
    noentry36,
    noentry37,
    noentry38,
    noentry39,
    noentry40,
    noentry41,
    noentry42,
    SMELL_YELIA_POUCH,
    SMELL_PUMPKIN,
    SMELL_POH,
    SMELL_FISH,
    SMELL_CHILDREN,
    SMELL_MEDICINE,
    noentry43,
    noentry44,
    noentry45,
    noentry46,
    noentry47,
    noentry48,
    noentry49,
    noentry50,
    noentry51,
    noentry52,
    M_BEETLE,
    F_BEETLE,
    M_BUTTERFLY,
    F_BUTTERFLY,
    M_STAG_BEETLE,
    F_STAG_BEETLE,
    M_GRASSHOPPER,
    F_GRASSHOPPER,
    M_NANAFUSHI,
    F_NANAFUSHI,
    M_DANGOMUSHI,
    F_DANGOMUSHI,
    M_MANTIS,
    F_MANTIS,
    M_LADYBUG,
    F_LADYBUG,
    M_SNAIL,
    F_SNAIL,
    M_DRAGONFLY,
    F_DRAGONFLY,
    M_ANT,
    F_ANT,
    M_MAYFLY,
    F_MAYFLY,
    noentry53,
    noentry54,
    noentry55,
    noentry56,
    noentry57,
    noentry58,
    noentry59,
    noentry60,
    POU_SPIRIT,
    noentry61,
    noentry62,
    noentry63,
    noentry64,
    noentry65,
    noentry66,
    noentry67,
    noentry68,
    ANCIENT_DOCUMENT,
    AIR_LETTER,
    ANCIENT_DOCUMENT2,
    LV7_DUNGEON_EXIT,
    LINKS_SAVINGS,
    SMALL_KEY2,
    POU_FIRE1,
    POU_FIRE2,
    POU_FIRE3,
    POU_FIRE4,
    BOSSRIDER_KEY,
    TOMATO_PUREE,
    TASTE,
    LV5_BOSS_KEY,
    SURFBOARD,
    KANTERA2,
    L2_KEY_PIECES1,
    L2_KEY_PIECES2,
    L2_KEY_PIECES3,
    KEY_OF_CARAVAN,
    LV2_BOSS_KEY,
    KEY_OF_FILONE,
    NO_ITEM
};

enum CollectItem { COLLECT_CLOTHING, COLLECT_SWORD, COLLECT_SHIELD, COLLECT_SMELL, B_BUTTON_ITEM };

enum Swords { ORDON_SWORD_FLAG, MASTER_SWORD_FLAG, WOODEN_SWORD_FLAG, LIGHT_SWORD_FLAG };

enum Shields { ORDON_SHIELD_FLAG, HYLIAN_SHIELD_FLAG, WOODEN_SHIELD_FLAG };

enum Armors { KOKIRI_CLOTHES_FLAG };

enum LightDropStages { FARON_VESSEL, ELDIN_VESSEL, LANAYRU_VESSEL };

enum ItemMax { ARROW_MAX, NORMAL_BOMB_MAX, WATER_BOMB_MAX, POKE_BOMB_MAX = 6 };

class dSv_player_status_a_c {
public:
    void init();
    void setSelectItemIndex(signed int, u8);
    u8 getSelectItemIndex(signed int) const;
    void setMixItemIndex(signed int, u8);
    u8 getMixItemIndex(signed int) const;
    u16 getRupeeMax() const;
    int isMagicFlag(u8) const;

    u16& getMaxLife() { return mMaxLife; }
    u16& getLife() { return mLife; }
    u16& getRupee() { return mRupee; }
    u16& getOil() { return mOil; }
    u8 getSelectEquip(int item) const { return mSelectEquip[item]; }
    void setOil(u16 oil) { mOil = oil; }
    void setMaxOil(u16 max) { mMaxOil = max; }
    void setWalletSize(u8 size) { mWalletSize = size; }
    void setMagic(u8 magic) { mMagic = magic; }
    void setMaxMagic(u8 max) { mMaxMagic = max; }
    void setRupee(u16 rupees) { mRupee = rupees; }
    void setLife(u16 life) { mLife = life; }
    void setMaxLife(u8 max) { mMaxLife = max; }
    void setSelectEquip(int item_index, u8 item) { mSelectEquip[item_index] = item; }

private:
    /* 0x00 */ u16 mMaxLife;
    /* 0x02 */ u16 mLife;
    /* 0x04 */ u16 mRupee;
    /* 0x06 */ u16 mMaxOil;
    /* 0x08 */ u16 mOil;
    /* 0x0A */ u8 unk10;
    /* 0x0B */ u8 mSelectItem[MAX_SELECT_ITEM];  // For GC: first 2 are X & Y, others unused; For
                                                 // Wii (in order): Left, Right, Down, B
    /* 0x0F */ u8 mMixItem[MAX_SELECT_ITEM];     // Combo items; For GC: first 2 are X & Y, others
                                                 // unused; For Wii (in order): Left, Right, Down, B
    /* 0x13 */ u8 mSelectEquip[MAX_EQUIPMENT];
    /* 0x19 */ u8 mWalletSize;
    /* 0x1A */ u8 mMaxMagic;
    /* 0x1B */ u8 mMagic;
    /* 0x1C */ u8 mMagicFlag;
    /* 0x1D */ u8 unk29;
    /* 0x1E */ u8 mTransformStatus;
    /* 0x1F */ u8 unk31[3];
};  // Size: 0x28

class dSv_player_status_b_c {
public:
    void init();
    void onDarkClearLV(int);
    BOOL isDarkClearLV(int) const;
    void onTransformLV(int);
    BOOL isTransformLV(int) const;

    void setDateIpl(s64 time) { mDateIpl = time; }

private:
    /* 0x00 */ s64 mDateIpl;
    /* 0x08 */ u8 mTransformLevelFlag;
    /* 0x09 */ u8 mDarkClearLevelFlag;
    /* 0x0A */ u8 unk10;
    /* 0x0B */ u8 unk11;
    /* 0x0C */ float mTime;
    /* 0x10 */ u16 mDate;
    /* 0x12 */ u8 unk18[3];
};  // Size: 0x18

class dSv_horse_place_c {
public:
    void init();
    void set(const char*, const cXyz&, s16, s8);

private:
    /* 0x00 */ cXyz mPos;
    /* 0x0C */ u16 mAngleY;
    /* 0x0E */ char mName[8];
    /* 0x16 */ u8 mSpawnId;
    /* 0x17 */ u8 mRoomNo;
};  // Size: 0x18

class dSv_player_return_place_c {
public:
    void init();
    void set(const char*, s8, u8);
    u8 getRoomNo() { return mRoomNo; }
    u8 getPlayerStatus() { return mPlayerStatus; }
    char* getName() { return mName; }

private:
    /* 0x00 */ char mName[8];
    /* 0x08 */ u8 mPlayerStatus;
    /* 0x09 */ s8 mRoomNo;
    /* 0x0A */ u8 unk10;
    /* 0x0B */ u8 unk11;
};  // Size: 0xC

class dSv_player_field_last_stay_info_c {
public:
    void init();
    BOOL isRegionBit(int unk) const;
    void onRegionBit(int unk);
    void set(const char*, const cXyz&, s16, s8, u8);

private:
    /* 0x00 */ cXyz mPos;
    /* 0x0C */ s16 mAngleY;
    /* 0x0E */ char mName[8];
    /* 0x16 */ u8 mLastSpawnId;
    /* 0x17 */ u8 mRegionNo;
    /* 0x18 */ bool mFieldDataExistFlag;
    /* 0x19 */ u8 mRegion;
    /* 0x1A */ u8 unk26[2];
};  // Size: 0x1C

class dSv_player_last_mark_info_c {
public:
    void init();
    void setWarpItemData(const char*, const cXyz&, s16, s8, u8, u8);

    const char* getName() { return mName; }
    cXyz getPos() { return mPos; }
    s16 getAngleY() { return mAngleY; }
    s8 getRoomNo() { return mRoomNo; }
    char getWarpAcceptStage() { return mWarpAcceptStage; }

private:
    /* 0x00 */ cXyz mPos;
    /* 0x0C */ s16 mAngleY;
    /* 0x0E */ char mName[8];
    /* 0x16 */ u8 mSpawnId;
    /* 0x17 */ s8 mRoomNo;
    /* 0x18 */ char mWarpAcceptStage;
    /* 0x19 */ u8 unk25[3];
};  // Size: 0x1C

class dSv_player_item_c {
public:
    void init();
    void setItem(int, u8);
    u8 getItem(int, bool) const;
    void setLineUpItem();
    u8 getLineUpItem(int) const;
    void setBottleItemIn(u8, u8);
    void setEmptyBottleItemIn(u8);
    void setEmptyBottle();
    void setEmptyBottle(u8);
    void setEquipBottleItemIn(u8, u8);
    void setEquipBottleItemEmpty(u8);
    u8 checkBottle(u8);
    int checkInsectBottle();
    u8 checkEmptyBottle();
    void setBombBagItemIn(u8, u8, bool);
    void setBombBagItemIn(u8, u8, u8, bool);
    void setEmptyBombBagItemIn(u8, bool);
    void setEmptyBombBagItemIn(u8, u8, bool);
    void setEmptyBombBag();
    void setEmptyBombBag(u8, u8);
    u8 checkBombBag(u8);
    void setWarashibeItem(u8);
    void setRodTypeLevelUp();
    void setBaitItem(u8);

private:
    /* 0x00 */ u8 mItems[24];
    /* 0x18 */ u8 mItemSlots[24];
};  // Size: 0x30

class dSv_player_get_item_c {
public:
    void init();
    void onFirstBit(u8);
    void offFirstBit(u8);
    int isFirstBit(u8) const;

private:
    /* 0x0 */ u32 mItemFlags[8];
};  // Size: 0x20

class dSv_player_item_record_c {
public:
    void init();
    void setBombNum(u8, u8);
    u8 getBombNum(u8) const;
    void setBottleNum(u8, u8);
    u8 addBottleNum(u8, s16);
    u8 getBottleNum(u8) const;

    void setArrowNum(u8 amount) { mArrowNum = amount; }

private:
    /* 0x0 */ u8 mArrowNum;
    /* 0x1 */ u8 mBombNum[3];
    /* 0x4 */ u8 mBottleNum[4];
    /* 0x8 */ u8 mPachinkoNum;
    /* 0x9 */ u8 unk5[3];
};  // Size: 0xC

class dSv_player_item_max_c {
public:
    void init();
    void setBombNum(u8, u8);
    u8 getBombNum(u8) const;

    void setArrowNum(u8 max) { mItemMax[ARROW_MAX] = max; }
    u8 getArrowNum() { return mItemMax[ARROW_MAX]; }

private:
    /* 0x0 */ u8 mItemMax[8];
};  // Size: 0x8

class dSv_player_collect_c {
public:
    void init();
    void setCollect(int, u8);
    BOOL isCollect(int, u8) const;
    void onCollectCrystal(u8);
    BOOL isCollectCrystal(u8) const;
    void onCollectMirror(u8);
    BOOL isCollectMirror(u8) const;

    u8 getPohNum() { return mPohNum; }

private:
    /* 0x0 */ u8 mItem[8];
    /* 0x8 */ u8 unk8;
    /* 0x9 */ u8 mCrystal;
    /* 0xA */ u8 mMirror;
    /* 0xB */ u8 unk11;
    /* 0xC */ u8 mPohNum;
    /* 0xD */ u8 padding[3];
};  // Size: 0x10

class dSv_player_wolf_c {
public:
    void init();

private:
    /* 0x0 */ u8 unk0[3];
    /* 0x3 */ u8 unk3;
};  // Size: 0x4

class dSv_light_drop_c {
public:
    void init();
    void setLightDropNum(u8, u8);
    u8 getLightDropNum(u8) const;
    void onLightDropGetFlag(u8);
    BOOL isLightDropGetFlag(u8) const;

private:
    /* 0x0 */ u8 mLightDropNum[4];
    /* 0x4 */ u8 mLightDropGetFlag;
    /* 0x5 */ u8 unk5[3];
};  // Size: 0x8

class dSv_letter_info_c {
public:
    void init();
    void onLetterGetFlag(int);
    BOOL isLetterGetFlag(int) const;
    void onLetterReadFlag(int);
    int isLetterReadFlag(int) const;

private:
    /* 0x00 */ u32 mLetterGetFlags[2];
    /* 0x08 */ u32 mLetterReadFlags[2];
    /* 0x10 */ u8 mGetNumber[64];
};  // Size: 0x50

class dSv_fishing_info_c {
public:
    void init();
    void addFishCount(u8);

private:
    /* 0x00 */ u16 mFishCount[16];
    /* 0x20 */ u8 mMaxSize[16];
};  // Size: 0x34

class dSv_player_info_c {
public:
    void init();
    char* getLinkName() { return (char*)mPlayerName; }
    void setPlayerName(const char* name) { strcpy((char*)mPlayerName, name); }
    void setHorseName(const char* name) { strcpy((char*)mHorseName, name); }
    void setTotalTime(s64 time) { mTotalTime = time; }

private:
    /* 0x00 */ u32 unk0;
    /* 0x04 */ u32 unk4;
    /* 0x08 */ u64 mTotalTime;
    /* 0x10 */ u16 unk16;
    /* 0x12 */ u16 mDeathCount;
    /* 0x14 */ u8 mPlayerName[16];
    /* 0x24 */ u8 unk36;
    /* 0x25 */ u8 mHorseName[16];
    /* 0x35 */ u8 unk53;
    /* 0x36 */ u8 mClearCount;
    /* 0x37 */ u8 unk55[5];
};  // Size: 0x40

class dSv_player_config_c {
public:
    void init();
    u32 checkVibration() const;
    u8 getSound();
    void setSound(u8);
    u8 getVibration();
    void setVibration(u8);
    inline u8 getAttentionType(void) { return mAttentionType; }
    inline void setAttentionType(u8 i_mAttentionType) { mAttentionType = i_mAttentionType; }
    inline u16 getCalibrateDist(void) { return mCalibrateDist; }
    inline void setCalibrateDist(u16 i_mCalibrateDist) { mCalibrateDist = i_mCalibrateDist; }
    inline u8 getCalValue(void) { return mCalValue; }
    inline void setCalValue(u8 i_mCalValue) { mCalValue = i_mCalValue; }
    inline bool getShortCut(void) { return mShortCut; }
    inline void setShortCut(bool i_mShortCut) { mShortCut = i_mShortCut; }
    inline u8 getCameraControl(void) { return mCameraControl; }
    inline void setCameraControl(u8 i_mCameraControl) { mCameraControl = i_mCameraControl; }
    inline bool getPointer(void) { return mPointer; }
    inline void setPointer(bool i_mPointer) { mPointer = i_mPointer; }

private:
    /* 0x0 */ u8 unk0;
    /* 0x1 */ u8 mSoundMode;
    /* 0x2 */ u8 mAttentionType;  // Lock-On Type; 0 : hold, 1 : switch
    /* 0x3 */ u8 mVibration;      // Rumble status
    /* 0x4 */ u8 unk4;
    /* 0x5 */ u8 unk5;
    /* 0x6 */ u16 mCalibrateDist;  // Wii pointer horizontal calibration. Default is 0x015E
    /* 0x8 */ u8 mCalValue;        // Wii pointer vertical calibration. Default is 0x00
    /* 0x9 */ bool mShortCut;      // Wii icon shortcut enabled/disabled.
    /* 0xA */ u8 mCameraControl;   // 0 : normal, 1 : inverted
    /* 0xB */ bool mPointer;       // Wii pointer enabled/disabled.
};                                 // Size: 0xC

class dSv_player_c {
public:
    void init();
    dSv_player_info_c& getPlayerInfo() { return mPlayerInfo; }
    dSv_player_status_a_c& getPlayerStatusA() { return mPlayerStatusA; }
    dSv_player_status_b_c& getPlayerStatusB() { return mPlayerStatusB; }
    dSv_player_item_c& getItem() { return mItem; }
    dSv_player_collect_c& getCollect() { return mCollect; }
    dSv_player_item_record_c& getItemRecord() { return mItemRecord; }
    dSv_player_item_max_c& getItemMax() { return mItemMax; }
    dSv_player_last_mark_info_c& getPlayerLastMarkInfo() { return mPlayerLastMarkInfo; }
    dSv_player_return_place_c& getPlayerReturnPlace() { return mPlayerReturnPlace; }
    dSv_light_drop_c& getLightDrop() { return mLightDrop; }
    dSv_player_get_item_c& getGetItem() { return mGetItem; }
    dSv_player_config_c& getConfig() { return mConfig; }

private:
    /* 0x000 */ dSv_player_status_a_c mPlayerStatusA;
    /* 0x028 */ dSv_player_status_b_c mPlayerStatusB;
    /* 0x040 */ dSv_horse_place_c mHorsePlace;
    /* 0x058 */ dSv_player_return_place_c mPlayerReturnPlace;
    /* 0x064 */ dSv_player_field_last_stay_info_c mPlayerFieldLastStayInfo;
    /* 0x080 */ dSv_player_last_mark_info_c mPlayerLastMarkInfo;
    /* 0x09C */ dSv_player_item_c mItem;
    /* 0x0CC */ dSv_player_get_item_c mGetItem;
    /* 0x0EC */ dSv_player_item_record_c mItemRecord;
    /* 0x0F8 */ dSv_player_item_max_c mItemMax;
    /* 0x100 */ dSv_player_collect_c mCollect;
    /* 0x110 */ dSv_player_wolf_c mWolf;
    /* 0x114 */ dSv_light_drop_c mLightDrop;
    /* 0x11C */ dSv_letter_info_c mLetterInfo;
    /* 0x16C */ dSv_fishing_info_c mFishingInfo;
    /* 0x1A0 */ dSv_player_info_c mPlayerInfo;
    /* 0x1E0 */ dSv_player_config_c mConfig;
};  // Size: 0x1EC

class dSv_memBit_c {
public:
    enum {
        MAP,
        COMPASS,
        BOSS_KEY,
        STAGE_BOSS_ENEMY,
        STAGE_LIFE,
        STAGE_BOSS_DEMO,
        OOCCOO_NOTE,
        STAGE_BOSS_ENEMY_2
    };

    void init();
    void onTbox(int);
    void offTbox(int);
    BOOL isTbox(int) const;
    void onSwitch(int);
    void offSwitch(int);
    BOOL isSwitch(int) const;
    BOOL revSwitch(int);
    void onItem(int);
    BOOL isItem(int) const;
    void onDungeonItem(int);
    bool isDungeonItem(int) const;

    u8 getKeyNum() { return mKeyNum; }
    void setKeyNum(u8 keyNum) { mKeyNum = keyNum; }
    void onDungeonItemMap() { onDungeonItem(MAP); }
    bool isDungeonItemMap() const { return isDungeonItem(MAP); }
    void onDungeonItemCompass() { onDungeonItem(COMPASS); }
    void onDungeonItemWarp() { onDungeonItem(OOCCOO_NOTE); }
    void onDungeonItemBossKey() { onDungeonItem(BOSS_KEY); }
    bool isDungeonItemBossKey() const { return isDungeonItem(BOSS_KEY); }
    void onStageBossEnemy() {
        onDungeonItem(STAGE_BOSS_ENEMY);
        onDungeonItem(OOCCOO_NOTE);
    }
    bool isDungeonItemWarp() const { return isDungeonItem(OOCCOO_NOTE); }

private:
    /* 0x00 */ u32 mTbox[2];
    /* 0x08 */ u32 mSwitch[4];
    /* 0x18 */ u32 mItem[1];
    /* 0x1C */ u8 mKeyNum;
    /* 0x1D */ u8 mDungeonItem;
};  // Size: 0x20

class dSv_event_c {
public:
    void init();
    void onEventBit(u16);
    void offEventBit(u16);
    int isEventBit(u16) const;
    void setEventReg(u16, u8);
    u8 getEventReg(u16) const;

private:
    /* 0x0 */ u8 mEvent[256];
};  // Size: 0x100

class dSv_MiniGame_c {
public:
    void init();

private:
    /* 0x00 */ u8 unk0;
    /* 0x01 */ u8 unk1[3];
    /* 0x04 */ u32 mStarTime;
    /* 0x08 */ u32 mBalloonScore;
    /* 0x0C */ u32 mRaceGameTime;
    /* 0x10 */ u32 unk16;
    /* 0x14 */ u32 unk20;
};  // Size: 0x18

class dSv_memory_c {
public:
    dSv_memory_c() { this->init(); }
    void init();
    dSv_memBit_c& getBit() { return mBit; }
    const dSv_memBit_c& getBit() const { return mBit; }

private:
    /* 0x0 */ dSv_memBit_c mBit;
};  // Size: 0x20

STATIC_ASSERT(sizeof(dSv_memory_c) == 0x20);

class dSv_memory2_c {
public:
    dSv_memory2_c() { this->init(); }
    void init();
    void onVisitedRoom(int);
    void offVisitedRoom(int);
    BOOL isVisitedRoom(int);

private:
    /* 0x0 */ u32 mVisitedRoom[2];
};  // Size: 0x8

STATIC_ASSERT(sizeof(dSv_memory2_c) == 8);

class dSv_danBit_c {
public:
    bool init(s8);
    void onSwitch(int);
    void offSwitch(int);
    BOOL isSwitch(int) const;
    BOOL revSwitch(int);
    void onItem(int);
    BOOL isItem(int) const;

private:
    /* 0x00 */ s8 mStageNo;
    /* 0x01 */ u8 unk1;
    /* 0x02 */ u8 unk2[2];
    /* 0x04 */ u32 mSwitch[2];
    /* 0x0C */ u32 mItem[4];
    /* 0x1C */ s16 unk28[16];
};  // Size: 0x3C

class dSv_zoneBit_c {
public:
    void init();
    void clearRoomSwitch();
    void clearRoomItem();
    void onSwitch(int);
    void offSwitch(int);
    BOOL isSwitch(int) const;
    BOOL revSwitch(int);
    void onOneSwitch(int);
    void offOneSwitch(int);
    BOOL isOneSwitch(int) const;
    BOOL revOneSwitch(int);
    void onItem(int);
    BOOL isItem(int) const;
    void onOneItem(int);
    BOOL isOneItem(int) const;

private:
    /* 0x00 */ u16 mSwitch[2];
    /* 0x04 */ u16 mRoomSwitch;
    /* 0x06 */ u16 mItem[2];
    /* 0x0A */ u16 mRoomItem;
    /* 0x0C */ u16 unk12;
};  // Size: 0xE

class dSv_zoneActor_c {
public:
    void init();
    void on(int);
    void off(int);
    BOOL is(int) const;

    static const int ACTOR_MAX = 0xFFFF;

private:
    /* 0x00 */ u32 mActorFlags[4];
};  // Size: 0x10

class dSv_zone_c {
public:
    dSv_zone_c(void) { mRoomNo = -1; }  // the assembly for this is in d_com_inf_game.s
    void init(int);
    dSv_zoneBit_c& getZoneBit() { return mBit; }
    const dSv_zoneBit_c& getBit() const { return mBit; }
    dSv_zoneActor_c& getActor() { return mActor; }
    const dSv_zoneActor_c& getActor() const { return mActor; }

    s8& getRoomNo() { return mRoomNo; }

private:
    /* 0x00 */ s8 mRoomNo;
    /* 0x01 */ u8 unk1;
    /* 0x02 */ dSv_zoneBit_c mBit;
    /* 0x10 */ dSv_zoneActor_c mActor;
};  // Size: 0x20

STATIC_ASSERT(sizeof(dSv_zone_c) == 0x20);

class dSv_restart_c {
public:
    void setRoom(const cXyz&, s16, s8);

private:
    /* 0x00 */ s8 mRoomNo;
    /* 0x01 */ u8 field_0x01[3];
    /* 0x04 */ s16 mStartPoint;
    /* 0x06 */ s16 mRoomAngleY;
    /* 0x08 */ cXyz mRoomPos;
    /* 0x14 */ u32 mRoomParam;
    /* 0x18 */ f32 mLastSpeedF;
    /* 0x1C */ u32 mLastMode;
    /* 0x20 */ s16 mLastAngleY;
};  // Size: 0x24

class dSv_turnRestart_c {
public:
    class dSv_turnRestart_camera_c {
        /* 0x00 */ cXyz mCameraCtr;
        /* 0x0C */ cXyz mCameraEye;
        /* 0x18 */ cXyz mCameraUp;
    };  // Size: 0x24

    void set(const cXyz&, s16, s8, u32);

private:
    /* 0x00 */ cXyz mPosition;
    /* 0x0C */ u32 mParam;
    /* 0x10 */ s16 mAngleY;
    /* 0x12 */ s8 unk18;
    /* 0x14 */ dSv_turnRestart_camera_c mCamera;
    /* 0x38 */ f32 mCameraFvy;
};  // Size: 0x3C

class dSv_reserve_c {
public:
private:
    u8 unk[80];
};

class dSv_save_c {
public:
    void init();
    dSv_memory2_c* getSave2(int);

    dSv_player_c& getPlayer() { return mPlayer; }
    dSv_event_c& getEvent() { return mEvent; }
    dSv_memory_c& getSave(int i_stageNo) { return mSave[i_stageNo]; }
    void putSave(int i_stageNo, dSv_memory_c mem) { mSave[i_stageNo] = mem; }

    static const int STAGE_MAX = 32;
    static const int STAGE2_MAX = 64;

    // private:
    /* 0x000 */ dSv_player_c mPlayer;
    /* 0x1F0 */ dSv_memory_c mSave[STAGE_MAX];
    /* 0x5F0 */ dSv_memory2_c mSave2[STAGE2_MAX];
    /* 0x7F0 */ dSv_event_c mEvent;
    /* 0x8F0 */ dSv_reserve_c reserve;
    /* 0x940 */ dSv_MiniGame_c mMiniGame;
};  // Size: 0x958

class dSv_info_c {
public:
    void init();
    void getSave(int);
    void putSave(int);
    void initZone();
    u32 createZone(int);
    void onSwitch(int, int);
    void offSwitch(int, int);
    BOOL isSwitch(int, int) const;
    BOOL revSwitch(int, int);
    void onItem(int, int);
    BOOL isItem(int, int) const;
    void onActor(int, int);
    void offActor(int, int);
    BOOL isActor(int, int) const;
    int memory_to_card(char*, int);
    int card_to_memory(char*, int);
    void initdata_to_card(char*, int);

    dSv_save_c& getSavedata() { return mSavedata; }
    dSv_memory_c& getMemory() { return mMemory; }
    dSv_zone_c* getZones() { return mZone; }
    dSv_player_c& getPlayer() { return mSavedata.getPlayer(); }
    dSv_event_c& getTmp() { return mTmp; }
    s64 getStartTime() { return mStartTime; }
    s64 getSaveTotalTime() { return mSaveTotalTime; }
    void initDan(s8 param_0) { mDan.init(param_0); }

private:
    /* 0x000 */ dSv_save_c mSavedata;
    /* 0x958 */ dSv_memory_c mMemory;
    /* 0x978 */ dSv_danBit_c mDan;
    /* 0x9B4 */ dSv_zone_c mZone[32];
    /* 0xDB4 */ dSv_restart_c mRestart;
    /* 0xDD8 */ dSv_event_c mTmp;
    /* 0xED8 */ dSv_turnRestart_c mTurnRestart;
    /* 0xF14 */ u8 field_0xf14[4];
    /* 0xF18 */ u8 mDataNum;
    /* 0xF19 */ u8 mNewFile;
    /* 0xF1A */ u8 mNoFile;
    /* 0xF1B */ u8 field_0xf1b[13];
    /* 0xF28 */ s64 mStartTime;
    /* 0xF30 */ s64 mSaveTotalTime;
};  // Size: 0xF38

#endif /* D_SAVE_D_SAVE_H */
