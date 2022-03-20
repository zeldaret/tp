#ifndef D_SAVE_D_SAVE_H
#define D_SAVE_D_SAVE_H

#include "msl_c/MSL_Common/Src/printf.h"
#include "msl_c/MSL_Common/Src/string.h"
#include "SSystem/SComponent/c_xyz.h"
#include "dolphin/os/OS.h"
#include "dolphin/types.h"

#define DEFAULT_SELECT_ITEM_INDEX 0
#define MAX_SELECT_ITEM 4
#define SELECT_ITEM_NUM 2
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

enum Wallets {
    /* 0x0 */ WALLET,
    /* 0x1 */ BIG_WALLET,
    /* 0x2 */ GIANT_WALLET
};

enum ItemSlots {
    /* 0x00 */ SLOT_0,
    /* 0x01 */ SLOT_1,
    /* 0x02 */ SLOT_2,
    /* 0x03 */ SLOT_3,
    /* 0x04 */ SLOT_4,
    /* 0x05 */ SLOT_5,
    /* 0x06 */ SLOT_6,
    /* 0x07 */ SLOT_7,
    /* 0x08 */ SLOT_8,
    /* 0x09 */ SLOT_9,
    /* 0x0A */ SLOT_10,
    /* 0x0B */ SLOT_11,
    /* 0x0C */ SLOT_12,
    /* 0x0D */ SLOT_13,
    /* 0x0E */ SLOT_14,
    /* 0x0F */ SLOT_15,
    /* 0x10 */ SLOT_16,
    /* 0x11 */ SLOT_17,
    /* 0x12 */ SLOT_18,
    /* 0x13 */ SLOT_19,
    /* 0x14 */ SLOT_20,
    /* 0x15 */ SLOT_21,
    /* 0x16 */ SLOT_22,
    /* 0x17 */ SLOT_23
};

