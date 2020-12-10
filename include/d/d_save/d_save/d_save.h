#ifndef D_SAVE_H_
#define D_SAVE_H_

#include "dolphin/types.h"
#include "global.h"

#define DEFAULT_SELECT_ITEM_INDEX 0
#define MAX_SELECT_ITEM 3
#define MAX_EVENTS 256

static const int MAX_ITEM_SLOTS = 24;
static const int ITEM_XY_MAX_DUMMY = 8;
static const int LIGHT_DROP_STAGE = 4;
static const int LETTER_INFO_BIT = 64;

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
    AIR_LETTER = 234,
    ANCIENT_DOCUMENT = 233,
    ANCIENT_DOCUMENT2 = 235,
    ARMOR = 48,
    ARROW_1 = 17,
    ARROW_10 = 14,
    ARROW_20 = 15,
    ARROW_30 = 16,
    ARROW_LV1 = 84,
    ARROW_LV2 = 85,
    ARROW_LV3 = 86,
    ASHS_SCRIBBLING = 145,
    BEE_CHILD = 118,
    BEE_ROD = 91,
    BILL = 129,
    BLUE_BOTTLE = 99,
    BLUE_RUPEE = 2,
    BOMB_10 = 11,
    BOMB_20 = 12,
    BOMB_30 = 13,
    BOMB_5 = 10,
    BOMB_ARROW = 89,
    BOMB_BAG_LV1 = 80,
    BOMB_BAG_LV2 = 79,
    BOMB_INSECT_10 = 27,
    BOMB_INSECT_20 = 28,
    BOMB_INSECT_30 = 29,
    BOMB_INSECT_5 = 26,
    BOMB_IN_BAG = 81,
    BOOMERANG = 64,
    BOSSRIDER_KEY = 243,
    BOSS_KEY = 38,
    BOW = 67,
    CHUCHU_BLACK = 159,
    CHUCHU_BLUE = 121,
    CHUCHU_GREEN = 122,
    CHUCHU_PURPLE = 124,
    CHUCHU_RARE = 119,
    CHUCHU_RED = 120,
    CHUCHU_YELLOW = 123,
    CHUCHU_YELLOW2 = 156,
    COMPUS = 36,
    COPY_ROD = 70,
    COPY_ROD_2 = 76,
    DROP_BOTTLE = 117,
    DROP_CONTAINER = 161,
    DROP_CONTAINER02 = 162,
    DROP_CONTAINER03 = 163,
    DUNGEON_BACK = 39,
    DUNGEON_EXIT = 37,
    DUNGEON_EXIT_2 = 51,
    EMPTY_BOTTLE = 96,
    FAIRY = 108,
    FAIRY_DROP = 115,
    FILLED_CONTAINER = 164,
    FISHING_ROD_1 = 74,
    F_ANT = 213,
    F_BEETLE = 193,
    F_BUTTERFLY = 195,
    F_DANGOMUSHI = 203,
    F_DRAGONFLY = 211,
    F_GRASSHOPPER = 199,
    F_LADYBUG = 207,
    F_MANTIS = 205,
    F_MAYFLY = 215,
    F_NANAFUSHI = 201,
    F_SNAIL = 209,
    F_STAG_BEETLE = 197,
    GREEN_BOTTLE = 98,
    GREEN_RUPEE = 1,
    HALF_MILK_BOTTLE = 101,
    HAWK_ARROW = 90,
    HAWK_EYE = 62,
    HEART = 0,
    HOOKSHOT = 68,
    HORSE_FLUTE = 132,
    HOT_SPRING = 107,
    HOT_SPRING_2 = 109,
    HVY_BOOTS = 69,
    HYLIA_SHIELD = 44,
    IRIAS_PENDANT = 131,
    IRONBALL = 66,
    JEWEL_BEE_ROD = 94,
    JEWEL_ROD = 92,
    JEWEL_WORM_ROD = 95,
    KAKERA_HEART = 33,
    KANTERA = 72,
    KANTERA2 = 248,
    KEY_OF_CARAVAN = 252,
    KEY_OF_FILONE = 254,
    L2_KEY_PIECES1 = 249,
    L2_KEY_PIECES2 = 250,
    L2_KEY_PIECES3 = 251,
    LETTER = 128,
    LIGHT_ARROW = 83,
    LIGHT_DROP = 160,
    LIGHT_SWORD = 73,
    LINKS_SAVINGS = 237,
    LURE_ROD = 88,
    LV1_SOUP = 125,
    LV2_BOSS_KEY = 253,
    LV2_SOUP = 126,
    LV3_SOUP = 127,
    LV5_BOSS_KEY = 246,
    LV7_DUNGEON_EXIT = 236,
    L_MAGIC = 9,
    MAGIC_LV1 = 50,
    MAP = 35,
    MASTER_SWORD = 41,
    MILK_BOTTLE = 100,
    MIRROR_PIECE_2 = 165,
    MIRROR_PIECE_3 = 166,
    MIRROR_PIECE_4 = 167,
    M_ANT = 212,
    M_BEETLE = 192,
    M_BUTTERFLY = 194,
    M_DANGOMUSHI = 202,
    M_DRAGONFLY = 210,
    M_GRASSHOPPER = 198,
    M_LADYBUG = 206,
    M_MANTIS = 204,
    M_MAYFLY = 214,
    M_NANAFUSHI = 200,
    M_SNAIL = 208,
    M_STAG_BEETLE = 196,
    NORMAL_BOMB = 112,
    NO_ITEM = 255,
    OIL = 111,
    OIL2 = 110,
    OIL_BOTTLE = 102,
    OIL_BOTTLE3 = 157,
    OIL_BOTTLE_2 = 104,
    ORANGE_RUPEE = 6,
    PACHINKO = 75,
    PACHINKO_SHOT = 18,
    POKE_BOMB = 114,
    POU_FIRE1 = 239,
    POU_FIRE2 = 240,
    POU_FIRE3 = 241,
    POU_FIRE4 = 242,
    POU_SPIRIT = 224,
    PURPLE_RUPEE = 5,
    RAFRELS_MEMO = 144,
    RECOVERY_FAILY = 30,
    RED_BOTTLE = 97,
    RED_BOTTLE_2 = 105,
    RED_RUPEE = 4,
    SHIELD = 43,
    SHOP_BEE_CHILD = 158,
    SILVER_RUPEE = 7,
    SMALL_KEY = 32,
    SMALL_KEY2 = 238,
    SMELL_CHILDREN = 180,
    SMELL_FISH = 179,
    SMELL_MEDICINE = 181,
    SMELL_POH = 178,
    SMELL_PUMPKIN = 177,
    SMELL_YELIA_POUCH = 176,
    SPINNER = 65,
    SURFBOARD = 247,
    SWORD = 40,
    S_MAGIC = 8,
    TASTE = 245,
    TKS_LETTER = 45,
    TOMATO_PUREE = 244,
    TRIPLE_HEART = 31,
    UGLY_SOUP = 106,
    UTAWA_HEART = 34,
    WALLET_LV1 = 52,
    WALLET_LV2 = 53,
    WALLET_LV3 = 54,
    WATER_BOMB = 113,
    WATER_BOMB_10 = 23,
    WATER_BOMB_20 = 24,
    WATER_BOMB_30 = 25,
    WATER_BOMB_5 = 22,
    WATER_BOTTLE = 103,
    WEARS_CASUAL = 46,
    WEAR_KOKIRI = 47,
    WEAR_ZORA = 49,
    WOOD_SHIELD = 42,
    WOOD_STATUE = 130,
    WOOD_STICK = 63,
    WORM = 116,
    WORM_ROD = 93,
    W_HOOKSHOT = 71,
    YELLOW_RUPEE = 3,
    ZORAS_JEWEL = 61,
    noentry1 = 19,
    noentry10 = 77,
    noentry11 = 78,
    noentry12 = 82,
    noentry13 = 87,
    noentry14 = 133,
    noentry15 = 134,
    noentry16 = 135,
    noentry17 = 136,
    noentry18 = 137,
    noentry19 = 138,
    noentry2 = 20,
    noentry20 = 139,
    noentry21 = 140,
    noentry22 = 141,
    noentry23 = 142,
    noentry24 = 143,
    noentry25 = 146,
    noentry26 = 147,
    noentry27 = 148,
    noentry28 = 149,
    noentry29 = 150,
    noentry3 = 21,
    noentry30 = 151,
    noentry31 = 152,
    noentry32 = 153,
    noentry33 = 154,
    noentry34 = 155,
    noentry35 = 168,
    noentry36 = 169,
    noentry37 = 170,
    noentry38 = 171,
    noentry39 = 172,
    noentry4 = 55,
    noentry40 = 173,
    noentry41 = 174,
    noentry42 = 175,
    noentry43 = 182,
    noentry44 = 183,
    noentry45 = 184,
    noentry46 = 185,
    noentry47 = 186,
    noentry48 = 187,
    noentry49 = 188,
    noentry5 = 56,
    noentry50 = 189,
    noentry51 = 190,
    noentry52 = 191,
    noentry53 = 216,
    noentry54 = 217,
    noentry55 = 218,
    noentry56 = 219,
    noentry57 = 220,
    noentry58 = 221,
    noentry59 = 222,
    noentry6 = 57,
    noentry60 = 223,
    noentry61 = 225,
    noentry62 = 226,
    noentry63 = 227,
    noentry64 = 228,
    noentry65 = 229,
    noentry66 = 230,
    noentry67 = 231,
    noentry68 = 232,
    noentry7 = 58,
    noentry8 = 59,
    noentry9 = 60
};

