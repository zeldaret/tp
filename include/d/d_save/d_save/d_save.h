#ifndef D_SAVE_H_
#define D_SAVE_H_

#include "SComponent/c_xyz/c_xyz.h"
#include "d/d_meter2/d_meter2_info/d_meter2_info.h"
#include "dolphin/types.h"
#include "global.h"

#define DEFAULT_SELECT_ITEM_INDEX 0
#define MAX_SELECT_ITEM 3
#define MAX_EVENTS 256
#define MAX_ITEM_SLOTS 24
#define ITEM_XY_MAX_DUMMY 8
#define LIGHT_DROP_STAGE 4
#define LETTER_INFO_BIT 64
#define BOMB_BAG_MAX 3
#define BOTTLE_MAX 4

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

enum EquipmentBits { CLOTHING_BITFIELD, SWORD_BITFIELD, SHIELD_BITFIELD };

enum Swords { ORDON_SWORD_FLAG, MASTER_SWORD_FLAG, WOODEN_SWORD_FLAG, LIGHT_SWORD_FLAG };

enum Shields { ORDON_SHIELD_FLAG, HYLIAN_SHIELD_FLAG, WOODEN_SHIELD_FLAG };

enum Armors { KOKIRI_CLOTHES_FLAG };

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

    u16& getMaxLife() { return mMaxHealth; }
    u16& getLife() { return mCurrentHealth; }
    u16& getRupee() { return mCurrentRupees; }
    u16& getOil() { return mCurrentLanternOil; }
    u8 getSelectEquip(int item) const { return mEquipment[item]; }
    void setWalletLV(u8 lv) { mCurrentWallet = lv; }
    void setOil(u16 oil) { mCurrentLanternOil = oil; }
    void setMaxOil(u16 max) { mMaxLanternOil = max; }
    void setWalletSize(u8 size) { mCurrentWallet = size; }
    void setMagic(u8 magic) { mCurrentMagic = magic; }
    void setMaxMagic(u8 max) { mMaxMagic = max; }
    void setRupee(u16 rupees) { mCurrentRupees = rupees; }
    void setLife(u16 life) { mCurrentHealth = life; }
    void setMaxLife(u8 max) { mMaxHealth = max; }
    void setSelectEquip(int item_index, u8 item) { mEquipment[item_index] = item; }

private:
    u16 mMaxHealth;
    u16 mCurrentHealth;
    u16 mCurrentRupees;
    u16 mMaxLanternOil;
    u16 mCurrentLanternOil;
    u8 unk10;
    u8 mSelectItem[3];
    u8 mMixItem[3];
    u8 unk17;
    u8 unk18;
    u8 mEquipment[6];
    u8 mCurrentWallet;
    u8 mMaxMagic;
    u8 mCurrentMagic;
    u8 mMagicFlag;
    u8 unk29;
    u8 unk30;
    u8 unk31[3];
    u8 padding[6];
};

class dSv_player_status_b_c {
public:
    void init(void);
    void onDarkClearLV(int);
    BOOL isDarkClearLV(int) const;
    void onTransformLV(int);
    BOOL isTransformLV(int) const;

private:
    u32 unk0;
    u32 unk4;
    u8 mTransformLevelFlag;
    u8 mDarkClearLevelFlag;
    u8 unk10;
    u8 unk11;
    float mTimeOfDay;
    u16 unk16;
    u8 unk18[3];
    u8 padding[3];
};

class dSv_horse_place_c {
public:
    void init(void);
    void set(const char*, const cXyz&, s16, s8);

private:
    cXyz mPosition;
    u16 mXRotation;
    char mCurrentStage[8];
    u8 mSpawnId;
    u8 mRoomId;
};

class dSv_player_return_place_c {
public:
    void init(void);
    void set(const char*, s8, u8);

private:
    char mCurrentStage[8];
    u8 mSpawnId;
    u8 mRoomId;
    u8 unk10;
    u8 unk11;
};

class dSv_player_field_last_stay_info_c {
public:
    void init(void);
    BOOL isRegionBit(int unk) const;
    void onRegionBit(int unk);
    void set(const char*, const cXyz&, s16, s8, u8);

private:
    cXyz mLastPosition;
    s16 mLastAngle;
    char mLastStage[8];
    u8 mLastSpawnId;
    u8 mLastRoomId;
    u8 unk24;
    u8 mLastRegion;
    u8 unk26[2];
};

class dSv_player_last_mark_info_c {
public:
    void init(void);
    void setWarpItemData(const char*, const cXyz&, s16, s8, u8, u8);

