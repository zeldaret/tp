#ifndef D_SAVE_D_SAVE_H
#define D_SAVE_D_SAVE_H

#include "string.h"
#include "SSystem/SComponent/c_xyz.h"
#include "dolphin/os/OSTime.h"
#include "global.h"

#define DEFAULT_SELECT_ITEM_INDEX 0
#define MAX_SELECT_ITEM 4
#define SELECT_ITEM_NUM 2
#define MAX_EQUIPMENT 6
#define MAX_EVENTS 256
#define MAX_ITEM_SLOTS 24
#define LIGHT_DROP_STAGE 4
#define LETTER_INFO_BIT 64
#define MAX_INSECT_NUM 24
#define MAX_VISIBLE_HEARTPIECES 4
#define MAX_POH_NUM 100
#define BOMB_BAG_MAX 3
#define BOTTLE_MAX 4
#define TBOX_MAX 64
#define DSV_MEMBIT_ENUM_MAX 8
#define ITEM_MAX_DAN 128
#define SWITCH_ZONE_MAX 0x20
#define SWITCH_ONE_ZONE_MAX 0x10
#define ITEM_ZONE_MAX 0x20
#define ITEM_ONE_ZONE_MAX 0x10
#define QUEST_LOG_SIZE 0xA94
#define QUIVER_MAX 30
#define BIG_QUIVER_MAX 60
#define GIANT_QUIVER_MAX 100
#define WALLET_MAX 300
#define BIG_WALLET_MAX 600
#define GIANT_WALLET_MAX 1000
#define MAX_FINDABLE_FISHES 6

