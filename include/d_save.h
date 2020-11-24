#include "dolphin/types.h"
#define MAX_BOTTLES 4
#define MAX_ITEM_SLOTS 24

enum Wallets {
    WALLET,
    BIG_WALLET,
    GIANT_WALLET
};

enum ItemTable {
    ORDON_SHIELD = 42,
    WOODEN_SHIELD,
    HYLIAN_SHIELD,
    OOCCOOS_NOTE,
    ORDON_CLOTHES,
    HEROS_CLOTHES,
    MAGIC_ARMOR,
    ZORA_ARMOR,
    HAWKEYE = 62,
    WOODEN_SWORD,
    GALE_BOOMERANG,
    SPINNER,
    BALL_AND_CHAIN,
    HEROS_BOW,
    CLAWSHOT,
    IRON_BOOTS,
    DOMINION_ROD,
    DOUBLE_CLAWSHOTS,
    LANTERN,
    MASTER_SWORD,
    FISHING_ROD,
    SLINGSHOT,
    DOMINION_ROD_2,  // unused?
    GIANT_BOMB_BAG = 79,
    EMPTY_BOMBBAG,
    BAG_AND_BOMBS,
    UNUSED_BOMB_BAG,
    FIRE_ARROW,  // unused?
    QUIVER,
    BIG_QUIVER,
    GIANT_QUIVER,
    UNUSED_FISHING_ROD = 88,
    HEROS_BOW_BOMBS,
    HEROS_BOW_HAWKEYE,
    ROD_BEE_LARVA,
    ROD_CORAL_EARRING,
    ROD_WORM,
    ROD_CORAL_EARRING_BEE_LARVA,
    ROD_CORAL_EARRING_WORM,
    EMPTY_BOTTLE,
    RED_POTION,
    MAGIC_POTION,
    BLUE_POTION,
    MILK,
    HALF_MILK,
    LANTERN_OIL,
    WATER,
    LANTERN_OIL_2,  // unused?
    RED_POTION_2,   // unused?
    NASTY_SOUP,
    HOT_SPRING_WATER,
    FAIRY,
    HOT_SPRING_WATER_2,  // unused?
    LANTERN_OIL_3,       // unused?
    LANTERN_OIL_4,       // unused?
    REGULAR_BOMBS,
    WATER_BOMBS,
    BOMBLINGS,
    FAIRY_TEARS,
    WORM,
    FAIRY_TEARS_2,  // unused?
    BEE_LARVA,
    RARE_CHU,
    RED_CHU,
    BLUE_CHU,
    GREEN_CHU,
    YELLOW_CHU,
    PURPLE_CHU,
    SIMPLE_SOUP,
    GOOD_SOUP,
    SUPERB_SOUP,
    RENADOS_LETTER,
    INVOICE,
    WOODEN_STATUE,
    ILIAS_CHARM,
    HORSE_CALL,
    AURUS_MEMO = 144,
    ASHEIS_SKETCH,
    LANTERN_2 = 156,    // unused?
    LANTERN_OIL_5,      // unused?
    BEE_LARVA_2,        // unused?
    BLACK_CHU_JELLY,    // unused?
    TEAR_OF_LIGHT,      // unused?
    VESSEL_OF_LIGHT,    // unused?
    VESSEL_OF_LIGHT_2,  // unused?
    ANCIENT_SKY_BOOK_EMPTY = 233,
    ANCIENT_SKY_BOOK_PARTIAL,
    ANCIENT_SKY_BOOK_FILLED,
    NO_ITEM = 255
};

class dSv_player_status_a_c {
   public:
    void init(void);
    void setSelectItemIndex(signed int, u8);
    u8 getSelectItemIndex(signed int) const;
    void setMixItemIndex(signed int, u8);
    u8 getMixItemIndex(signed int) const;
    u16 getRupeeMax(void) const;
    bool isMagicFlag(u8) const;

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
    float unk12;
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
    u8 current_stage[8];
    u8 spawn_id;
    u8 room_id;
};

class dSv_player_return_place_c {
   public:
    void init(void);
    void set(const char*, const cXyz&, short, s8);

   private:
    u8 current_stage[8];
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
    u8 last_stage[8];
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
    u8 ooccoo_stage[8];
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