    const char* getName(void) { return mOoccooStage; }
    cXyz getPos(void) { return mOoccooPosition; }
    s16 getAngleY(void) { return mOoccooXRotation; }
    s8 getRoomNo(void) { return mOoccooRoomId; }
    char getWarpAcceptStage(void) { return mWarpAcceptStage; }

private:
    cXyz mOoccooPosition;
    s16 mOoccooXRotation;
    char mOoccooStage[8];
    u8 mOoccooSpawnId;
    s8 mOoccooRoomId;
    char mWarpAcceptStage;
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
    int checkInsectBottle(void);
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
    u8 mItems[24];
    u8 mItemSlots[24];
};

class dSv_player_get_item_c {
public:
    void init(void);
    void onFirstBit(u8);
    void offFirstBit(u8);
    int isFirstBit(u8) const;

private:
    u32 mPauseMenuBitFields[4];
    u8 padding[16];
};

class dSv_player_item_record_c {
public:
    void init(void);
    void setBombNum(u8, u8);
    u8 getBombNum(u8) const;
    void setBottleNum(u8, u8);
    u8 addBottleNum(u8, s16);
    u8 getBottleNum(u8) const;

    void setArrowNum(u8 amount) { mBow = amount; }

private:
    u8 mBow;
    u8 mBombBags[3];
    u8 mBottles[4];
    u8 mSlingshot;
    u8 unk5[3];
};

class dSv_player_item_max_c {
public:
    void init(void);
    void setBombNum(u8, u8);
    u8 getBombNum(u8) const;

    void setArrowNum(u8 max) { mItemCapacities[0] = max; }
    u8 getArrowNum() { return mItemCapacities[0]; }

private:
    u8 mItemCapacities[8];
};

class dSv_player_collect_c {
public:
    void init(void);
    void setCollect(int, u8);
    BOOL isCollect(int, u8) const;
    void onCollectCrystal(u8);
    BOOL isCollectCrystal(u8) const;
    void onCollectMirror(u8);
    BOOL isCollectMirror(u8) const;

    u8 getPohNum() { return mPoeCount; }

private:
    u8 unk0[8];
    u8 unk8;
    u8 mCrystal;
    u8 mMirror;
    u8 unk11;
    u8 mPoeCount;
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
    BOOL isLightDropGetFlag(u8) const;

private:
    u8 mLightDropCounts[4];
    u8 mLightDropGetFlag;
    u8 unk5[3];
};

class dSv_letter_info_c {
public:
    void init(void);
    void onLetterGetFlag(int);
    BOOL isLetterGetFlag(int) const;
    void onLetterReadFlag(int);
    int isLetterReadFlag(int) const;

private:
    u32 mLetterGetBitfields[2];
    u32 mLetterReadBitfields[2];
    u8 unk16[64];
};

class dSv_fishing_info_c {
public:
    void init(void);
    void addFishCount(u8);  // merged with init in the assembly

private:
    u16 mFishCount[16];
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
    u8 mSoundMode;
    u8 unk2;
    u8 mVibrationStatus;
    u8 unk4;
    u8 unk5;
    u16 unk6;
    u8 unk8;
    u8 unk9;
    u8 unk10;
    u8 unk11;
    u8 padding[4];
};

class dSv_player_c {
public:
    void init(void);
    dSv_player_info_c& getPlayerInfo() { return mPlayerInfo; }
    dSv_player_status_a_c& getPlayerStatusA() { return player_status_a; }
    dSv_player_item_c& getPlayerItem() { return player_item; }
    dSv_player_collect_c& getPlayerCollect() { return player_collect; }
    dSv_player_item_record_c& getPlayerItemRecord() { return player_item_record; }
    dSv_player_item_max_c& getPlayerItemMax() { return player_item_max; }
    dSv_player_last_mark_info_c& getPlayerLastMarkInfo() { return player_last_mark; }
    dSv_light_drop_c& getLightDrop() { return light_drop; }
    dSv_player_get_item_c& getPlayerGetItem() { return player_get_item; }

    void setPlayerStatusAWalletLV(u8 lv) { player_status_a.setWalletLV(lv); }

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
    dSv_player_info_c mPlayerInfo;
    dSv_player_config_c player_config;
};

#pragma pack(push, 1)
class dSv_memBit_c {
public:
    void init(void);
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