enum ButtonIndexes {
    /* 0 */ A_BUTTON,
    /* 1 */ B_BUTTON,
};

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
    /* 0x04 */ SLOT_4, // Bow Slot
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
    /* 0x0000 */ HEART,
    /* 0x0001 */ GREEN_RUPEE,
    /* 0x0002 */ BLUE_RUPEE,
    /* 0x0003 */ YELLOW_RUPEE,
    /* 0x0004 */ RED_RUPEE,
    /* 0x0005 */ PURPLE_RUPEE,
    /* 0x0006 */ ORANGE_RUPEE,
    /* 0x0007 */ SILVER_RUPEE,
    /* 0x0008 */ S_MAGIC,
    /* 0x0009 */ L_MAGIC,
    /* 0x000A */ BOMB_5,
    /* 0x000B */ BOMB_10,
    /* 0x000C */ BOMB_20,
    /* 0x000D */ BOMB_30,
    /* 0x000E */ ARROW_10,
    /* 0x000F */ ARROW_20,
    /* 0x0010 */ ARROW_30,
    /* 0x0011 */ ARROW_1,
    /* 0x0012 */ PACHINKO_SHOT,
    /* 0x0013 */ noentry1,
    /* 0x0014 */ noentry2,
    /* 0x0015 */ noentry3,
    /* 0x0016 */ WATER_BOMB_5,
    /* 0x0017 */ WATER_BOMB_10,
    /* 0x0018 */ WATER_BOMB_20,
    /* 0x0019 */ WATER_BOMB_30,
    /* 0x001A */ BOMB_INSECT_5,
    /* 0x001B */ BOMB_INSECT_10,
    /* 0x001C */ BOMB_INSECT_20,
    /* 0x001D */ BOMB_INSECT_30,
    /* 0x001E */ RECOVERY_FAILY,
    /* 0x001F */ TRIPLE_HEART,
    /* 0x0020 */ SMALL_KEY,
    /* 0x0021 */ KAKERA_HEART,
    /* 0x0022 */ UTAWA_HEART,
    /* 0x0023 */ MAP,
    /* 0x0024 */ COMPUS,
    /* 0x0025 */ DUNGEON_EXIT,
    /* 0x0026 */ BOSS_KEY,
    /* 0x0027 */ DUNGEON_BACK,
    /* 0x0028 */ SWORD,
    /* 0x0029 */ MASTER_SWORD,
    /* 0x002A */ WOOD_SHIELD,
    /* 0x002B */ SHIELD,
    /* 0x002C */ HYLIA_SHIELD,
    /* 0x002D */ TKS_LETTER,
    /* 0x002E */ WEAR_CASUAL,
    /* 0x002F */ WEAR_KOKIRI,
    /* 0x0030 */ ARMOR,
    /* 0x0031 */ WEAR_ZORA,
    /* 0x0032 */ MAGIC_LV1,
    /* 0x0033 */ DUNGEON_EXIT_2,
    /* 0x0034 */ WALLET_LV1,
    /* 0x0035 */ WALLET_LV2,
    /* 0x0036 */ WALLET_LV3,
    /* 0x0037 */ noentry4,
    /* 0x0038 */ noentry5,
    /* 0x0039 */ noentry6,
    /* 0x003A */ noentry7,
    /* 0x003B */ noentry8,
    /* 0x003C */ noentry9,
    /* 0x003D */ ZORAS_JEWEL,
    /* 0x003E */ HAWK_EYE,
    /* 0x003F */ WOOD_STICK,
    /* 0x0040 */ BOOMERANG,
    /* 0x0041 */ SPINNER,
    /* 0x0042 */ IRONBALL,
    /* 0x0043 */ BOW,
    /* 0x0044 */ HOOKSHOT,
    /* 0x0045 */ HVY_BOOTS,
    /* 0x0046 */ COPY_ROD,
    /* 0x0047 */ W_HOOKSHOT,
    /* 0x0048 */ KANTERA,
    /* 0x0049 */ LIGHT_SWORD,
    /* 0x004A */ FISHING_ROD_1,
    /* 0x004B */ PACHINKO,
    /* 0x004C */ COPY_ROD_2,
    /* 0x004D */ noentry10,
    /* 0x004E */ noentry11,
    /* 0x004F */ BOMB_BAG_LV2,
    /* 0x0050 */ BOMB_BAG_LV1,
    /* 0x0051 */ BOMB_IN_BAG,
    /* 0x0052 */ noentry12,
    /* 0x0053 */ LIGHT_ARROW,
    /* 0x0054 */ ARROW_LV1,
    /* 0x0055 */ ARROW_LV2,
    /* 0x0056 */ ARROW_LV3,
    /* 0x0057 */ noentry13,
    /* 0x0058 */ LURE_ROD,
    /* 0x0059 */ BOMB_ARROW,
    /* 0x005A */ HAWK_ARROW,
    /* 0x005B */ BEE_ROD,
    /* 0x005C */ JEWEL_ROD,
    /* 0x005D */ WORM_ROD,
    /* 0x005E */ JEWEL_BEE_ROD,
    /* 0x005F */ JEWEL_WORM_ROD,
    /* 0x0060 */ EMPTY_BOTTLE,
    /* 0x0061 */ RED_BOTTLE,
    /* 0x0062 */ GREEN_BOTTLE,
    /* 0x0063 */ BLUE_BOTTLE,
    /* 0x0064 */ MILK_BOTTLE,
    /* 0x0065 */ HALF_MILK_BOTTLE,
    /* 0x0066 */ OIL_BOTTLE,
    /* 0x0067 */ WATER_BOTTLE,
    /* 0x0068 */ OIL_BOTTLE_2,
    /* 0x0069 */ RED_BOTTLE_2,
    /* 0x006A */ UGLY_SOUP,
    /* 0x006B */ HOT_SPRING,
    /* 0x006C */ FAIRY,
    /* 0x006D */ HOT_SPRING_2,
    /* 0x006E */ OIL2,
    /* 0x006F */ OIL,
    /* 0x0070 */ NORMAL_BOMB,
    /* 0x0071 */ WATER_BOMB,
    /* 0x0072 */ POKE_BOMB,
    /* 0x0073 */ FAIRY_DROP,
    /* 0x0074 */ WORM,
    /* 0x0075 */ DROP_BOTTLE,
    /* 0x0076 */ BEE_CHILD,
    /* 0x0077 */ CHUCHU_RARE,
    /* 0x0078 */ CHUCHU_RED,
    /* 0x0079 */ CHUCHU_BLUE,
    /* 0x007A */ CHUCHU_GREEN,
    /* 0x007B */ CHUCHU_YELLOW,
    /* 0x007C */ CHUCHU_PURPLE,
    /* 0x007D */ LV1_SOUP,
    /* 0x007E */ LV2_SOUP,
    /* 0x007F */ LV3_SOUP,
    /* 0x0080 */ LETTER,
    /* 0x0081 */ BILL,
    /* 0x0082 */ WOOD_STATUE,
    /* 0x0083 */ IRIAS_PENDANT,
    /* 0x0084 */ HORSE_FLUTE,
    /* 0x0085 */ noentry14,
    /* 0x0086 */ noentry15,
    /* 0x0087 */ noentry16,
    /* 0x0088 */ noentry17,
    /* 0x0089 */ noentry18,
    /* 0x008A */ noentry19,
    /* 0x008B */ noentry20,
    /* 0x008C */ noentry21,
    /* 0x008D */ noentry22,
    /* 0x008E */ noentry23,
    /* 0x008F */ noentry24,
    /* 0x0090 */ RAFRELS_MEMO,
    /* 0x0091 */ ASHS_SCRIBBLING,
    /* 0x0092 */ noentry25,
    /* 0x0093 */ noentry26,
    /* 0x0094 */ noentry27,
    /* 0x0095 */ noentry28,
    /* 0x0096 */ noentry29,
    /* 0x0097 */ noentry30,
    /* 0x0098 */ noentry31,
    /* 0x0099 */ noentry32,
    /* 0x009A */ noentry33,
    /* 0x009B */ noentry34,
    /* 0x009C */ CHUCHU_YELLOW2,
    /* 0x009D */ OIL_BOTTLE3,
    /* 0x009E */ SHOP_BEE_CHILD,
    /* 0x009F */ CHUCHU_BLACK,
    /* 0x00A0 */ LIGHT_DROP,
    /* 0x00A1 */ DROP_CONTAINER,
    /* 0x00A2 */ DROP_CONTAINER02,
    /* 0x00A3 */ DROP_CONTAINER03,
    /* 0x00A4 */ FILLED_CONTAINER,
    /* 0x00A5 */ MIRROR_PIECE_2,
    /* 0x00A6 */ MIRROR_PIECE_3,
    /* 0x00A7 */ MIRROR_PIECE_4,
    /* 0x00A8 */ noentry35,
    /* 0x00A9 */ noentry36,
    /* 0x00AA */ noentry37,
    /* 0x00AB */ noentry38,
    /* 0x00AC */ noentry39,
    /* 0x00AD */ noentry40,
    /* 0x00AE */ noentry41,
    /* 0x00AF */ noentry42,
    /* 0x00B0 */ SMELL_YELIA_POUCH,
    /* 0x00B1 */ SMELL_PUMPKIN,
    /* 0x00B2 */ SMELL_POH,
    /* 0x00B3 */ SMELL_FISH,
    /* 0x00B4 */ SMELL_CHILDREN,
    /* 0x00B5 */ SMELL_MEDICINE,
    /* 0x00B6 */ noentry43,
    /* 0x00B7 */ noentry44,
    /* 0x00B8 */ noentry45,
    /* 0x00B9 */ noentry46,
    /* 0x00BA */ noentry47,
    /* 0x00BB */ noentry48,
    /* 0x00BC */ noentry49,
    /* 0x00BD */ noentry50,
    /* 0x00BE */ noentry51,
    /* 0x00BF */ noentry52,
    /* 0x00C0 */ M_BEETLE,
    /* 0x00C1 */ F_BEETLE,
    /* 0x00C2 */ M_BUTTERFLY,
    /* 0x00C3 */ F_BUTTERFLY,
    /* 0x00C4 */ M_STAG_BEETLE,
    /* 0x00C5 */ F_STAG_BEETLE,
    /* 0x00C6 */ M_GRASSHOPPER,
    /* 0x00C7 */ F_GRASSHOPPER,
    /* 0x00C8 */ M_NANAFUSHI,
    /* 0x00C9 */ F_NANAFUSHI,
    /* 0x00CA */ M_DANGOMUSHI,
    /* 0x00CB */ F_DANGOMUSHI,
    /* 0x00CC */ M_MANTIS,
    /* 0x00CD */ F_MANTIS,
    /* 0x00CE */ M_LADYBUG,
    /* 0x00CF */ F_LADYBUG,
    /* 0x00D0 */ M_SNAIL,
    /* 0x00D1 */ F_SNAIL,
    /* 0x00D2 */ M_DRAGONFLY,
    /* 0x00D3 */ F_DRAGONFLY,
    /* 0x00D4 */ M_ANT,
    /* 0x00D5 */ F_ANT,
    /* 0x00D6 */ M_MAYFLY,
    /* 0x00D7 */ F_MAYFLY,
    /* 0x00D8 */ noentry53,
    /* 0x00D9 */ noentry54,
    /* 0x00DA */ noentry55,
    /* 0x00DB */ noentry56,
    /* 0x00DC */ noentry57,
    /* 0x00DD */ noentry58,
    /* 0x00DE */ noentry59,
    /* 0x00DF */ noentry60,
    /* 0x00E0 */ POU_SPIRIT,
    /* 0x00E1 */ noentry61,
    /* 0x00E2 */ noentry62,
    /* 0x00E3 */ noentry63,
    /* 0x00E4 */ noentry64,
    /* 0x00E5 */ noentry65,
    /* 0x00E6 */ noentry66,
    /* 0x00E7 */ noentry67,
    /* 0x00E8 */ noentry68,
    /* 0x00E9 */ ANCIENT_DOCUMENT,
    /* 0x00EA */ AIR_LETTER,
    /* 0x00EB */ ANCIENT_DOCUMENT2,
    /* 0x00EC */ LV7_DUNGEON_EXIT,
    /* 0x00ED */ LINKS_SAVINGS,
    /* 0x00EE */ SMALL_KEY2,
    /* 0x00EF */ POU_FIRE1,
    /* 0x00F0 */ POU_FIRE2,
    /* 0x00F1 */ POU_FIRE3,
    /* 0x00F2 */ POU_FIRE4,
    /* 0x00F3 */ BOSSRIDER_KEY,
    /* 0x00F4 */ TOMATO_PUREE,
    /* 0x00F5 */ TASTE,
    /* 0x00F6 */ LV5_BOSS_KEY,
    /* 0x00F7 */ SURFBOARD,
    /* 0x00F8 */ KANTERA2,
    /* 0x00F9 */ L2_KEY_PIECES1,
    /* 0x00FA */ L2_KEY_PIECES2,
    /* 0x00FB */ L2_KEY_PIECES3,
    /* 0x00FC */ KEY_OF_CARAVAN,
    /* 0x00FD */ LV2_BOSS_KEY,
    /* 0x00FE */ KEY_OF_FILONE,
    /* 0x00FF */ NO_ITEM,
    /* 0x0100 */ noentry69,
    /* 0x0101 */ noentry70,
    /* 0x0102 */ noentry71,
    /* 0x0103 */ EQUIP_SWORD,
    /* 0x0104 */ noentry72,
    /* 0x0105 */ noentry73,
    /* 0x0106 */ noentry74,
    /* 0x0107 */ noentry75,
    /* 0x0108 */ noentry76,
    /* 0x0109 */ noentry77,
    /* 0x010A */ noentry78,
    /* 0x010B */ noentry79,
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
    void setSelectItemIndex(int i_no, u8 i_slotNo);
    u8 getSelectItemIndex(int i_no) const;
    void setMixItemIndex(int i_no, u8 i_slotNo);
    u8 getMixItemIndex(int i_no) const;
    u16 getRupeeMax() const;
    int isMagicFlag(u8 i_magic) const;

    u16 getMaxLife() const { return mMaxLife; }
    u16 getLife() const { return mLife; }
    u16 getRupee() const { return mRupee; }
    u16 getOil() const { return mOil; }
    u16 getMaxOil() const { return mMaxOil; }
    u8 getMagic() const { return mMagic; }
    u8 getMaxMagic() const { return mMaxMagic; }
    u8 getSelectEquip(int item) const { return mSelectEquip[item]; }
    u8 getTransformStatus() const { return mTransformStatus; }
    u8 getWalletSize() const { return mWalletSize; }
    void setOil(u16 i_oil) { mOil = i_oil; }
    void setMaxOil(u16 i_maxOil) { mMaxOil = i_maxOil; }
    void setWalletSize(u8 i_size) { mWalletSize = i_size; }
    void setMagic(u8 i_magic) { mMagic = i_magic; }
    void setMaxMagic(u8 i_maxMagic) { mMaxMagic = i_maxMagic; }
    void setRupee(u16 i_rupees) { mRupee = i_rupees; }
    void setLife(u16 i_life) { mLife = i_life; }
    void setMaxLife(u8 i_maxLife) { mMaxLife = i_maxLife; }
    void setSelectEquip(int i_equipId, u8 i_itemNo) { mSelectEquip[i_equipId] = i_itemNo; }
    void setTransformStatus(u8 i_status) { mTransformStatus = i_status; }

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

    void setDateIpl(s64 i_time) { mDateIpl = i_time; }
    u16 getDate() const { return mDate; }
    f32 getTime() const { return mTime; }
    void setDate(u16 i_date) { mDate = i_date; }
    void setTime(f32 i_time) { mTime = i_time; }
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
    void offFieldDataExistFlag() { mFieldDataExistFlag = false; }
    void onFieldDataExistFlag() { mFieldDataExistFlag = true; }
    cXyz& getPos() { return mPos; }
    u8 getRegionNo() const { return mRegionNo; }

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
    s8 getWarpAcceptStage() { return mWarpAcceptStage; }
    void resetWarpAcceptStage() { mWarpAcceptStage = -1; }
    void setWarpAcceptStage(s8 accept) { mWarpAcceptStage = accept; }