enum EquipmentBits { CLOTHING_BITFIELD, SWORD_BITFIELD, SHIELD_BITFIELD };

enum Swords { ORDON_SWORD_FLAG, MASTER_SWORD_FLAG, WOODEN_SWORD_FLAG, LIGHT_SWORD_FLAG };

enum Shields { ORDON_SHIELD_FLAG, HYLIAN_SHIELD_FLAG, WOODEN_SHIELD_FLAG };

enum Armors { HEROS_CLOTHES_FLAG };

enum DungeonItem { MAP_FLAG, COMPASS_FLAG, BOSS_KEY_FLAG, OOCCOO_NOTE_FLAG = 6 };

enum AreaVessel { FARON_VESSEL, ELDIN_VESSEL, LANAYRU_VESSEL };

class dSv_player_status_a_c {
public:
    void init(void);
    void setSelectItemIndex(signed int, u8);
    u8 getSelectItemIndex(signed int) const;
    void setMixItemIndex(signed int, u8);
    u8 getMixItemIndex(signed int) const;
    u16 getRupeeMax(void) const;
    int isMagicFlag(u8) const;

    inline u16& getCurrentHealth() { return current_health; }
    inline void setWalletLV(u8 lv) { current_wallet = lv; }
    void setLanternOil(u16 amount) {
        max_lantern_oil = amount;
        current_lantern_oil = amount;
    }

private:
    u16 max_health;
    u16 current_health;
    u16 current_rupees;
    u16 max_lantern_oil;
    u16 current_lantern_oil;
    u8 unk10;
    u8 select_item[3];
    u8 mix_item[3];
    u8 unk17;
    u8 unk18;
    u8 equipment[6];
    u8 current_wallet;
    u8 unk26;
    u8 unk27;
    u8 magic_flag;
    u8 unk29;
    u8 unk30;
    u8 unk31[3];
    u8 padding[6];
};