    u8 getKeyNum() { return small_key_flags; }
    void onDungeonItemMap() { onDungeonItem(MAP_FLAG); }
    bool isDungeonItemMap() const { return isDungeonItem(MAP_FLAG); }
    void onDungeonItemCompass() { onDungeonItem(COMPASS_FLAG); }
    void onDungeonItemWarp() { onDungeonItem(OOCCOO_NOTE_FLAG); }
    void onDungeonItemBossKey() { onDungeonItem(BOSS_KEY_FLAG); }
    bool isDungeonItemBossKey() const { return isDungeonItem(BOSS_KEY_FLAG); }

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
    const dSv_memBit_c& getTempFlagsConst() const { return temp_flags; }

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
    BOOL isVisitedRoom(int);

private:
    u32 unk0[2];
};

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
    BOOL is(int) const;

    static const int ACTOR_MAX = 0xFFFF;

private:
    u32 actor_bitfield[4];
};

class dSv_zone_c {
public:
    dSv_zone_c(void);  // the assembly for this is in d_com_inf_game.s
    void init(int);
    dSv_zoneBit_c& getZoneBit() { return zone_bit; }
    const dSv_zoneBit_c& getZoneBitConst() const { return zone_bit; }
    dSv_zoneActor_c& getZoneActor() { return zone_actor; }
    const dSv_zoneActor_c& getZoneActorConst() const { return zone_actor; }

    s8& getUnk0() { return unk0; }

private:
    s8 unk0;
    u8 unk1;
    dSv_zoneBit_c zone_bit;
    dSv_zoneActor_c zone_actor;
};

class dSv_restart_c {
public:
    void setRoom(const cXyz&, s16, s8);

private:
    u8 unk0;
    u8 unk1[5];
    s16 mXRotation;
    cXyz mPosition;
    u8 padding20[16];
};

class dSv_turnRestart_c {
public:
    void set(const cXyz&, s16, s8, u32);

private:
    cXyz mPosition;
    u32 unk12;
    s16 mXRotation;
    s8 unk18;
};

class dSv_reserve_c {
public:
private:
    u8 unk[80];
};

class dSv_save_c {
public:
    void init(void);
    dSv_memory2_c* getSave2(int);
    dSv_player_c& getPlayer() { return player; }
    dSv_player_status_a_c& getPlayerStatusA() { return player.getPlayerStatusA(); }
    dSv_player_get_item_c& getPlayerGetItem() { return player.getPlayerGetItem(); }
    dSv_player_item_record_c& getPlayerItemRecord() { return player.getPlayerItemRecord(); }
    dSv_player_item_max_c& getPlayerItemMax() { return player.getPlayerItemMax(); }
    dSv_player_last_mark_info_c& getPlayerLastMarkInfo() { return player.getPlayerLastMarkInfo(); }
    dSv_player_item_c& getPlayerItem() { return player.getPlayerItem(); }
    dSv_player_collect_c& getPlayerCollect() { return player.getPlayerCollect(); }
    dSv_light_drop_c& getLightDrop() { return player.getLightDrop(); }
    dSv_event_c& getEventFlags() { return event_flags; }

    void setPlayerStatusAWallet(u8 lv) { player.setPlayerStatusAWalletLV(lv); }

    static const int STAGE_MAX = 4;

private:
    dSv_player_c player;
    dSv_memory_c area_flags[32];
    dSv_memory2_c unk_flags[64];
    dSv_event_c event_flags;
    dSv_reserve_c reserve;
    dSv_MiniGame_c minigame_flags;
};
#pragma pack(push, 1)
class dSv_info_c {
public:
    void init(void);
    void getSave(int);
    void putSave(int);
    void initZone(void);
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
    void memory_to_card(char*, int);
    void card_to_memory(char*, int);
    void initdata_to_card(char*, int);

    dSv_save_c& getSaveFile() { return save_file; }
    dSv_memory_c& getMemory() { return memory; }
    dSv_zone_c* getZones() { return zones; }
    dSv_player_c& getPlayer() { return save_file.getPlayer(); }
    dSv_event_c& getEvent() { return events; }

private:
    /* 0x000 */ dSv_save_c save_file;
    /* 0x958 */ dSv_memory_c memory;
    /* 0x978 */ dSv_danBit_c dungeon_bit;
    /* 0x9B4 */ dSv_zone_c zones[32];
    /* 0xDB4 */ dSv_restart_c restart;
    /* 0xDD8 */ dSv_event_c events;
    /* 0xED8 */ dSv_turnRestart_c turn_restart;
};
#pragma pack(pop)

// u8 dMeter2Info_getOilGaugeBackUp() {
//     return g_meter2_info.getDirectUseItem();
// }

#endif