enum ItemTable {
    /* 0x00 */ HEART,
    /* 0x01 */ GREEN_RUPEE,
    /* 0x02 */ BLUE_RUPEE,
    /* 0x03 */ YELLOW_RUPEE,
    /* 0x04 */ RED_RUPEE,
    /* 0x05 */ PURPLE_RUPEE,
    /* 0x06 */ ORANGE_RUPEE,
    /* 0x07 */ SILVER_RUPEE,
    /* 0x08 */ S_MAGIC,
    /* 0x09 */ L_MAGIC,
    /* 0x0A */ BOMB_5,
    /* 0x0B */ BOMB_10,
    /* 0x0C */ BOMB_20,
    /* 0x0D */ BOMB_30,
    /* 0x0E */ ARROW_10,
    /* 0x0F */ ARROW_20,
    /* 0x10 */ ARROW_30,
    /* 0x11 */ ARROW_1,
    /* 0x12 */ PACHINKO_SHOT,
    /* 0x13 */ noentry1,
    /* 0x14 */ noentry2,
    /* 0x15 */ noentry3,
    /* 0x16 */ WATER_BOMB_5,
    /* 0x17 */ WATER_BOMB_10,
    /* 0x18 */ WATER_BOMB_20,
    /* 0x19 */ WATER_BOMB_30,
    /* 0x1A */ BOMB_INSECT_5,
    /* 0x1B */ BOMB_INSECT_10,
    /* 0x1C */ BOMB_INSECT_20,
    /* 0x1D */ BOMB_INSECT_30,
    /* 0x1E */ RECOVERY_FAILY,
    /* 0x1F */ TRIPLE_HEART,
    /* 0x20 */ SMALL_KEY,
    /* 0x21 */ KAKERA_HEART,
    /* 0x22 */ UTAWA_HEART,
    /* 0x23 */ MAP,
    /* 0x24 */ COMPUS,
    /* 0x25 */ DUNGEON_EXIT,
    /* 0x26 */ BOSS_KEY,
    /* 0x27 */ DUNGEON_BACK,
    /* 0x28 */ SWORD,
    /* 0x29 */ MASTER_SWORD,
    /* 0x2A */ WOOD_SHIELD,
    /* 0x2B */ SHIELD,
    /* 0x2C */ HYLIA_SHIELD,
    /* 0x2D */ TKS_LETTER,
    /* 0x2E */ WEAR_CASUAL,
    /* 0x2F */ WEAR_KOKIRI,
    /* 0x30 */ ARMOR,
    /* 0x31 */ WEAR_ZORA,
    /* 0x32 */ MAGIC_LV1,
    /* 0x33 */ DUNGEON_EXIT_2,
    /* 0x34 */ WALLET_LV1,
    /* 0x35 */ WALLET_LV2,
    /* 0x36 */ WALLET_LV3,
    /* 0x37 */ noentry4,
    /* 0x38 */ noentry5,
    /* 0x39 */ noentry6,
    /* 0x3A */ noentry7,
    /* 0x3B */ noentry8,
    /* 0x3C */ noentry9,
    /* 0x3D */ ZORAS_JEWEL,
    /* 0x3E */ HAWK_EYE,
    /* 0x3F */ WOOD_STICK,
    /* 0x40 */ BOOMERANG,
    /* 0x41 */ SPINNER,
    /* 0x42 */ IRONBALL,
    /* 0x43 */ BOW,
    /* 0x44 */ HOOKSHOT,
    /* 0x45 */ HVY_BOOTS,
    /* 0x46 */ COPY_ROD,
    /* 0x47 */ W_HOOKSHOT,
    /* 0x48 */ KANTERA,
    /* 0x49 */ LIGHT_SWORD,
    /* 0x4A */ FISHING_ROD_1,
    /* 0x4B */ PACHINKO,
    /* 0x4C */ COPY_ROD_2,
    /* 0x4D */ noentry10,
    /* 0x4E */ noentry11,
    /* 0x4F */ BOMB_BAG_LV2,
    /* 0x50 */ BOMB_BAG_LV1,
    /* 0x51 */ BOMB_IN_BAG,
    /* 0x52 */ noentry12,
    /* 0x53 */ LIGHT_ARROW,
    /* 0x54 */ ARROW_LV1,
    /* 0x55 */ ARROW_LV2,
    /* 0x56 */ ARROW_LV3,
    /* 0x57 */ noentry13,
    /* 0x58 */ LURE_ROD,
    /* 0x59 */ BOMB_ARROW,
    /* 0x5A */ HAWK_ARROW,
    /* 0x5B */ BEE_ROD,
    /* 0x5C */ JEWEL_ROD,
    /* 0x5D */ WORM_ROD,
    /* 0x5E */ JEWEL_BEE_ROD,
    /* 0x5F */ JEWEL_WORM_ROD,
    /* 0x60 */ EMPTY_BOTTLE,
    /* 0x61 */ RED_BOTTLE,
    /* 0x62 */ GREEN_BOTTLE,
    /* 0x63 */ BLUE_BOTTLE,
    /* 0x64 */ MILK_BOTTLE,
    /* 0x65 */ HALF_MILK_BOTTLE,
    /* 0x66 */ OIL_BOTTLE,
    /* 0x67 */ WATER_BOTTLE,
    /* 0x68 */ OIL_BOTTLE_2,
    /* 0x69 */ RED_BOTTLE_2,
    /* 0x6A */ UGLY_SOUP,
    /* 0x6B */ HOT_SPRING,
    /* 0x6C */ FAIRY,
    /* 0x6D */ HOT_SPRING_2,
    /* 0x6E */ OIL2,
    /* 0x6F */ OIL,
    /* 0x70 */ NORMAL_BOMB,
    /* 0x71 */ WATER_BOMB,
    /* 0x72 */ POKE_BOMB,
    /* 0x73 */ FAIRY_DROP,
    /* 0x74 */ WORM,
    /* 0x75 */ DROP_BOTTLE,
    /* 0x76 */ BEE_CHILD,
    /* 0x77 */ CHUCHU_RARE,
    /* 0x78 */ CHUCHU_RED,
    /* 0x79 */ CHUCHU_BLUE,
    /* 0x7A */ CHUCHU_GREEN,
    /* 0x7B */ CHUCHU_YELLOW,
    /* 0x7C */ CHUCHU_PURPLE,
    /* 0x7D */ LV1_SOUP,
    /* 0x7E */ LV2_SOUP,
    /* 0x7F */ LV3_SOUP,
    /* 0x80 */ LETTER,
    /* 0x81 */ BILL,
    /* 0x82 */ WOOD_STATUE,
    /* 0x83 */ IRIAS_PENDANT,
    /* 0x84 */ HORSE_FLUTE,
    /* 0x85 */ noentry14,
    /* 0x86 */ noentry15,
    /* 0x87 */ noentry16,
    /* 0x88 */ noentry17,
    /* 0x89 */ noentry18,
    /* 0x8A */ noentry19,
    /* 0x8B */ noentry20,
    /* 0x8C */ noentry21,
    /* 0x8D */ noentry22,
    /* 0x8E */ noentry23,
    /* 0x8F */ noentry24,
    /* 0x90 */ RAFRELS_MEMO,
    /* 0x91 */ ASHS_SCRIBBLING,
    /* 0x92 */ noentry25,
    /* 0x93 */ noentry26,
    /* 0x94 */ noentry27,
    /* 0x95 */ noentry28,
    /* 0x96 */ noentry29,
    /* 0x97 */ noentry30,
    /* 0x98 */ noentry31,
    /* 0x99 */ noentry32,
    /* 0x9A */ noentry33,
    /* 0x9B */ noentry34,
    /* 0x9C */ CHUCHU_YELLOW2,
    /* 0x9D */ OIL_BOTTLE3,
    /* 0x9E */ SHOP_BEE_CHILD,
    /* 0x9F */ CHUCHU_BLACK,
    /* 0xA0 */ LIGHT_DROP,
    /* 0xA1 */ DROP_CONTAINER,
    /* 0xA2 */ DROP_CONTAINER02,
    /* 0xA3 */ DROP_CONTAINER03,
    /* 0xA4 */ FILLED_CONTAINER,
    /* 0xA5 */ MIRROR_PIECE_2,
    /* 0xA6 */ MIRROR_PIECE_3,
    /* 0xA7 */ MIRROR_PIECE_4,
    /* 0xA8 */ noentry35,
    /* 0xA9 */ noentry36,
    /* 0xAA */ noentry37,
    /* 0xAB */ noentry38,
    /* 0xAC */ noentry39,
    /* 0xAD */ noentry40,
    /* 0xAE */ noentry41,
    /* 0xAF */ noentry42,
    /* 0xB0 */ SMELL_YELIA_POUCH,
    /* 0xB1 */ SMELL_PUMPKIN,
    /* 0xB2 */ SMELL_POH,
    /* 0xB3 */ SMELL_FISH,
    /* 0xB4 */ SMELL_CHILDREN,
    /* 0xB5 */ SMELL_MEDICINE,
    /* 0xB6 */ noentry43,
    /* 0xB7 */ noentry44,
    /* 0xB8 */ noentry45,
    /* 0xB9 */ noentry46,
    /* 0xBA */ noentry47,
    /* 0xBB */ noentry48,
    /* 0xBC */ noentry49,
    /* 0xBD */ noentry50,
    /* 0xBE */ noentry51,
    /* 0xBF */ noentry52,
    /* 0xC0 */ M_BEETLE,
    /* 0xC1 */ F_BEETLE,
    /* 0xC2 */ M_BUTTERFLY,
    /* 0xC3 */ F_BUTTERFLY,
    /* 0xC4 */ M_STAG_BEETLE,
    /* 0xC5 */ F_STAG_BEETLE,
    /* 0xC6 */ M_GRASSHOPPER,
    /* 0xC7 */ F_GRASSHOPPER,
    /* 0xC8 */ M_NANAFUSHI,
    /* 0xC9 */ F_NANAFUSHI,
    /* 0xCA */ M_DANGOMUSHI,
    /* 0xCB */ F_DANGOMUSHI,
    /* 0xCC */ M_MANTIS,
    /* 0xCD */ F_MANTIS,
    /* 0xCE */ M_LADYBUG,
    /* 0xCF */ F_LADYBUG,
    /* 0xD0 */ M_SNAIL,
    /* 0xD1 */ F_SNAIL,
    /* 0xD2 */ M_DRAGONFLY,
    /* 0xD3 */ F_DRAGONFLY,
    /* 0xD4 */ M_ANT,
    /* 0xD5 */ F_ANT,
    /* 0xD6 */ M_MAYFLY,
    /* 0xD7 */ F_MAYFLY,
    /* 0xD8 */ noentry53,
    /* 0xD9 */ noentry54,
    /* 0xDA */ noentry55,
    /* 0xDB */ noentry56,
    /* 0xDC */ noentry57,
    /* 0xDD */ noentry58,
    /* 0xDE */ noentry59,
    /* 0xDF */ noentry60,
    /* 0xE0 */ POU_SPIRIT,
    /* 0xE1 */ noentry61,
    /* 0xE2 */ noentry62,
    /* 0xE3 */ noentry63,
    /* 0xE4 */ noentry64,
    /* 0xE5 */ noentry65,
    /* 0xE6 */ noentry66,
    /* 0xE7 */ noentry67,
    /* 0xE8 */ noentry68,
    /* 0xE9 */ ANCIENT_DOCUMENT,
    /* 0xEA */ AIR_LETTER,
    /* 0xEB */ ANCIENT_DOCUMENT2,
    /* 0xEC */ LV7_DUNGEON_EXIT,
    /* 0xED */ LINKS_SAVINGS,
    /* 0xEE */ SMALL_KEY2,
    /* 0xEF */ POU_FIRE1,
    /* 0xF0 */ POU_FIRE2,
    /* 0xF1 */ POU_FIRE3,
    /* 0xF2 */ POU_FIRE4,
    /* 0xF3 */ BOSSRIDER_KEY,
    /* 0xF4 */ TOMATO_PUREE,
    /* 0xF5 */ TASTE,
    /* 0xF6 */ LV5_BOSS_KEY,
    /* 0xF7 */ SURFBOARD,
    /* 0xF8 */ KANTERA2,
    /* 0xF9 */ L2_KEY_PIECES1,
    /* 0xFA */ L2_KEY_PIECES2,
    /* 0xFB */ L2_KEY_PIECES3,
    /* 0xFC */ KEY_OF_CARAVAN,
    /* 0xFD */ LV2_BOSS_KEY,
    /* 0xFE */ KEY_OF_FILONE,
    /* 0xFF */ NO_ITEM
};