class dSv_player_status_b_c {
public:
    void init(void);
    void onDarkClearLV(int);
    bool isDarkClearLV(int) const;
    void onTransformLV(int);
    bool isTransformLV(int) const;

private:
    u32 unk0;
    u32 unk4;
    u8 transform_level_flag;
    u8 dark_clear_level_flag;
    u8 unk10;
    u8 unk11;
    float time_of_day;
    u16 unk16;
    u8 unk18[3];
    u8 padding61[3];
};

// move to SComponent later
class cXyz {
public:
    float x, y, z;
};

class dSv_horse_place_c {
public:
    void init(void);
    void set(const char*, const cXyz&, short, s8);

private:
    cXyz position;
    u16 angle;
    char current_stage[8];
    u8 spawn_id;
    u8 room_id;
};

class dSv_player_return_place_c {
public:
    void init(void);
    void set(const char*, s8, u8);

private:
    char current_stage[8];
    u8 spawn_id;
    u8 room_id;
    u8 unk10;
    u8 unk11;
};

class dSv_player_field_last_stay_info_c {
public:
    void init(void);
    bool isRegionBit(int unk) const;
    void onRegionBit(int unk);
    void set(const char*, const cXyz&, short, s8, u8);

private:
    cXyz last_position;
    u16 last_angle;
    char last_stage[8];
    u8 last_spawn_id;
    u8 last_room_id;
    u8 unk24;
    u8 last_region;
    u8 unk26[2];
};