private:
    /* 0x00 */ cXyz mPos;
    /* 0x0C */ s16 mAngleY;
    /* 0x0E */ char mName[8];
    /* 0x16 */ u8 mSpawnId;
    /* 0x17 */ s8 mRoomNo;
    /* 0x18 */ s8 mWarpAcceptStage;
    /* 0x19 */ u8 unk25[3];
};  // Size: 0x1C

class dSv_player_item_c {
public:
    void init();
    void setItem(int i_slotNo, u8 i_itemNo);
    u8 getItem(int i_slotNo, bool i_checkCombo) const;
    void setLineUpItem();
    u8 getLineUpItem(int i_slotNo) const;
    void setBottleItemIn(u8 curItemIn, u8 newItemIn);
    void setEmptyBottleItemIn(u8 i_itemNo);
    void setEmptyBottle();
    void setEmptyBottle(u8 i_itemNo);
    void setEquipBottleItemIn(u8 curItemIn, u8 newItemIn);
    void setEquipBottleItemEmpty(u8 curItemIn);
    u8 checkBottle(u8 i_itemNo);
    int checkInsectBottle();
    u8 checkEmptyBottle();
    void setBombBagItemIn(u8 i_curBomb, u8 i_newBomb, bool i_setNum);
    void setBombBagItemIn(u8 i_curBomb, u8 i_newBomb, u8 i_bombNum, bool i_setNum);
    void setEmptyBombBagItemIn(u8 i_newBomb, bool i_setNum);
    void setEmptyBombBagItemIn(u8 i_newBomb, u8 i_bombNum, bool i_setNum);
    void setEmptyBombBag();
    void setEmptyBombBag(u8 i_newBomb, u8 i_bombNum);
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
    void setBombNum(u8 i_bagIdx, u8 i_bombNum);
    u8 getBombNum(u8 i_bagIdx) const;
    void setBottleNum(u8 i_bottleIdx, u8 i_bottleNum);
    u8 addBottleNum(u8 i_bottleIdx, s16 i_num);
    u8 getBottleNum(u8 i_bottleIdx) const;