enum EquipItem {
    /* 0x103 */ EQUIP_SWORD = 0x103,
};

enum CollectItem {
    /* 0x0 */ COLLECT_CLOTHING,
    /* 0x1 */ COLLECT_SWORD,
    /* 0x2 */ COLLECT_SHIELD,
    /* 0x3 */ COLLECT_SMELL,
    /* 0x4 */ B_BUTTON_ITEM
};

enum Swords {
    /* 0x0 */ COLLECT_ORDON_SWORD,
    /* 0x1 */ COLLECT_MASTER_SWORD,
    /* 0x2 */ COLLECT_WOODEN_SWORD,
    /* 0x3 */ COLLECT_LIGHT_SWORD
};

enum Shields {
    /* 0x0 */ COLLECT_WOODEN_SHIELD,
    /* 0x1 */ COLLECT_ORDON_SHIELD,
    /* 0x2 */ COLLECT_HYLIAN_SHIELD
};

enum Clothes {
    /* 0x0 */ KOKIRI_CLOTHES_FLAG
};

enum LightDropStages {
    /* 0x0 */ FARON_VESSEL,
    /* 0x1 */ ELDIN_VESSEL,
    /* 0x2 */ LANAYRU_VESSEL
};

enum ItemMax {
    /* 0x0 */ ARROW_MAX,
    /* 0x1 */ NORMAL_BOMB_MAX,
    /* 0x2 */ WATER_BOMB_MAX,
    /* 0x6 */ POKE_BOMB_MAX = 6
};