class dSv_player_last_mark_info_c {
public:
    void init(void);
    void setWarpItemData(const char*, const cXyz&, short, s8, u8, u8);

private:
    cXyz ooccoo_position;
    u16 ooccoo_angle;
    char ooccoo_stage[8];
    u8 ooccoo_spawn_id;
    u8 ooccoo_room_id;
    char unk24;
    u8 unk25[3];
};

class dSv_player_item_c {
public:
    void init(void);
    void setItem(int, u8);
    u8 getItem(int, bool) const;
    void setLineUpItem(void);
    u8 getLineUpItem(int) const;
    void setBottleItemIn(u8, u8);
    void setEmptyBottleItemIn(u8);
    void setEmptyBottle(void);
    void setEmptyBottle(u8);
    void setEquipBottleItemIn(u8, u8);
    void setEquipBottleItemEmpty(u8);
    u8 checkBottle(u8);
    u8 checkInsectBottle(void);
    u8 checkEmptyBottle(void);
    void setBombBagItemIn(u8, u8, bool);
    void setBombBagItemIn(u8, u8, u8, bool);
    void setEmptyBombBagItemIn(u8, bool);
    void setEmptyBombBagItemIn(u8, u8, bool);
    void setEmptyBombBag(void);
    void setEmptyBombBag(u8, u8);
    u8 checkBombBag(u8);
    void setWarashibeItem(u8);
    void setRodTypeLevelUp(void);
    void setBaitItem(u8);

    static const int BOMB_BAG_MAX = 3;
    static const int BOTTLE_MAX = 4;

private:
    u8 items[24];
    u8 item_slots[24];
};

class dSv_player_get_item_c {
public:
    void init(void);
    void onFirstBit(u8);
    void offFirstBit(u8);
    int isFirstBit(u8) const;

private:
    u32 pause_menu_bit_fields[4];
    u8 ok[16];
};

class dSv_player_item_record_c {
public:
    void init(void);
    void setBombNum(u8, u8);
    u8 getBombNum(u8) const;
    void setBottleNum(u8, u8);
    u8 addBottleNum(u8, short);
    u8 getBottleNum(u8) const;

    void setBowAmount(u8 amount) { bow = amount; }

private:
    u8 bow;
    u8 bomb_bags[3];
    u8 bottles[4];
    u8 slingshot;
    u8 unk5[3];
};

class dSv_player_item_max_c {
public:
    void init(void);
    void setBombNum(u8, u8);
    u8 getBombNum(u8) const;

    void setBowCapacity(u8 max) { item_capacities[0] = max; }

private:
    u8 item_capacities[8];
};

class dSv_player_collect_c {
public:
    void init(void);
    void setCollect(int, u8);
    bool isCollect(int, u8) const;
    void onCollectCrystal(u8);
    bool isCollectCrystal(u8) const;
    void onCollectMirror(u8);
    bool isCollectMirror(u8) const;

    u8 getPoeCount() { return poe_count; }

private:
    u8 unk0[8];
    u8 unk8;
    u8 crystal;
    u8 mirror;
    u8 unk11;
    u8 poe_count;
    u8 padding[3];
};

class dSv_player_wolf_c {
public:
    void init(void);

private:
    u8 unk0[3];
    u8 unk3;
};

class dSv_light_drop_c {
public:
    void init(void);
    void setLightDropNum(u8, u8);
    u8 getLightDropNum(u8) const;
    void onLightDropGetFlag(u8);
    bool isLightDropGetFlag(u8) const;

private:
    u8 light_drop_counts[4];
    u8 light_drop_get_flag;
    u8 unk5[3];
};

class dSv_letter_info_c {
public:
    void init(void);
    void onLetterGetFlag(int);
    bool isLetterGetFlag(int) const;
    void onLetterReadFlag(int);
    int isLetterReadFlag(int) const;

private:
    u32 letter_get_bitfields[2];
    u32 letter_read_bitfields[2];
    u8 unk16[64];
};