    u8 getArrowNum() const { return mArrowNum; }
    void setArrowNum(u8 i_num) { mArrowNum = i_num; }
    u8 getPachinkoNum() const { return mPachinkoNum; }
    void setPachinkoNum(u8 i_num) { mPachinkoNum = i_num; }

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
    void setBombNum(u8 i_bombType, u8 i_maxNum);
    u8 getBombNum(u8 i_bombType) const;

    void setArrowNum(u8 i_maxNum) { mItemMax[ARROW_MAX] = i_maxNum; }
    u8 getArrowNum() const { return mItemMax[ARROW_MAX]; }

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
    void setLightDropNum(u8 i_nowLevel, u8 i_dropNum);
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
    u8 getGetNumber(int i_no) { return mGetNumber[i_no]; }
    void setGetNumber(int i_no, u8 i_value) { mGetNumber[i_no] = i_value; }

private:
    /* 0x00 */ u32 mLetterGetFlags[2];
    /* 0x08 */ u32 mLetterReadFlags[2];
    /* 0x10 */ u8 mGetNumber[64];
};  // Size: 0x50

class dSv_fishing_info_c {
public:
    void init();
    void addFishCount(u8 i_fishIndex);
    u16 getFishCount(u8 i_fishIndex) const { return mFishCount[i_fishIndex]; }
    u8 getMaxSize(s32 i_sizeIndex) { return mMaxSize[i_sizeIndex]; }
    void setMaxSize(s32 i_sizeIndex, u8 i_size) { mMaxSize[i_sizeIndex] = i_size; }

private:
    /* 0x00 */ u16 mFishCount[16];
    /* 0x20 */ u8 mMaxSize[16];
};  // Size: 0x34