enum {
    /* 0x0 */ SELECT_ITEM_LEFT,
    /* 0x1 */ SELECT_ITEM_RIGHT,
    /* 0x2 */ SELECT_ITEM_DOWN,
    /* 0x3 */ SELECT_ITEM_B,
    /* 0x0 */ SELECT_ITEM_X = SELECT_ITEM_LEFT,
    /* 0x1 */ SELECT_ITEM_Y = SELECT_ITEM_RIGHT,
};

enum {
    /* 0x0 */ TF_STATUS_HUMAN,
    /* 0x1 */ TF_STATUS_WOLF,
};

class dSv_player_status_a_c {
public:
    void init();
    void setSelectItemIndex(int i_no, u8 item_index);
    u8 getSelectItemIndex(int i_no) const;
    void setMixItemIndex(int i_no, u8 item_index);
    u8 getMixItemIndex(int i_no) const;
    u16 getRupeeMax() const;
    int isMagicFlag(u8 i_magic) const;

    u16 getMaxLife() { return mMaxLife; }
    u16 getLife() { return mLife; }
    u16 getRupee() { return mRupee; }
    u16 getOil() { return mOil; }
    u16 getMaxOil() const { return mMaxOil; }
    u8& getMagic() { return mMagic; }
    u8& getMaxMagic() { return mMaxMagic; }
    u8 getSelectEquip(int item) const { return mSelectEquip[item]; }
    u8 getTransformStatus() const { return mTransformStatus; }
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
    void onDarkClearLV(int i_no);
    BOOL isDarkClearLV(int i_no) const;
    void onTransformLV(int i_no);
    BOOL isTransformLV(int i_no) const;