   private:
    u8 items[24];
    u8 item_slots[24];
};

class dSv_player_get_item_c {
   public:
    void init(void);
    void onFirstBit(u8);
    void offFirstBit(u8);
    bool isFirstBit(u8) const;

   private:
    u32 pause_menu_bit_fields[4];
};

class dSv_player_item_record_c {
   public:
    void init(void);
    void setBombNum(u8, u8);
    u8 getBombNum(u8) const;
    void setBottleNum(u8, u8);
    u8 addBottleNum(u8, short);
    u8 getBottleNum(u8) const;

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

   private:
    u8 unk0[8];
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

   private:
    u8 unk0[8];
    u8 unk8;
    u8 crystal;
    u8 mirror;
    u8 unk11;
    u8 poe_count;
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
    u8 getLightDropNum(u8) const;
    void onLightDropGetFlag(u8);
    u8 isLightDropGetFlag(u8) const;

   private:
    u8 unk0[4];
    u8 light_drop_get_flag;
    u8 unk5[3];
};

class dSv_letter_info_c {
   public:
    void init(void);
    void onLetterGetFlag(int);
    u8 isLetterGetFlag(int) const;
    void onLetterReadFlag(int);
    u8 isLetterReadFlag(int) const;

   private:
    u8 letter_read_flags[16];
    u8 unk16[64];
};

class dSv_fishing_info_c {
   public:
    void init(void);
    void addFishCount(u8);  // merged with init in the assembly

   private:
    u8 unk0[32];
    u8 unk32[16];
    u8 padding[4];
};

class dSv_player_info_c {
   public:
    void init(void);

   private:
    u8 unk0[4];
    u8 unk4[4];
    u8 unk8[4];
    u8 unk12[4];
    u8 unk16[2];
    u8 unk18[2];
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
    void onTBox(int);   // merged with init in the assembly
    void offTbox(int);  // merged with init in the assembly
    u8 isTbox(int) const;
    void onSwitch(int);
    void offSwitch(int);
    u8 isSwitch(int) const;
    u8 revSwitch(int);
    void onItem(int);
    u8 isItem(int) const;
    void onDungeonItem(int);
    u8 isDungeonItem(int) const;

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
    bool isEventBit(u16) const;
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
    u8 isVisitedRoom(int);

   private:
    u32 unk0[2];
};

class dSv_danBit_c {
   public:
    void init(void);
    void onSwitch(int);
    void offSwitch(int);
    u8 isSwitch(int) const;
    u8 revSwitch(int);
    void onItem(int);
    u8 isItem(int) const;

   private:
    u8 unk0;
    u8 unk1;
    u8 unk2[2];
    u32 unk4;
    u32 unk8;
    u32 unk12;
    u32 unk16;
    u32 unk20;
    u32 unk24;
    u16 unk28[16];
};

class dSv_zoneBit_c {
   public:
    void init(void);
    void clearRoomSwitch(void);
    void clearRoomItem(void);
    void onSwitch(int);
    void offSwitch(int);
    u8 isSwitch(int) const;
    u8 revSwitch(int);
    void onOneSwitch(int);
    void offOneSwitch(int);
    void isOneSwitch(int) const;
    u8 revOneSwitch(int);
    void onItem(int);
    void isItem(int) const;
    void onOneItem(int);
    u8 isOneItem(int) const;

   private:
    u16 unk0[2];
    u16 unk4;
    u16 unk6[2];
    u16 unk10;
    u16 unk12;
};

class dSv_zoneActor_c {
   public:
    void init(void);
    void on(int);
    void off(int);
    u8 is(int) const;

   private:
    u32 unk0[4];
};

class dSv_zone_c {
   public:
    dSv_zone_c(void);  // the assembly for this is in d_com_inf_game.s
    void init(void);

   private:
    u8 unk0;
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
    dSv_memory2_c getSave2(int);

   private:
    dSv_player_c player;
    u8 unk476[20];
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
    int createZone(int);
    void onSwitch(int, int);
    void offSwitch(int, int);
    bool isSwitch(int, int) const;
    u8 revSwitch(int, int);  // merged with isSwitch in the assembly
    void onItem(int, int);
    bool isItem(int, int) const;
    void onActor(int, int);
    void offActor(int, int);  // merged with onActor in the assembly
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