class dSv_player_info_c {
public:
    void init();
    char* getLinkName() { return mPlayerName; }
    char* getHorseName() { return mHorseName; }
    void setPlayerName(const char* i_name) { strcpy((char*)mPlayerName, i_name); }
    void setHorseName(const char* i_name) { strcpy((char*)mHorseName, i_name); }
    void setTotalTime(s64 i_time) { mTotalTime = i_time; }
    s64 getTotalTime() const { return mTotalTime; }

    void addDeathCount() {
        if (mDeathCount < 0xFFFF) {
            mDeathCount++;
        }
    }

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
    dSv_fishing_info_c& getFishingInfo() { return mFishingInfo; }
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
    void setKeyNum(u8 i_keyNum) { mKeyNum = i_keyNum; }
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
    s32 isStageBossEnemy() const { return isDungeonItem(STAGE_BOSS_ENEMY); }
    s32 isStageBossEnemy2() const { return isDungeonItem(STAGE_BOSS_ENEMY_2); }
    s32 isStageLife() const { return isDungeonItem(STAGE_LIFE); }
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

    void* getPEventBit() { return (void*)mEvent; }

private:
    /* 0x0 */ u8 mEvent[256];
};  // Size: 0x100

class dSv_MiniGame_c {
public:
    void init();