    void setDateIpl(s64 time) { mDateIpl = time; }
    u16 getDate() const { return mDate; }
    f32 getTime() const { return mTime; }
    void setDate(u16 date) { mDate = date; }
    void setTime(f32 time) { mTime = time; }
    OSTime getDateIpl() const { return mDateIpl; }

private:
    /* 0x00 */ OSTime mDateIpl;
    /* 0x08 */ u8 mTransformLevelFlag;
    /* 0x09 */ u8 mDarkClearLevelFlag;
    /* 0x0A */ u8 unk10;
    /* 0x0B */ u8 unk11;
    /* 0x0C */ f32 mTime;
    /* 0x10 */ u16 mDate;
    /* 0x12 */ u8 unk18[3];
};  // Size: 0x18

class dSv_horse_place_c {
public:
    dSv_horse_place_c() {}

    void init();
    void set(const char* i_name, const cXyz& i_pos, s16 i_angle, s8 i_roomNo);

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
    void set(const char* i_name, s8 i_roomNo, u8 i_status);
    s8 getRoomNo() const { return mRoomNo; }
    u8 getPlayerStatus() const { return mPlayerStatus; }
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
    dSv_player_field_last_stay_info_c() {}

    void init();
    BOOL isRegionBit(int i_region) const;
    void onRegionBit(int i_region);
    void set(const char* i_name, const cXyz& i_pos, s16 i_angle, s8 i_spawn, u8 i_regionNo);

    bool isFieldDataExistFlag() const { return mFieldDataExistFlag; }

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
    dSv_player_last_mark_info_c() {}

    void init();
    void setWarpItemData(const char* i_name, const cXyz& i_pos, s16 i_angle, s8 i_roomNo, u8, u8);

    const char* getName() { return mName; }
    cXyz& getPos() { return mPos; }
    s16 getAngleY() { return mAngleY; }
    s8 getRoomNo() { return mRoomNo; }
    char getWarpAcceptStage() { return mWarpAcceptStage; }
    void resetWarpAcceptStage() { mWarpAcceptStage = -1; }

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
    void setItem(int item_slot, u8 i_itemNo);
    u8 getItem(int slot_no, bool check_combo) const;
    void setLineUpItem();
    u8 getLineUpItem(int slot_no) const;
    void setBottleItemIn(u8 curItemIn, u8 newItemIn);
    void setEmptyBottleItemIn(u8 i_itemNo);
    void setEmptyBottle();
    void setEmptyBottle(u8 i_itemNo);
    void setEquipBottleItemIn(u8 curItemIn, u8 newItemIn);
    void setEquipBottleItemEmpty(u8 curItemIn);
    u8 checkBottle(u8 i_itemNo);
    int checkInsectBottle();
    u8 checkEmptyBottle();
    void setBombBagItemIn(u8 curBomb, u8 newBomb, bool setNum);
    void setBombBagItemIn(u8 curBomb, u8 newBomb, u8 bombNum, bool setNum);
    void setEmptyBombBagItemIn(u8 newBomb, bool setNum);
    void setEmptyBombBagItemIn(u8 newBomb, u8 bombNum, bool setNum);
    void setEmptyBombBag();
    void setEmptyBombBag(u8 newBomb, u8 bombNum);
    u8 checkBombBag(u8 i_itemNo);
    void setWarashibeItem(u8 i_itemNo);
    void setRodTypeLevelUp();
    void setBaitItem(u8 i_itemNo);

private:
    /* 0x00 */ u8 mItems[24];
    /* 0x18 */ u8 mItemSlots[24];
};  // Size: 0x30

class dSv_player_get_item_c {
public:
    void init();
    void onFirstBit(u8 i_itemNo);
    void offFirstBit(u8 i_itemNo);
    int isFirstBit(u8 i_itemNo) const;

private:
    /* 0x0 */ u32 mItemFlags[8];
};  // Size: 0x20