class dSv_fishing_info_c {
public:
    void init(void);
    void addFishCount(u8);  // merged with init in the assembly

private:
    u16 fish_count[16];
    u8 unk32[16];
    u8 padding[4];
};

class dSv_player_info_c {
public:
    void init(void);
    char* getLinkName() { return (char*)link_name; }

private:
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unk12;
    u16 unk16;
    u16 unk18;
    u8 link_name[16];
    u8 unk36;
    u8 epona_name[16];
    u8 unk53;
    u8 unk54;
    u8 unk55[5];
    u8 padding[4];
};

class dSv_player_config_c {
public:
    void init(void);
    u32 checkVibration(void) const;
    u8 getSound(void);
    void setSound(u8);
    u8 getVibration(void);
    void setVibration(u8);

private:
    u8 unk0;
    u8 sound_mode;
    u8 unk2;
    u8 vibration_status;
    u8 unk4;
    u8 unk5;
    u16 unk6;
    u8 unk8;
    u8 unk9;
    u8 unk10;
    u8 unk11;
};

class dSv_player_c {
public:
    void init(void);
    dSv_player_info_c& getPlayerInfo() { return player_info; }
    dSv_player_status_a_c& getPlayerStatusA() { return player_status_a; }
    dSv_player_item_c& getPlayerItem() { return player_item; }
    dSv_player_collect_c& getPlayerCollect() { return player_collect; }
    dSv_player_item_record_c& getPlayerItemRecord() { return player_item_record; }
    dSv_player_item_max_c& getPlayerItemMax() { return player_item_max; }
    dSv_light_drop_c& getLightDrop() { return light_drop; }
    dSv_player_get_item_c& getPlayerGetItem() { return player_get_item; }

    void setPlayerStatusAWalletLV(u8 lv) { player_status_a.setWalletLV(lv); }
    void setPlayerStatusAOil(u16 amount) { player_status_a.setLanternOil(amount); }

private:
    dSv_player_status_a_c player_status_a;
    dSv_player_status_b_c player_status_b;
    dSv_horse_place_c horse_place;
    dSv_player_return_place_c player_return;
    dSv_player_field_last_stay_info_c player_last_field;
    dSv_player_last_mark_info_c player_last_mark;
    dSv_player_item_c player_item;
    dSv_player_get_item_c player_get_item;
    dSv_player_item_record_c player_item_record;
    dSv_player_item_max_c player_item_max;
    dSv_player_collect_c player_collect;
    dSv_player_wolf_c player_wolf;
    dSv_light_drop_c light_drop;
    dSv_letter_info_c letter_info;
    dSv_fishing_info_c fishing_info;
    dSv_player_info_c player_info;
    dSv_player_config_c player_config;
};

#pragma pack(push, 1)
class dSv_memBit_c {
public:
    void init(void);
    void onTbox(int);
    void offTbox(int);
    bool isTbox(int) const;
    void onSwitch(int);
    void offSwitch(int);
    bool isSwitch(int) const;
    u8 revSwitch(int);
    void onItem(int);
    bool isItem(int) const;
    void onDungeonItem(int);
    bool isDungeonItem(int) const;

    u8 getSmallKeys() { return small_key_flags; }

private:
    u32 area_flags_bitfields1[2];
    u32 area_flags_bitfields2[4];
    u32 rupee_flags_bitfields;
    u8 small_key_flags;
    u8 dungeons_flags;
};
#pragma pack(pop)

class dSv_event_c {
public:
    void init(void);
    void onEventBit(u16);
    void offEventBit(u16);
    int isEventBit(u16) const;
    void setEventReg(u16, u8);
    u8 getEventReg(u16) const;

private:
    u8 events[256];
};

class dSv_MiniGame_c {
public:
    void init(void);

private:
    u8 unk0;
    u8 unk1[3];
    u32 unk4;
    u32 unk8;
    u32 unk12;
    u32 unk16;
    u32 unk20;
};

class dSv_memory_c {
public:
    dSv_memory_c(void);  // the assembly for this is in d_com_inf_game.s
    void init(void);
    dSv_memBit_c& getTempFlags() { return temp_flags; }

private:
    dSv_memBit_c temp_flags;
    u8 padding30[2];
};