    u32 getRaceGameTime() const { return mRaceGameTime; }
    u32 getBalloonScore() const { return mBalloonScore; }

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
    bool init(s8 i_stageNo);
    void onSwitch(int i_no);
    void offSwitch(int i_no);
    BOOL isSwitch(int i_no) const;
    BOOL revSwitch(int i_no);
    void onItem(int i_no);
    BOOL isItem(int i_no) const;

    void reset() { mStageNo = -1; }

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

    dSv_zoneBit_c& getBit() { return mBit; }
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
    dSv_MiniGame_c& getMiniGame() { return mMiniGame; }
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
    dSv_MiniGame_c& getMiniGame() { return mSavedata.getMiniGame(); }
    s64 getStartTime() const { return mStartTime; }
    s64 getSaveTotalTime() const { return mSaveTotalTime; }
    void setStartTime(s64 time) { mStartTime = time; }
    void setSaveTotalTime(s64 time) { mSaveTotalTime = time; }
    void initDan(s8 i_stage) { mDan.init(i_stage); }
    void resetDan() { mDan.reset(); }
    u8 getDataNum() const { return mDataNum; }
    void setDataNum(u8 num) { mDataNum = num; }
    void removeZone(int zoneNo) { mZone[zoneNo].reset(); }
    u8 getNoFile() const { return mNoFile; }
    void setNoFile(u8 file) { mNoFile = file; }
    u8 getNewFile() const { return mNewFile; }
    void setNewFile(u8 file) { mNewFile = file; }

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
    enum {
        #include "d/save/d_save_bit_labels.inc"
    };

    static u16 saveBitLabels[822];
};

class dSv_event_tmp_flag_c {
public:
    enum {
        #include "d/save/d_save_temp_bit_labels.inc"
    };
    
    static u16 const tempBitLabels[185];
};

#endif /* D_SAVE_D_SAVE_H */