class dSv_player_item_record_c {
public:
    void init();
    void setBombNum(u8 i_bagIdx, u8 bag_id);
    u8 getBombNum(u8 i_bagIdx) const;
    void setBottleNum(u8 i_bottleIdx, u8 bottle_num);
    u8 addBottleNum(u8 i_bottleIdx, s16 num);
    u8 getBottleNum(u8 i_bottleIdx) const;

    u8 getArrowNum() const { return mArrowNum; }
    void setArrowNum(u8 amount) { mArrowNum = amount; }
    u8 getPachinkoNum() const { return mPachinkoNum; }
    void setPachinkoNum(u8 num) { mPachinkoNum = num; }

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
    void setBombNum(u8 bomb_id, u8 bomb_max);
    u8 getBombNum(u8 bomb_id) const;

    void setArrowNum(u8 max) { mItemMax[ARROW_MAX] = max; }
    u8 getArrowNum() { return mItemMax[ARROW_MAX]; }

private:
    /* 0x0 */ u8 mItemMax[8];
};  // Size: 0x8

class dSv_player_collect_c {
public:
    void init();
    void setCollect(int i_item_type, u8 i_item);
    BOOL isCollect(int i_item_type, u8 i_item) const;
    void onCollectCrystal(u8 i_item);
    BOOL isCollectCrystal(u8 i_item) const;
    void onCollectMirror(u8 i_item);
    BOOL isCollectMirror(u8 i_item) const;

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
    void setLightDropNum(u8 i_nowLevel, u8 dropNum);
    u8 getLightDropNum(u8 i_nowLevel) const;
    void onLightDropGetFlag(u8 i_nowLevel);
    BOOL isLightDropGetFlag(u8 i_nowLevel) const;

private:
    /* 0x0 */ u8 mLightDropNum[4];
    /* 0x4 */ u8 mLightDropGetFlag;
    /* 0x5 */ u8 unk5[3];
};  // Size: 0x8

class dSv_letter_info_c {
public:
    void init();
    void onLetterGetFlag(int i_no);
    BOOL isLetterGetFlag(int i_no) const;
    void onLetterReadFlag(int i_no);
    int isLetterReadFlag(int i_no) const;

private:
    /* 0x00 */ u32 mLetterGetFlags[2];
    /* 0x08 */ u32 mLetterReadFlags[2];
    /* 0x10 */ u8 mGetNumber[64];
};  // Size: 0x50

class dSv_fishing_info_c {
public:
    void init();
    void addFishCount(u8 fish_index);

private:
    /* 0x00 */ u16 mFishCount[16];
    /* 0x20 */ u8 mMaxSize[16];
};  // Size: 0x34

class dSv_player_info_c {
public:
    void init();
    char* getLinkName() { return mPlayerName; }
    void setPlayerName(const char* name) { strcpy((char*)mPlayerName, name); }
    void setHorseName(const char* name) { strcpy((char*)mHorseName, name); }
    void setTotalTime(s64 time) { mTotalTime = time; }
    s64 getTotalTime() const { return mTotalTime; }

private:
    /* 0x00 */ u32 unk0;
    /* 0x04 */ u32 unk4;
    /* 0x08 */ s64 mTotalTime;
    /* 0x10 */ u16 unk16;
    /* 0x12 */ u16 mDeathCount;
    /* 0x14 */ char mPlayerName[16];
    /* 0x24 */ u8 unk36;
    /* 0x25 */ char mHorseName[16];
    /* 0x35 */ u8 unk53;
    /* 0x36 */ u8 mClearCount;
    /* 0x37 */ u8 unk55[5];
};  // Size: 0x40

class dSv_player_config_c {
public:
    void init();
    u32 checkVibration() const;
    u8 getSound();
    void setSound(u8 i_mode);
    u8 getVibration();
    void setVibration(u8 i_status);