class dSv_memory2_c {
public:
    dSv_memory2_c(void);  // the assembly for this is in d_com_inf_game.s
    void init(void);
    void onVisitedRoom(int);
    void offVisitedRoom(int);
    bool isVisitedRoom(int);

private:
    u32 unk0[2];
};

class dSv_danBit_c {
public:
    bool init(s8);
    void onSwitch(int);
    void offSwitch(int);
    bool isSwitch(int) const;
    bool revSwitch(int);
    void onItem(int);
    bool isItem(int) const;

private:
    s8 mStageNum;
    u8 unk1;
    u8 unk2[2];
    u32 switch_bitfield[2];
    u32 item_bitfield[4];
    s16 unk28[16];
};

class dSv_zoneBit_c {
public:
    void init(void);
    void clearRoomSwitch(void);
    void clearRoomItem(void);
    void onSwitch(int);
    void offSwitch(int);
    bool isSwitch(int) const;
    bool revSwitch(int);
    void onOneSwitch(int);
    void offOneSwitch(int);
    bool isOneSwitch(int) const;
    bool revOneSwitch(int);
    void onItem(int);
    bool isItem(int) const;
    void onOneItem(int);
    bool isOneItem(int) const;

private:
    u16 switch_bitfield[2];
    u16 room_switch;
    u16 item_bitfield[2];
    u16 room_item;
    u16 unk12;
};

class dSv_zoneActor_c {
public:
    void init(void);
    void on(int);
    void off(int);
    bool is(int) const;

    static const int ACTOR_MAX = 0xFFFF;

private:
    u32 actor_bitfield[4];
};

class dSv_zone_c {
public:
    dSv_zone_c(void);  // the assembly for this is in d_com_inf_game.s
    void init(int);
    dSv_zoneBit_c& getZoneBit() { return zone_bit; }
    dSv_zoneActor_c& getZoneActor() { return zone_actor; }

    s8& getUnk0() { return unk0; }

private:
    s8 unk0;
    u8 unk1;
    dSv_zoneBit_c zone_bit;
    dSv_zoneActor_c zone_actor;
};

class dSv_restart_c {
public:
    void setRoom(const cXyz&, short, s8);

private:
    u8 unk0;
    u8 unk1[5];
    short angle;
    cXyz position;
    u8 padding20[16];
};

class dSv_turnRestart_c {
public:
    void set(const cXyz&, short, s8, u32);

private:
    cXyz position;
    u32 unk12;
    short angle;
    s8 unk18;
};

class dSv_save_c {
public:
    void init(void);
    dSv_memory2_c* getSave2(int);
    dSv_player_c& getPlayer() { return player; }
    dSv_player_status_a_c& getPlayerStatusA() { return player.getPlayerStatusA(); }
    dSv_player_get_item_c& getPlayerGetItem() { return player.getPlayerGetItem(); }
    dSv_player_item_c& getPlayerItem() { return player.getPlayerItem(); }
    dSv_event_c& getEventFlags() { return event_flags; }

    void setPlayerStatusAWallet(u8 lv) { player.setPlayerStatusAWalletLV(lv); }

    static const int STAGE_MAX = 4;

private:
    dSv_player_c player;
    u8 unk492[4];
    dSv_memory_c area_flags[32];
    dSv_memory2_c unk_flags[64];
    dSv_event_c event_flags;
    u8 unk2288[80];
    dSv_MiniGame_c minigame_flags;
};

class dSv_info_c {
public:
    void init(void);
    void getSave(int);
    void putSave(int);
    void initZone(void);
    u32 createZone(int);
    void onSwitch(int, int);
    void offSwitch(int, int);
    bool isSwitch(int, int) const;
    u8 revSwitch(int, int);
    void onItem(int, int);
    bool isItem(int, int) const;
    void onActor(int, int);
    void offActor(int, int);
    bool isActor(int, int) const;
    void memory_to_card(char*, int);
    void card_to_memory(char*, int);
    void initdata_to_card(char*, int);

private:
    dSv_save_c save_file;
    dSv_memory_c memory;
    dSv_danBit_c dungeon_bit;
    dSv_zone_c zones[32];
    dSv_restart_c restart;
    dSv_event_c events;
    dSv_turnRestart_c turn_restart;
};

#endif