    u8 getAttentionType() { return mAttentionType; }
    void setAttentionType(u8 i_mAttentionType) { mAttentionType = i_mAttentionType; }
    u16 getCalibrateDist() { return mCalibrateDist; }
    void setCalibrateDist(u16 i_mCalibrateDist) { mCalibrateDist = i_mCalibrateDist; }
    u8 getCalValue() { return mCalValue; }
    void setCalValue(u8 i_mCalValue) { mCalValue = i_mCalValue; }
    bool getShortCut() { return mShortCut; }
    void setShortCut(bool i_mShortCut) { mShortCut = i_mShortCut; }
    u8 getCameraControl() { return mCameraControl; }
    void setCameraControl(u8 i_mCameraControl) { mCameraControl = i_mCameraControl; }
    bool getPointer() { return mPointer; }
    void setPointer(bool i_mPointer) { mPointer = i_mPointer; }

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
    dSv_player_c() {}
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
    dSv_letter_info_c& getLetterInfo() { return mLetterInfo; }
    dSv_player_field_last_stay_info_c& getPlayerFieldLastStayInfo() {
        return mPlayerFieldLastStayInfo;
    }

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
        /* 0x0 */ MAP,
        /* 0x1 */ COMPASS,
        /* 0x2 */ BOSS_KEY,
        /* 0x3 */ STAGE_BOSS_ENEMY,
        /* 0x4 */ STAGE_LIFE,
        /* 0x5 */ STAGE_BOSS_DEMO,
        /* 0x6 */ OOCCOO_NOTE,
        /* 0x7 */ STAGE_BOSS_ENEMY_2
    };

    void init();
    void onTbox(int i_no);
    void offTbox(int i_no);
    BOOL isTbox(int i_no) const;
    void onSwitch(int i_no);
    void offSwitch(int i_no);
    BOOL isSwitch(int i_no) const;
    BOOL revSwitch(int i_no);
    void onItem(int i_no);
    BOOL isItem(int i_no) const;
    void onDungeonItem(int i_no);
    s32 isDungeonItem(int i_no) const;

    u8 getKeyNum() { return mKeyNum; }
    void setKeyNum(u8 keyNum) { mKeyNum = keyNum; }
    void onDungeonItemMap() { onDungeonItem(MAP); }
    s32 isDungeonItemMap() const { return isDungeonItem(MAP); }
    void onDungeonItemCompass() { onDungeonItem(COMPASS); }
    s32 isDungeonItemCompass() const { return isDungeonItem(COMPASS); }
    void onDungeonItemWarp() { onDungeonItem(OOCCOO_NOTE); }
    void onDungeonItemBossKey() { onDungeonItem(BOSS_KEY); }
    s32 isDungeonItemBossKey() const { return isDungeonItem(BOSS_KEY); }
    void onStageBossEnemy() {
        onDungeonItem(STAGE_BOSS_ENEMY);
        onDungeonItem(OOCCOO_NOTE);
    }
    s32 isDungeonItemWarp() const { return isDungeonItem(OOCCOO_NOTE); }
    void onStageLife() { onDungeonItem(STAGE_LIFE); }

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
    void onEventBit(u16 i_no);
    void offEventBit(u16 i_no);
    int isEventBit(u16 i_no) const;
    void setEventReg(u16 i_reg, u8 i_no);
    u8 getEventReg(u16 i_reg) const;

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
    void onVisitedRoom(int i_no);
    void offVisitedRoom(int i_no);
    BOOL isVisitedRoom(int i_no);

private:
    /* 0x0 */ u32 mVisitedRoom[2];
};  // Size: 0x8

STATIC_ASSERT(sizeof(dSv_memory2_c) == 8);

class dSv_danBit_c {
public:
    bool init(s8 i_stage);
    void onSwitch(int i_no);
    void offSwitch(int i_no);
    BOOL isSwitch(int i_no) const;
    BOOL revSwitch(int i_no);
    void onItem(int i_no);
    BOOL isItem(int i_no) const;

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
    void onSwitch(int i_no);
    void offSwitch(int i_no);
    BOOL isSwitch(int i_no) const;
    BOOL revSwitch(int i_no);
    void onOneSwitch(int i_no);
    void offOneSwitch(int i_no);
    BOOL isOneSwitch(int i_no) const;
    BOOL revOneSwitch(int i_no);
    void onItem(int i_no);
    BOOL isItem(int i_no) const;
    void onOneItem(int i_no);
    BOOL isOneItem(int i_no) const;

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
    void on(int i_id);
    void off(int i_id);
    BOOL is(int i_id) const;

    static const int ACTOR_MAX = 0xFFFF;

private:
    /* 0x00 */ u32 mActorFlags[4];
};  // Size: 0x10

class dSv_zone_c {
public:
    dSv_zone_c() { mRoomNo = -1; }
    void init(int i_roomNo);

    dSv_zoneBit_c& getZoneBit() { return mBit; }
    const dSv_zoneBit_c& getBit() const { return mBit; }
    dSv_zoneActor_c& getActor() { return mActor; }
    const dSv_zoneActor_c& getActor() const { return mActor; }

    s8& getRoomNo() { return mRoomNo; }
    void reset() { mRoomNo = -1; }

private:
    /* 0x00 */ s8 mRoomNo;
    /* 0x01 */ u8 unk1;
    /* 0x02 */ dSv_zoneBit_c mBit;
    /* 0x10 */ dSv_zoneActor_c mActor;
};  // Size: 0x20

STATIC_ASSERT(sizeof(dSv_zone_c) == 0x20);

class dSv_restart_c {
public:
    void setRoom(const cXyz& i_position, s16 i_angleY, s8 i_roomNo);

    void setRoomParam(u32 param) { mRoomParam = param; }
    void setStartPoint(s16 point) { mStartPoint = point; }
    void setLastSceneInfo(f32 speed, u32 mode, s16 angle) {
        mLastSpeedF = speed;
        mLastMode = mode;
        mLastAngleY = angle;
    }

    s16 getStartPoint() const { return mStartPoint; }
    u32 getLastMode() const { return mLastMode; }
    s8 getRoomNo() const { return mRoomNo; }
    u32 getRoomParam() const { return mRoomParam; }
    cXyz& getRoomPos() { return mRoomPos; }
    s16 getRoomAngleY() const { return mRoomAngleY; }

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

    void set(const cXyz& i_position, s16 i_angleY, s8, u32 i_param);

    u32 getParam() const { return mParam; }
    cXyz& getPos() { return mPosition; }
    s16 getAngleY() const { return mAngleY; }

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
    dSv_save_c() {}

    void init();
    dSv_memory2_c* getSave2(int i_stage2No);

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
    void getSave(int i_stageNo);
    void putSave(int i_stageNo);
    void initZone();
    u32 createZone(int i_roomNo);
    void onSwitch(int i_no, int i_roomNo);
    void offSwitch(int i_no, int i_roomNo);
    BOOL isSwitch(int i_no, int i_roomNo) const;
    BOOL revSwitch(int i_no, int i_roomNo);
    void onItem(int i_no, int i_roomNo);
    BOOL isItem(int i_no, int i_roomNo) const;
    void onActor(int i_no, int i_roomNo);
    void offActor(int i_no, int i_roomNo);
    BOOL isActor(int i_no, int i_roomNo) const;
    int memory_to_card(char* card_ptr, int dataNum);
    int card_to_memory(char* card_ptr, int dataNum);
    int initdata_to_card(char* card_ptr, int dataNum);

    dSv_save_c& getSavedata() { return mSavedata; }
    dSv_memory_c& getMemory() { return mMemory; }
    dSv_zone_c* getZones() { return mZone; }
    dSv_zone_c& getZone(int id) { return mZone[id]; }
    dSv_player_c& getPlayer() { return mSavedata.getPlayer(); }
    dSv_event_c& getTmp() { return mTmp; }
    dSv_restart_c& getRestart() { return mRestart; }
    dSv_turnRestart_c& getTurnRestart() { return mTurnRestart; }
    dSv_event_c& getEvent() { return mSavedata.getEvent(); }
    dSv_danBit_c& getDan() { return mDan; }
    s64 getStartTime() const { return mStartTime; }
    s64 getSaveTotalTime() const { return mSaveTotalTime; }
    void initDan(s8 i_stage) { mDan.init(i_stage); }
    u8 getDataNum() const { return mDataNum; }
    void removeZone(int zoneNo) { mZone[zoneNo].reset(); }

    static const int MEMORY_SWITCH = 0x80;
    static const int DAN_SWITCH = 0x40;
    static const int ZONE_SWITCH = 0x20;
    static const int ONEZONE_SWITCH = 0x10;

    static const int MEMORY_ITEM = 0x80;
    static const int DAN_ITEM = 0x20;
    static const int ZONE_ITEM = 0x20;
    static const int ONEZONE_ITEM = 0x10;

    static const int ZONE_MAX = 0x20;

private:
    /* 0x000 */ dSv_save_c mSavedata;
    /* 0x958 */ dSv_memory_c mMemory;
    /* 0x978 */ dSv_danBit_c mDan;
    /* 0x9B4 */ dSv_zone_c mZone[ZONE_MAX];
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

class dSv_event_flag_c {
public:
    static u16 saveBitLabels[822];
};

class dSv_event_tmp_flag_c {
public:
    static u16 const tempBitLabels[185];
};

#endif /* D_SAVE_D_SAVE_H */
