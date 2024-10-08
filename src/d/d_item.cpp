/**
 * d_item.cpp
 * Item Get Handling
 */

#include "d/d_item.h"
#include "d/d_com_inf_game.h"
#include "d/d_meter2_info.h"

static void (*item_func_ptr[256])() = {
    item_func_HEART,
    item_func_GREEN_RUPEE,
    item_func_BLUE_RUPEE,
    item_func_YELLOW_RUPEE,
    item_func_RED_RUPEE,
    item_func_PURPLE_RUPEE,
    item_func_ORANGE_RUPEE,
    item_func_SILVER_RUPEE,
    item_func_S_MAGIC,
    item_func_L_MAGIC,
    item_func_BOMB_5,
    item_func_BOMB_10,
    item_func_BOMB_20,
    item_func_BOMB_30,
    item_func_ARROW_10,
    item_func_ARROW_20,
    item_func_ARROW_30,
    item_func_ARROW_1,
    item_func_PACHINKO_SHOT,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_WATER_BOMB_5,
    item_func_WATER_BOMB_10,
    item_func_WATER_BOMB_20,
    item_func_WATER_BOMB_30,
    item_func_BOMB_INSECT_5,
    item_func_BOMB_INSECT_10,
    item_func_BOMB_INSECT_20,
    item_func_BOMB_INSECT_30,
    item_func_RECOVER_FAILY,
    item_func_TRIPLE_HEART,
    item_func_SMALL_KEY,
    item_func_KAKERA_HEART,
    item_func_UTUWA_HEART,
    item_func_MAP,
    item_func_COMPUS,
    item_func_DUNGEON_EXIT,
    item_func_BOSS_KEY,
    item_func_DUNGEON_BACK,
    item_func_SWORD,
    item_func_MASTER_SWORD,
    item_func_WOOD_SHIELD,
    item_func_SHIELD,
    item_func_HYLIA_SHIELD,
    item_func_TKS_LETTER,
    item_func_WEAR_CASUAL,
    item_func_WEAR_KOKIRI,
    item_func_ARMOR,
    item_func_WEAR_ZORA,
    item_func_MAGIC_LV1,
    item_func_DUNGEON_EXIT_2,
    item_func_WALLET_LV1,
    item_func_WALLET_LV2,
    item_func_WALLET_LV3,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_ZORAS_JEWEL,
    item_func_HAWK_EYE,
    item_func_WOOD_STICK,
    item_func_BOOMERANG,
    item_func_SPINNER,
    item_func_IRONBALL,
    item_func_BOW,
    item_func_HOOKSHOT,
    item_func_HVY_BOOTS,
    item_func_COPY_ROD,
    item_func_W_HOOKSHOT,
    item_func_KANTERA,
    item_func_LIGHT_SWORD,
    item_func_FISHING_ROD_1,
    item_func_PACHINKO,
    item_func_COPY_ROD_2,
    item_func_noentry,
    item_func_noentry,
    item_func_BOMB_BAG_LV2,
    item_func_BOMB_BAG_LV1,
    item_func_BOMB_IN_BAG,
    item_func_noentry,
    item_func_LIGHT_ARROW,
    item_func_ARROW_LV1,
    item_func_ARROW_LV2,
    item_func_ARROW_LV3,
    item_func_noentry,
    item_func_LURE_ROD,
    item_func_BOMB_ARROW,
    item_func_HAWK_ARROW,
    item_func_BEE_ROD,
    item_func_JEWEL_ROD,
    item_func_WORM_ROD,
    item_func_JEWEL_BEE_ROD,
    item_func_JEWEL_WORM_ROD,
    item_func_EMPTY_BOTTLE,
    item_func_RED_BOTTLE,
    item_func_GREEN_BOTTLE,
    item_func_BLUE_BOTTLE,
    item_func_MILK_BOTTLE,
    item_func_HALF_MILK_BOTTLE,
    item_func_OIL_BOTTLE,
    item_func_WATER_BOTTLE,
    item_func_OIL_BOTTLE2,
    item_func_RED_BOTTLE2,
    item_func_UGLY_SOUP,
    item_func_HOT_SPRING,
    item_func_FAIRY_BOTTLE,
    item_func_HOT_SPRING2,
    item_func_OIL2,
    item_func_OIL,
    item_func_NORMAL_BOMB,
    item_func_WATER_BOMB,
    item_func_POKE_BOMB,
    item_func_FAIRY_DROP,
    item_func_WORM,
    item_func_DROP_BOTTLE,
    item_func_BEE_CHILD,
    item_func_CHUCHU_RARE,
    item_func_CHUCHU_RED,
    item_func_CHUCHU_BLUE,
    item_func_CHUCHU_GREEN,
    item_func_CHUCHU_YELLOW,
    item_func_CHUCHU_PURPLE,
    item_func_LV1_SOUP,
    item_func_LV2_SOUP,
    item_func_LV3_SOUP,
    item_func_LETTER,
    item_func_BILL,
    item_func_WOOD_STATUE,
    item_func_IRIAS_PENDANT,
    item_func_HORSE_FLUTE,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_RAFRELS_MEMO,
    item_func_ASHS_SCRIBBLING,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_CHUCHU_YELLOW2,
    item_func_OIL_BOTTLE3,
    item_func_SHOP_BEE_CHILD,
    item_func_CHUCHU_BLACK,
    item_func_LIGHT_DROP,
    item_func_DROP_CONTAINER,
    item_func_DROP_CONTAINER02,
    item_func_DROP_CONTAINER03,
    item_func_FILLED_CONTAINER,
    item_func_MIRROR_PIECE_2,
    item_func_MIRROR_PIECE_3,
    item_func_MIRROR_PIECE_4,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_SMELL_YELIA_POUCH,
    item_func_SMELL_PUMPKIN,
    item_func_SMELL_POH,
    item_func_SMELL_FISH,
    item_func_SMELL_CHILDREN,
    item_func_SMELL_MEDICINE,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_M_BEETLE,
    item_func_F_BEETLE,
    item_func_M_BUTTERFLY,
    item_func_F_BUTTERFLY,
    item_func_M_STAG_BEETLE,
    item_func_F_STAG_BEETLE,
    item_func_M_GRASSHOPPER,
    item_func_F_GRASSHOPPER,
    item_func_M_NANAFUSHI,
    item_func_F_NANAFUSHI,
    item_func_M_DANGOMUSHI,
    item_func_F_DANGOMUSHI,
    item_func_M_MANTIS,
    item_func_F_MANTIS,
    item_func_M_LADYBUG,
    item_func_F_LADYBUG,
    item_func_M_SNAIL,
    item_func_F_SNAIL,
    item_func_M_DRAGONFLY,
    item_func_F_DRAGONFLY,
    item_func_M_ANT,
    item_func_F_ANT,
    item_func_M_MAYFLY,
    item_func_F_MAYFLY,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_POU_SPIRIT,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_noentry,
    item_func_ANCIENT_DOCUMENT,
    item_func_AIR_LETTER,
    item_func_ANCIENT_DOCUMENT2,
    item_func_LV7_DUNGEON_EXIT,
    item_func_LINKS_SAVINGS,
    item_func_SMALL_KEY2,
    item_func_POU_FIRE1,
    item_func_POU_FIRE2,
    item_func_POU_FIRE3,
    item_func_POU_FIRE4,
    item_func_BOSSRIDER_KEY,
    item_func_TOMATO_PUREE,
    item_func_TASTE,
    item_func_LV5_BOSS_KEY,
    item_func_SURFBOARD,
    item_func_KANTERA2,
    item_func_L2_KEY_PIECES1,
    item_func_L2_KEY_PIECES2,
    item_func_L2_KEY_PIECES3,
    item_func_KEY_OF_CARAVAN,
    item_func_LV2_BOSS_KEY,
    item_func_KEY_OF_FILONE,
    item_func_noentry,
};

inline void getItemFunc(u8 i_itemNo) {
    dComIfGs_onItemFirstBit(i_itemNo);
    item_func_ptr[i_itemNo]();
}

void execItemGet(u8 i_itemNo) {
    getItemFunc(i_itemNo);
}

static int (*item_getcheck_func_ptr[256])() = {
    item_getcheck_func_HEART,
    item_getcheck_func_GREEN_RUPEE,
    item_getcheck_func_BLUE_RUPEE,
    item_getcheck_func_YELLOW_RUPEE,
    item_getcheck_func_RED_RUPEE,
    item_getcheck_func_PURPLE_RUPEE,
    item_getcheck_func_ORANGE_RUPEE,
    item_getcheck_func_SILVER_RUPEE,
    item_getcheck_func_S_MAGIC,
    item_getcheck_func_L_MAGIC,
    item_getcheck_func_BOMB_5,
    item_getcheck_func_BOMB_10,
    item_getcheck_func_BOMB_20,
    item_getcheck_func_BOMB_30,
    item_getcheck_func_ARROW_10,
    item_getcheck_func_ARROW_20,
    item_getcheck_func_ARROW_30,
    item_getcheck_func_ARROW_1,
    item_getcheck_func_PACHINKO_SHOT,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_WATER_BOMB_5,
    item_getcheck_func_WATER_BOMB_10,
    item_getcheck_func_WATER_BOMB_20,
    item_getcheck_func_WATER_BOMB_30,
    item_getcheck_func_BOMB_INSECT_5,
    item_getcheck_func_BOMB_INSECT_10,
    item_getcheck_func_BOMB_INSECT_20,
    item_getcheck_func_BOMB_INSECT_30,
    item_getcheck_func_RECOVER_FAILY,
    item_getcheck_func_TRIPLE_HEART,
    item_getcheck_func_SMALL_KEY,
    item_getcheck_func_KAKERA_HEART,
    item_getcheck_func_UTUWA_HEART,
    item_getcheck_func_MAP,
    item_getcheck_func_COMPUS,
    item_getcheck_func_DUNGEON_EXIT,
    item_getcheck_func_BOSS_KEY,
    item_getcheck_func_DUNGEON_BACK,
    item_getcheck_func_SWORD,
    item_getcheck_func_MASTER_SWORD,
    item_getcheck_func_WOOD_SHIELD,
    item_getcheck_func_SHIELD,
    item_getcheck_func_HYLIA_SHIELD,
    item_getcheck_func_TKS_LETTER,
    item_getcheck_func_WEAR_CASUAL,
    item_getcheck_func_WEAR_KOKIRI,
    item_getcheck_func_ARMOR,
    item_getcheck_func_WEAR_ZORA,
    item_getcheck_func_MAGIC_LV1,
    item_getcheck_func_DUNGEON_EXIT_2,
    item_getcheck_func_WALLET_LV1,
    item_getcheck_func_WALLET_LV2,
    item_getcheck_func_WALLET_LV3,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_ZORAS_JEWEL,
    item_getcheck_func_HAWK_EYE,
    item_getcheck_func_WOOD_STICK,
    item_getcheck_func_BOOMERANG,
    item_getcheck_func_SPINNER,
    item_getcheck_func_IRONBALL,
    item_getcheck_func_BOW,
    item_getcheck_func_HOOKSHOT,
    item_getcheck_func_HVY_BOOTS,
    item_getcheck_func_COPY_ROD,
    item_getcheck_func_W_HOOKSHOT,
    item_getcheck_func_KANTERA,
    item_getcheck_func_LIGHT_SWORD,
    item_getcheck_func_FISHING_ROD_1,
    item_getcheck_func_PACHINKO,
    item_getcheck_func_COPY_ROD_2,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_BOMB_BAG_LV2,
    item_getcheck_func_BOMB_BAG_LV1,
    item_getcheck_func_BOMB_IN_BAG,
    item_getcheck_func_noentry,
    item_getcheck_func_LIGHT_ARROW,
    item_getcheck_func_ARROW_LV1,
    item_getcheck_func_ARROW_LV2,
    item_getcheck_func_ARROW_LV3,
    item_getcheck_func_noentry,
    item_getcheck_func_LURE_ROD,
    item_getcheck_func_BOMB_ARROW,
    item_getcheck_func_HAWK_ARROW,
    item_getcheck_func_BEE_ROD,
    item_getcheck_func_JEWEL_ROD,
    item_getcheck_func_WORM_ROD,
    item_getcheck_func_JEWEL_BEE_ROD,
    item_getcheck_func_JEWEL_WORM_ROD,
    item_getcheck_func_EMPTY_BOTTLE,
    item_getcheck_func_RED_BOTTLE,
    item_getcheck_func_GREEN_BOTTLE,
    item_getcheck_func_BLUE_BOTTLE,
    item_getcheck_func_MILK_BOTTLE,
    item_getcheck_func_HALF_MILK_BOTTLE,
    item_getcheck_func_OIL_BOTTLE,
    item_getcheck_func_WATER_BOTTLE,
    item_getcheck_func_OIL_BOTTLE2,
    item_getcheck_func_RED_BOTTLE2,
    item_getcheck_func_UGLY_SOUP,
    item_getcheck_func_HOT_SPRING,
    item_getcheck_func_FAIRY_BOTTLE,
    item_getcheck_func_HOT_SPRING2,
    item_getcheck_func_OIL2,
    item_getcheck_func_OIL,
    item_getcheck_func_NORMAL_BOMB,
    item_getcheck_func_WATER_BOMB,
    item_getcheck_func_POKE_BOMB,
    item_getcheck_func_FAIRY_DROP,
    item_getcheck_func_WORM,
    item_getcheck_func_DROP_BOTTLE,
    item_getcheck_func_BEE_CHILD,
    item_getcheck_func_CHUCHU_RARE,
    item_getcheck_func_CHUCHU_RED,
    item_getcheck_func_CHUCHU_BLUE,
    item_getcheck_func_CHUCHU_GREEN,
    item_getcheck_func_CHUCHU_YELLOW,
    item_getcheck_func_CHUCHU_PURPLE,
    item_getcheck_func_LV1_SOUP,
    item_getcheck_func_LV2_SOUP,
    item_getcheck_func_LV3_SOUP,
    item_getcheck_func_LETTER,
    item_getcheck_func_BILL,
    item_getcheck_func_WOOD_STATUE,
    item_getcheck_func_IRIAS_PENDANT,
    item_getcheck_func_HORSE_FLUTE,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_RAFRELS_MEMO,
    item_getcheck_func_ASHS_SCRIBBLING,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_CHUCHU_YELLOW2,
    item_getcheck_func_OIL_BOTTLE3,
    item_getcheck_func_SHOP_BEE_CHILD,
    item_getcheck_func_CHUCHU_BLACK,
    item_getcheck_func_LIGHT_DROP,
    item_getcheck_func_DROP_CONTAINER,
    item_getcheck_func_DROP_CONTAINER02,
    item_getcheck_func_DROP_CONTAINER03,
    item_getcheck_func_FILLED_CONTAINER,
    item_getcheck_func_MIRROR_PIECE_2,
    item_getcheck_func_MIRROR_PIECE_3,
    item_getcheck_func_MIRROR_PIECE_4,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_SMELL_YELIA_POUCH,
    item_getcheck_func_SMELL_PUMPKIN,
    item_getcheck_func_SMELL_POH,
    item_getcheck_func_SMELL_FISH,
    item_getcheck_func_SMELL_CHILDREN,
    item_getcheck_func_SMELL_MEDICINE,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_M_BEETLE,
    item_getcheck_func_F_BEETLE,
    item_getcheck_func_M_BUTTERFLY,
    item_getcheck_func_F_BUTTERFLY,
    item_getcheck_func_M_STAG_BEETLE,
    item_getcheck_func_F_STAG_BEETLE,
    item_getcheck_func_M_GRASSHOPPER,
    item_getcheck_func_F_GRASSHOPPER,
    item_getcheck_func_M_NANAFUSHI,
    item_getcheck_func_F_NANAFUSHI,
    item_getcheck_func_M_DANGOMUSHI,
    item_getcheck_func_F_DANGOMUSHI,
    item_getcheck_func_M_MANTIS,
    item_getcheck_func_F_MANTIS,
    item_getcheck_func_M_LADYBUG,
    item_getcheck_func_F_LADYBUG,
    item_getcheck_func_M_SNAIL,
    item_getcheck_func_F_SNAIL,
    item_getcheck_func_M_DRAGONFLY,
    item_getcheck_func_F_DRAGONFLY,
    item_getcheck_func_M_ANT,
    item_getcheck_func_F_ANT,
    item_getcheck_func_M_MAYFLY,
    item_getcheck_func_F_MAYFLY,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_POU_SPIRIT,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_noentry,
    item_getcheck_func_ANCIENT_DOCUMENT,
    item_getcheck_func_AIR_LETTER,
    item_getcheck_func_ANCIENT_DOCUMENT2,
    item_getcheck_func_LV7_DUNGEON_EXIT,
    item_getcheck_func_LINKS_SAVINGS,
    item_getcheck_func_SMALL_KEY2,
    item_getcheck_func_POU_FIRE1,
    item_getcheck_func_POU_FIRE2,
    item_getcheck_func_POU_FIRE3,
    item_getcheck_func_POU_FIRE4,
    item_getcheck_func_BOSSRIDER_KEY,
    item_getcheck_func_TOMATO_PUREE,
    item_getcheck_func_TASTE,
    item_getcheck_func_LV5_BOSS_KEY,
    item_getcheck_func_SURFBOARD,
    item_getcheck_func_KANTERA2,
    item_getcheck_func_L2_KEY_PIECES1,
    item_getcheck_func_L2_KEY_PIECES2,
    item_getcheck_func_L2_KEY_PIECES3,
    item_getcheck_func_KEY_OF_CARAVAN,
    item_getcheck_func_LV2_BOSS_KEY,
    item_getcheck_func_KEY_OF_FILONE,
    item_getcheck_func_noentry,
};

inline int getCheckItemFunc(u8 i_itemNo) {
    return item_getcheck_func_ptr[i_itemNo]();
}

int checkItemGet(u8 i_itemNo, int i_default) {
    int result = getCheckItemFunc(i_itemNo);

    if (result == -1) {
        result = i_default;
    }

    return result;
}

void item_func_HEART() {
    dComIfGp_setItemLifeCount(4.0f, 0);
}

void item_func_GREEN_RUPEE() {
    dComIfGp_setItemRupeeCount(1);
}

void item_func_BLUE_RUPEE() {
    dComIfGp_setItemRupeeCount(5);
}

void item_func_YELLOW_RUPEE() {
    dComIfGp_setItemRupeeCount(10);
}

void item_func_RED_RUPEE() {
    dComIfGp_setItemRupeeCount(20);
}

void item_func_PURPLE_RUPEE() {
    dComIfGp_setItemRupeeCount(50);
}

void item_func_ORANGE_RUPEE() {
    dComIfGp_setItemRupeeCount(100);
}

void item_func_SILVER_RUPEE() {
    dComIfGp_setItemRupeeCount(200);
}

void item_func_S_MAGIC() {
    dComIfGp_setItemMagicCount(4);
}

void item_func_L_MAGIC() {
    dComIfGp_setItemMagicCount(8);
}

void item_func_BOMB_5() {
    addBombCount(NORMAL_BOMB, 5);
}

void item_func_BOMB_10() {
    addBombCount(NORMAL_BOMB, 10);
}

void item_func_BOMB_20() {
    addBombCount(NORMAL_BOMB, 20);
}

void item_func_BOMB_30() {
    addBombCount(NORMAL_BOMB, 30);
}

void item_func_ARROW_10() {
    dComIfGp_setItemArrowNumCount(10);
}

void item_func_ARROW_20() {
    dComIfGp_setItemArrowNumCount(20);
}

void item_func_ARROW_30() {
    dComIfGp_setItemArrowNumCount(30);
}

void item_func_ARROW_1() {
    dComIfGp_setItemArrowNumCount(1);
}

void item_func_PACHINKO_SHOT() {
    dComIfGp_setItemPachinkoNumCount(50);
}

void item_func_WATER_BOMB_5() {
    addBombCount(WATER_BOMB, 5);
}

void item_func_WATER_BOMB_10() {
    addBombCount(WATER_BOMB, 10);
}

void item_func_WATER_BOMB_20() {
    addBombCount(WATER_BOMB, 15);
}

void item_func_WATER_BOMB_30() {
    addBombCount(WATER_BOMB, 3);
}

void item_func_BOMB_INSECT_5() {
    addBombCount(POKE_BOMB, 5);
}

void item_func_BOMB_INSECT_10() {
    addBombCount(POKE_BOMB, 10);
}

void item_func_BOMB_INSECT_20() {
    addBombCount(POKE_BOMB, 3);
}

void item_func_BOMB_INSECT_30() {}

void item_func_RECOVER_FAILY() {
    dComIfGp_setItemLifeCount(32.0f, 0);
}

void item_func_TRIPLE_HEART() {}

void item_func_SMALL_KEY() {
    dComIfGp_setItemKeyNumCount(1);
}

void item_func_KAKERA_HEART() {
    dComIfGp_setItemMaxLifeCount(1);
}

void item_func_UTUWA_HEART() {
    dComIfGp_setItemMaxLifeCount(5);

    f32 max_life = dComIfGs_getMaxLifeGauge();
    dComIfGp_setItemLifeCount(max_life, 0);

    stage_stag_info_class* stag_info = dComIfGp_getStageStagInfo();
    int tmp = i_dStage_stagInfo_GetSaveTbl(stag_info);
    dComIfGs_onStageLife();
}

void item_func_MAP() {
    dComIfGs_onDungeonItemMap();
}

void item_func_COMPUS() {
    dComIfGs_onDungeonItemCompass();
}

void item_func_DUNGEON_EXIT() {
    dComIfGs_onDungeonItemWarp();
    dComIfGs_setItem(SLOT_18, DUNGEON_EXIT);
}

void item_func_BOSS_KEY() {
    dComIfGs_onDungeonItemBossKey();
}

void item_func_DUNGEON_BACK() {
    dComIfGs_setItem(SLOT_18, DUNGEON_BACK);
}

void item_func_SWORD() {
    dComIfGs_setCollectSword(COLLECT_ORDON_SWORD);
    dComIfGs_setSelectEquipSword(SWORD);
}

void item_func_MASTER_SWORD() {
    dComIfGs_setCollectSword(COLLECT_MASTER_SWORD);
    dComIfGs_setSelectEquipSword(MASTER_SWORD);
}

void item_func_WOOD_SHIELD() {
    dComIfGs_setCollectShield(COLLECT_WOODEN_SHIELD);
    dComIfGs_setSelectEquipShield(WOOD_SHIELD);
}

void item_func_SHIELD() {}

void item_func_HYLIA_SHIELD() {}

void item_func_TKS_LETTER() {
    dComIfGs_setItem(SLOT_18, TKS_LETTER);
}

void item_func_WEAR_CASUAL() {
    dComIfGs_setSelectEquipClothes(WEAR_CASUAL);
}

void item_func_WEAR_KOKIRI() {
    dComIfGs_setCollectClothes(KOKIRI_CLOTHES_FLAG);
    dComIfGs_setSelectEquipClothes(WEAR_KOKIRI);
}

void item_func_ARMOR() {}

void item_func_WEAR_ZORA() {}

void item_func_MAGIC_LV1() {
    dComIfGp_setItemMagicCount(16);
    dComIfGp_setItemMaxMagicCount(16);
}

void item_func_DUNGEON_EXIT_2() {
    dComIfGs_setItem(SLOT_18, DUNGEON_EXIT);
}

void item_func_WALLET_LV1() {
    dComIfGs_setWalletSize(WALLET);
}

void item_func_WALLET_LV2() {
    dComIfGs_setWalletSize(BIG_WALLET);
}

void item_func_WALLET_LV3() {
    dComIfGs_setWalletSize(GIANT_WALLET);
}

void item_func_ZORAS_JEWEL() {
    if (item_getcheck_func_FISHING_ROD_1()) {
        dComIfGs_setRodTypeLevelUp();
    } else {
        dComIfGs_setItem(SLOT_20, ZORAS_JEWEL);
    }
}

void item_func_HAWK_EYE() {
    dComIfGs_setItem(SLOT_5, HAWK_EYE);
}

/* 800986C4-80098718 093004 0054+00 1/0 0/0 0/0 .text            item_func_WOOD_STICK__Fv */
void item_func_WOOD_STICK() {
    dComIfGs_setCollectSword(COLLECT_WOODEN_SWORD);
    dComIfGs_setSelectEquipSword(WOOD_STICK);

    s32 roomNo = dComIfGp_roomControl_getStayNo();
    dComIfGs_onSwitch(28, roomNo);
}

void item_func_BOOMERANG() {
    dComIfGs_setItem(SLOT_0, BOOMERANG);
}

void item_func_SPINNER() {
    dComIfGs_setItem(SLOT_2, SPINNER);
}

void item_func_IRONBALL() {
    dComIfGs_setItem(SLOT_6, IRONBALL);
}

void item_func_BOW() {
    dComIfGs_setItem(SLOT_4, BOW);
    dComIfGs_setArrowNum(30);
    dComIfGs_setArrowMax(30);
}

void item_func_HOOKSHOT() {
    dComIfGs_setItem(SLOT_9, HOOKSHOT);
}

void item_func_HVY_BOOTS() {
    dComIfGs_setItem(SLOT_3, HVY_BOOTS);
}

void item_func_COPY_ROD() {
    dComIfGs_setItem(SLOT_8, COPY_ROD);
}

void item_func_W_HOOKSHOT() {
    dComIfGs_setItem(SLOT_9, NO_ITEM);
    dComIfGs_setItem(SLOT_10, W_HOOKSHOT);
}

void item_func_KANTERA() {
    dComIfGs_setMaxOil(21600);
    dComIfGs_setOil(21600);
    dComIfGs_setItem(SLOT_1, KANTERA);
}

void item_func_LIGHT_SWORD() {
    dComIfGs_setCollectSword(COLLECT_LIGHT_SWORD);
    dMeter2Info_setSword(LIGHT_SWORD, false);
}

void item_func_FISHING_ROD_1() {
    dComIfGs_setItem(SLOT_20, FISHING_ROD_1);
}

void item_func_PACHINKO() {
    u8 pachinko_max = dComIfGs_getPachinkoMax();
    dComIfGp_setItemPachinkoNumCount(pachinko_max);
    dComIfGs_setItem(SLOT_23, PACHINKO);
}

void item_func_COPY_ROD_2() {
    dComIfGs_setItem(SLOT_8, COPY_ROD);
}

void item_func_BOMB_BAG_LV2() {}

void item_func_BOMB_BAG_LV1() {
    dComIfGs_setEmptyBombBag(NORMAL_BOMB, 30);
}

void item_func_BOMB_IN_BAG() {
    dComIfGs_setEmptyBombBag(NORMAL_BOMB, 30);
}

void item_func_LIGHT_ARROW() {
    dComIfGs_setItem(SLOT_4, LIGHT_ARROW);
}

void item_func_ARROW_LV1() {
    dComIfGs_setArrowNum(60);
    dComIfGs_setArrowMax(60);
}

void item_func_ARROW_LV2() {
    dComIfGs_setArrowNum(60);
    dComIfGs_setArrowMax(60);
}

void item_func_ARROW_LV3() {
    dComIfGs_setArrowNum(100);
    dComIfGs_setArrowMax(100);
}

void item_func_LURE_ROD() {}

void item_func_BOMB_ARROW() {}

void item_func_HAWK_ARROW() {}

void item_func_BEE_ROD() {}

void item_func_JEWEL_ROD() {}

void item_func_WORM_ROD() {}

void item_func_JEWEL_BEE_ROD() {}

void item_func_JEWEL_WORM_ROD() {}

void item_func_EMPTY_BOTTLE() {
    dComIfGs_setEmptyBottle();
}

void item_func_RED_BOTTLE() {
    dComIfGs_setEmptyBottleItemIn(RED_BOTTLE);
}

void item_func_GREEN_BOTTLE() {
    dComIfGs_setEmptyBottleItemIn(GREEN_BOTTLE);
}

void item_func_BLUE_BOTTLE() {
    dComIfGs_setEmptyBottleItemIn(BLUE_BOTTLE);
}

void item_func_MILK_BOTTLE() {
    dComIfGs_setEmptyBottleItemIn(MILK_BOTTLE);
}

void item_func_HALF_MILK_BOTTLE() {
    dComIfGs_setEmptyBottle(HALF_MILK_BOTTLE);
}

void item_func_OIL_BOTTLE() {
    dComIfGs_setEmptyBottleItemIn(OIL_BOTTLE);
}

void item_func_WATER_BOTTLE() {
    dComIfGs_setEmptyBottleItemIn(WATER_BOTTLE);
}

void item_func_OIL_BOTTLE2() {
    dComIfGs_setEmptyBottleItemIn(OIL_BOTTLE);
}

void item_func_RED_BOTTLE2() {
    dComIfGs_setEmptyBottleItemIn(RED_BOTTLE);
}

void item_func_UGLY_SOUP() {
    dComIfGs_setEmptyBottleItemIn(UGLY_SOUP);
}

void item_func_HOT_SPRING() {
    dComIfGs_setEmptyBottleItemIn(HOT_SPRING);
}

void item_func_FAIRY_BOTTLE() {
    dComIfGs_setEmptyBottleItemIn(FAIRY);
}

void item_func_HOT_SPRING2() {
    dComIfGs_setEmptyBottleItemIn(HOT_SPRING);
}

void item_func_OIL2() {}

void item_func_OIL() {}

void item_func_NORMAL_BOMB() {
    dComIfGs_setEmptyBombBag(NORMAL_BOMB, 60);
}

void item_func_WATER_BOMB() {
    dComIfGs_setEmptyBombBag();
    dComIfGs_setEmptyBombBagItemIn(WATER_BOMB, true);
}

void item_func_POKE_BOMB() {
    dComIfGs_setEmptyBombBag();
    dComIfGs_setEmptyBombBagItemIn(POKE_BOMB, true);
}

void item_func_FAIRY_DROP() {
    dComIfGs_setEmptyBottleItemIn(FAIRY_DROP);
}

void item_func_WORM() {}

void item_func_DROP_BOTTLE() {
    dComIfGs_setEmptyBottle(FAIRY_DROP);
}

void item_func_BEE_CHILD() {
    int bottleIdx;
    int i;

    for (bottleIdx = 0xFF, i = 0; i < 4; i++) {
        u8 getItem = dComIfGs_getItem(i + SLOT_11, true);

        if (getItem == EMPTY_BOTTLE) {
            bottleIdx = i;
            break;
        }
    }

    if (bottleIdx != 0xff) {
        dComIfGs_setBottleNum(bottleIdx, 10);
        dComIfGs_setEmptyBottleItemIn(BEE_CHILD);
    }
}

void item_func_CHUCHU_RARE() {
    dComIfGs_setEmptyBottleItemIn(CHUCHU_RARE);
}

void item_func_CHUCHU_RED() {
    dComIfGs_setEmptyBottleItemIn(CHUCHU_RED);
}

void item_func_CHUCHU_BLUE() {
    dComIfGs_setEmptyBottleItemIn(CHUCHU_BLUE);
}

void item_func_CHUCHU_GREEN() {
    dComIfGs_setEmptyBottleItemIn(CHUCHU_GREEN);
}

void item_func_CHUCHU_YELLOW() {
    dComIfGs_setEmptyBottleItemIn(CHUCHU_YELLOW);
}

void item_func_CHUCHU_PURPLE() {
    dComIfGs_setEmptyBottleItemIn(CHUCHU_PURPLE);
}

void item_func_LV1_SOUP() {
    dComIfGs_setEmptyBottleItemIn(LV1_SOUP);
}

void item_func_LV2_SOUP() {
    dComIfGs_setEmptyBottleItemIn(LV2_SOUP);
}

void item_func_LV3_SOUP() {
    dComIfGs_setEmptyBottleItemIn(LV3_SOUP);
}

void item_func_LETTER() {
    dComIfGs_setItem(SLOT_21, LETTER);
}

void item_func_BILL() {
    dComIfGs_setItem(SLOT_21, BILL);
}

void item_func_WOOD_STATUE() {
    dComIfGs_onEventBit(dSv_event_flag_c::saveBitLabels[283]);
    dComIfGs_setItem(SLOT_21, WOOD_STATUE);
}

void item_func_IRIAS_PENDANT() {
    dComIfGs_setItem(SLOT_21, IRIAS_PENDANT);
}

void item_func_HORSE_FLUTE() {
    dComIfGs_setItem(SLOT_21, HORSE_FLUTE);
}

void item_func_RAFRELS_MEMO() {
    dComIfGs_setItem(SLOT_19, RAFRELS_MEMO);
}

void item_func_ASHS_SCRIBBLING() {
    dComIfGs_setItem(SLOT_19, ASHS_SCRIBBLING);
}

void item_func_CHUCHU_YELLOW2() {
    dComIfGs_setEmptyBottleItemIn(CHUCHU_YELLOW);
}

void item_func_OIL_BOTTLE3() {
    dComIfGs_setEmptyBottle(OIL_BOTTLE);
}

void item_func_SHOP_BEE_CHILD() {
    item_func_BEE_CHILD();
}

void item_func_CHUCHU_BLACK() {
    dComIfGs_setEmptyBottleItemIn(CHUCHU_BLACK);
}

void item_func_LIGHT_DROP() {}

void item_func_DROP_CONTAINER() {
    dComIfGs_onLightDropFlag(FARON_VESSEL);
}

void item_func_DROP_CONTAINER02() {
    dComIfGs_onLightDropFlag(ELDIN_VESSEL);
}

void item_func_DROP_CONTAINER03() {
    dComIfGs_onLightDropFlag(LANAYRU_VESSEL);
}

void item_func_FILLED_CONTAINER() {}

void item_func_MIRROR_PIECE_2() {}

void item_func_MIRROR_PIECE_3() {}

void item_func_MIRROR_PIECE_4() {}

void item_func_SMELL_YELIA_POUCH() {}

void item_func_SMELL_PUMPKIN() {}

void item_func_SMELL_POH() {}

void item_func_SMELL_FISH() {}

void item_func_SMELL_CHILDREN() {}

void item_func_SMELL_MEDICINE() {}

void item_func_M_BEETLE() {}

void item_func_F_BEETLE() {}

void item_func_M_BUTTERFLY() {}

void item_func_F_BUTTERFLY() {}

void item_func_M_STAG_BEETLE() {}

void item_func_F_STAG_BEETLE() {}

void item_func_M_GRASSHOPPER() {}

void item_func_F_GRASSHOPPER() {}

void item_func_M_NANAFUSHI() {}

void item_func_F_NANAFUSHI() {}

void item_func_M_DANGOMUSHI() {}

void item_func_F_DANGOMUSHI() {}

void item_func_M_MANTIS() {}

void item_func_F_MANTIS() {}

void item_func_M_LADYBUG() {}

void item_func_F_LADYBUG() {}

void item_func_M_SNAIL() {}

void item_func_F_SNAIL() {}

void item_func_M_DRAGONFLY() {}

void item_func_F_DRAGONFLY() {}

void item_func_M_ANT() {}

void item_func_F_ANT() {}

void item_func_M_MAYFLY() {}

void item_func_F_MAYFLY() {}

void item_func_POU_SPIRIT() {}

void item_func_ANCIENT_DOCUMENT() {
    dComIfGs_setItem(SLOT_22, ANCIENT_DOCUMENT);
}

void item_func_AIR_LETTER() {
    dComIfGs_setItem(SLOT_22, AIR_LETTER);
}

void item_func_ANCIENT_DOCUMENT2() {
    dComIfGs_setItem(SLOT_22, ANCIENT_DOCUMENT2);
}

void item_func_LV7_DUNGEON_EXIT() {
    dComIfGs_setItem(SLOT_18, LV7_DUNGEON_EXIT);
}

void item_func_LINKS_SAVINGS() {
    dComIfGp_setItemRupeeCount(50);
}

void item_func_SMALL_KEY2() {
    dComIfGp_setItemKeyNumCount(1);
}

void item_func_POU_FIRE1() {}

void item_func_POU_FIRE2() {}

void item_func_POU_FIRE3() {}

void item_func_POU_FIRE4() {}

void item_func_BOSSRIDER_KEY() {}

void item_func_TOMATO_PUREE() {}

void item_func_TASTE() {}

void item_func_LV5_BOSS_KEY() {
    dComIfGs_onDungeonItemBossKey();
}

void item_func_SURFBOARD() {}

void item_func_KANTERA2() {}

void item_func_L2_KEY_PIECES1() {}

void item_func_L2_KEY_PIECES2() {}

void item_func_L2_KEY_PIECES3() {}

void item_func_KEY_OF_CARAVAN() {}

void item_func_LV2_BOSS_KEY() {
    dComIfGs_onDungeonItemBossKey();
}

void item_func_KEY_OF_FILONE() {
    dComIfGp_setItemKeyNumCount(1);
}

void item_func_noentry() {}

int item_getcheck_func_noentry() {
    return -1;
}

int item_getcheck_func_HEART() {
    return -1;
}

int item_getcheck_func_GREEN_RUPEE() {
    return dComIfGs_isItemFirstBit(GREEN_RUPEE);
}

int item_getcheck_func_BLUE_RUPEE() {
    return dComIfGs_isItemFirstBit(BLUE_RUPEE);
}

int item_getcheck_func_YELLOW_RUPEE() {
    return dComIfGs_isItemFirstBit(YELLOW_RUPEE);
}

int item_getcheck_func_RED_RUPEE() {
    return dComIfGs_isItemFirstBit(RED_RUPEE);
}

int item_getcheck_func_PURPLE_RUPEE() {
    return dComIfGs_isItemFirstBit(PURPLE_RUPEE);
}

int item_getcheck_func_ORANGE_RUPEE() {
    return dComIfGs_isItemFirstBit(ORANGE_RUPEE);
}

int item_getcheck_func_SILVER_RUPEE() {
    return dComIfGs_isItemFirstBit(SILVER_RUPEE);
}

int item_getcheck_func_S_MAGIC() {
    return -1;
}

int item_getcheck_func_L_MAGIC() {
    return -1;
}

int item_getcheck_func_BOMB_5() {
    return dComIfGs_isItemFirstBit(BOMB_5);
}

int item_getcheck_func_BOMB_10() {
    return dComIfGs_isItemFirstBit(BOMB_10);
}

int item_getcheck_func_BOMB_20() {
    return dComIfGs_isItemFirstBit(BOMB_20);
}

int item_getcheck_func_BOMB_30() {
    return dComIfGs_isItemFirstBit(BOMB_30);
}

int item_getcheck_func_ARROW_10() {
    return dComIfGs_isItemFirstBit(ARROW_10);
}

int item_getcheck_func_ARROW_20() {
    return dComIfGs_isItemFirstBit(ARROW_20);
}

int item_getcheck_func_ARROW_30() {
    return dComIfGs_isItemFirstBit(ARROW_30);
}

int item_getcheck_func_ARROW_1() {
    return dComIfGs_isItemFirstBit(ARROW_1);
}

int item_getcheck_func_PACHINKO_SHOT() {
    return dComIfGs_isItemFirstBit(PACHINKO_SHOT);
}

int item_getcheck_func_WATER_BOMB_5() {
    return -1;
}

int item_getcheck_func_WATER_BOMB_10() {
    return -1;
}

int item_getcheck_func_WATER_BOMB_20() {
    return -1;
}

int item_getcheck_func_WATER_BOMB_30() {
    return -1;
}

int item_getcheck_func_BOMB_INSECT_5() {
    return -1;
}

int item_getcheck_func_BOMB_INSECT_10() {
    return dComIfGs_isItemFirstBit(BOMB_INSECT_10);
}

int item_getcheck_func_BOMB_INSECT_20() {
    return dComIfGs_isItemFirstBit(BOMB_INSECT_20);
}

int item_getcheck_func_BOMB_INSECT_30() {
    return dComIfGs_isItemFirstBit(BOMB_INSECT_30);
}

int item_getcheck_func_RECOVER_FAILY() {
    return -1;
}

int item_getcheck_func_TRIPLE_HEART() {
    return -1;
}

int item_getcheck_func_SMALL_KEY() {
    return -1;
}

int item_getcheck_func_KAKERA_HEART() {
    return -1;
}

int item_getcheck_func_UTUWA_HEART() {
    return -1;
}

int item_getcheck_func_MAP() {
    return dComIfGs_isDungeonItemMap();
}

int item_getcheck_func_COMPUS() {
    return -1;
}

int item_getcheck_func_DUNGEON_EXIT() {
    return dComIfGs_getItem(SLOT_18, true) == DUNGEON_EXIT ? TRUE : FALSE;
}

int item_getcheck_func_BOSS_KEY() {
    return dComIfGs_isDungeonItemBossKey();
}

int item_getcheck_func_DUNGEON_BACK() {
    return dComIfGs_getItem(SLOT_18, true) == DUNGEON_BACK ? TRUE : FALSE;
}

int item_getcheck_func_SWORD() {
    return dComIfGs_isCollectSword(COLLECT_ORDON_SWORD);
}

int item_getcheck_func_MASTER_SWORD() {
    return dComIfGs_isCollectSword(COLLECT_MASTER_SWORD);
}

int item_getcheck_func_WOOD_SHIELD() {
    return dComIfGs_isItemFirstBit(WOOD_SHIELD);
}

int item_getcheck_func_SHIELD() {
    return dComIfGs_isItemFirstBit(SHIELD);
}

int item_getcheck_func_HYLIA_SHIELD() {
    return dComIfGs_isItemFirstBit(HYLIA_SHIELD);
}

int item_getcheck_func_TKS_LETTER() {
    return dComIfGs_getItem(SLOT_18, true) == TKS_LETTER ? TRUE : FALSE;
}

int item_getcheck_func_WEAR_CASUAL() {
    return dComIfGs_isItemFirstBit(WEAR_CASUAL);
}

int item_getcheck_func_WEAR_KOKIRI() {
    return dComIfGs_isCollectClothing(KOKIRI_CLOTHES_FLAG);
}

int item_getcheck_func_ARMOR() {
    return dComIfGs_isItemFirstBit(ARMOR);
}

int item_getcheck_func_WEAR_ZORA() {
    return dComIfGs_isItemFirstBit(WEAR_ZORA);
}

int item_getcheck_func_MAGIC_LV1() {
    return -1;
}

int item_getcheck_func_DUNGEON_EXIT_2() {
    return dComIfGs_getItem(SLOT_18, true) == DUNGEON_EXIT ? TRUE : FALSE;
}

int item_getcheck_func_WALLET_LV1() {
    return -1;
}

int item_getcheck_func_WALLET_LV2() {
    return -1;
}

int item_getcheck_func_WALLET_LV3() {
    return -1;
}

int item_getcheck_func_ZORAS_JEWEL() {
    return dComIfGs_getItem(SLOT_20, true) == ZORAS_JEWEL ? TRUE : FALSE;
}

int item_getcheck_func_HAWK_EYE() {
    return dComIfGs_isItemFirstBit(HAWK_EYE);
}

int item_getcheck_func_WOOD_STICK() {
    return dComIfGs_isItemFirstBit(WOOD_STICK);
}

int item_getcheck_func_BOOMERANG() {
    return dComIfGs_getItem(SLOT_0, true) == BOOMERANG ? TRUE : FALSE;
}

int item_getcheck_func_SPINNER() {
    return dComIfGs_getItem(SLOT_2, true) == SPINNER ? TRUE : FALSE;
}

int item_getcheck_func_IRONBALL() {
    return dComIfGs_getItem(SLOT_6, true) == IRONBALL ? TRUE : FALSE;
}

int item_getcheck_func_BOW() {
    return dComIfGs_getItem(SLOT_4, false) == BOW ? TRUE : FALSE;
}

int item_getcheck_func_HOOKSHOT() {
    return dComIfGs_getItem(SLOT_9, true) == HOOKSHOT ? TRUE : FALSE;
}

int item_getcheck_func_HVY_BOOTS() {
    return dComIfGs_getItem(SLOT_3, true) == HVY_BOOTS ? TRUE : FALSE;
}

int item_getcheck_func_COPY_ROD() {
    return dComIfGs_getItem(SLOT_8, true) == COPY_ROD ? TRUE : FALSE;
}

int item_getcheck_func_W_HOOKSHOT() {
    return dComIfGs_getItem(SLOT_10, true) == W_HOOKSHOT ? TRUE : FALSE;
}

int item_getcheck_func_KANTERA() {
    return dComIfGs_getItem(SLOT_1, true) == KANTERA ? TRUE : FALSE;
}

int item_getcheck_func_LIGHT_SWORD() {
    return dComIfGs_isCollectSword(COLLECT_LIGHT_SWORD);
}

/* 8009A0C8-8009A1FC 094A08 0134+00 7/6 0/0 0/0 .text item_getcheck_func_FISHING_ROD_1__Fv */
int item_getcheck_func_FISHING_ROD_1() {
    return (dComIfGs_getItem(SLOT_20, true) == FISHING_ROD_1 ||
            dComIfGs_getItem(SLOT_20, true) == BEE_ROD ||
            dComIfGs_getItem(SLOT_20, true) == WORM_ROD ||
            dComIfGs_getItem(SLOT_20, true) == JEWEL_ROD ||
            dComIfGs_getItem(SLOT_20, true) == JEWEL_BEE_ROD ||
            dComIfGs_getItem(SLOT_20, true) == JEWEL_WORM_ROD) ?
               TRUE :
               FALSE;
}

int item_getcheck_func_PACHINKO() {
    return dComIfGs_getItem(SLOT_23, true) == PACHINKO ? TRUE : FALSE;
}

int item_getcheck_func_COPY_ROD_2() {
    return -1;
}

int item_getcheck_func_BOMB_BAG_LV2() {
    return dComIfGs_isItemFirstBit(BOMB_BAG_LV2);
}

int item_getcheck_func_BOMB_BAG_LV1() {
    return dComIfGs_isItemFirstBit(BOMB_BAG_LV1);
}

int item_getcheck_func_BOMB_IN_BAG() {
    return dComIfGs_isItemFirstBit(BOMB_IN_BAG);
}

int item_getcheck_func_LIGHT_ARROW() {
    return dComIfGs_isItemFirstBit(LIGHT_ARROW);
}

int item_getcheck_func_ARROW_LV1() {
    return (dComIfGs_getItem(SLOT_4, false) == BOW && dComIfGs_getArrowMax() >= 30) ? TRUE : FALSE;
}

int item_getcheck_func_ARROW_LV2() {
    return (dComIfGs_getItem(SLOT_4, false) == BOW && dComIfGs_getArrowMax() >= 60) ? TRUE : FALSE;
}

int item_getcheck_func_ARROW_LV3() {
    return (dComIfGs_getItem(SLOT_4, false) == BOW && dComIfGs_getArrowMax() >= 100) ? TRUE : FALSE;
}

int item_getcheck_func_LURE_ROD() {
    return -1;
}

int item_getcheck_func_BOMB_ARROW() {
    return -1;
}

int item_getcheck_func_HAWK_ARROW() {
    return -1;
}

int item_getcheck_func_BEE_ROD() {
    return item_getcheck_func_FISHING_ROD_1();
}

int item_getcheck_func_JEWEL_ROD() {
    return item_getcheck_func_FISHING_ROD_1();
}

int item_getcheck_func_WORM_ROD() {
    return item_getcheck_func_FISHING_ROD_1();
}

int item_getcheck_func_JEWEL_BEE_ROD() {
    return item_getcheck_func_FISHING_ROD_1();
}

int item_getcheck_func_JEWEL_WORM_ROD() {
    return item_getcheck_func_FISHING_ROD_1();
}

int item_getcheck_func_EMPTY_BOTTLE() {
    return dComIfGs_checkBottle(EMPTY_BOTTLE);
}

int item_getcheck_func_RED_BOTTLE() {
    return dComIfGs_checkBottle(RED_BOTTLE);
}

int item_getcheck_func_GREEN_BOTTLE() {
    return dComIfGs_checkBottle(GREEN_BOTTLE);
}

int item_getcheck_func_BLUE_BOTTLE() {
    return dComIfGs_checkBottle(BLUE_BOTTLE);
}

int item_getcheck_func_MILK_BOTTLE() {
    return dComIfGs_checkBottle(MILK_BOTTLE);
}

int item_getcheck_func_HALF_MILK_BOTTLE() {
    return dComIfGs_checkBottle(HALF_MILK_BOTTLE);
}

int item_getcheck_func_OIL_BOTTLE() {
    return dComIfGs_checkBottle(OIL_BOTTLE);
}

int item_getcheck_func_WATER_BOTTLE() {
    return dComIfGs_checkBottle(WATER_BOTTLE);
}

int item_getcheck_func_OIL_BOTTLE2() {
    return dComIfGs_checkBottle(OIL_BOTTLE_2);
}

int item_getcheck_func_RED_BOTTLE2() {
    return dComIfGs_checkBottle(RED_BOTTLE_2);
}

int item_getcheck_func_UGLY_SOUP() {
    return dComIfGs_checkBottle(UGLY_SOUP);
}

int item_getcheck_func_HOT_SPRING() {
    return dComIfGs_checkBottle(HOT_SPRING);
}

int item_getcheck_func_FAIRY_BOTTLE() {
    return dComIfGs_checkBottle(FAIRY);
}

int item_getcheck_func_HOT_SPRING2() {
    return dComIfGs_checkBottle(HOT_SPRING);
}

int item_getcheck_func_OIL2() {
    return dComIfGs_checkBottle(OIL2);
}

int item_getcheck_func_OIL() {
    return dComIfGs_checkBottle(OIL);
}

int item_getcheck_func_NORMAL_BOMB() {
    return dComIfGs_isItemFirstBit(NORMAL_BOMB);
}

int item_getcheck_func_WATER_BOMB() {
    return dComIfGs_isItemFirstBit(WATER_BOMB);
}

int item_getcheck_func_POKE_BOMB() {
    return dComIfGs_isItemFirstBit(POKE_BOMB);
}

int item_getcheck_func_FAIRY_DROP() {
    return dComIfGs_checkBottle(FAIRY_DROP);
}

int item_getcheck_func_WORM() {
    return dComIfGs_checkBottle(WORM);
}

int item_getcheck_func_DROP_BOTTLE() {
    return dComIfGs_isItemFirstBit(DROP_BOTTLE);
}

int item_getcheck_func_BEE_CHILD() {
    return -1;
}

int item_getcheck_func_CHUCHU_RARE() {
    return dComIfGs_checkBottle(CHUCHU_RARE);
}

int item_getcheck_func_CHUCHU_RED() {
    return dComIfGs_checkBottle(CHUCHU_RED);
}

int item_getcheck_func_CHUCHU_BLUE() {
    return dComIfGs_checkBottle(CHUCHU_BLUE);
}

int item_getcheck_func_CHUCHU_GREEN() {
    return dComIfGs_checkBottle(CHUCHU_GREEN);
}

int item_getcheck_func_CHUCHU_YELLOW() {
    return dComIfGs_checkBottle(CHUCHU_YELLOW);
}

int item_getcheck_func_CHUCHU_PURPLE() {
    return dComIfGs_checkBottle(CHUCHU_PURPLE);
}

int item_getcheck_func_LV1_SOUP() {
    return dComIfGs_isItemFirstBit(LV1_SOUP);
}

int item_getcheck_func_LV2_SOUP() {
    return dComIfGs_isItemFirstBit(LV2_SOUP);
}

int item_getcheck_func_LV3_SOUP() {
    return dComIfGs_isItemFirstBit(LV3_SOUP);
}

int item_getcheck_func_LETTER() {
    return dComIfGs_getItem(SLOT_21, true) == LETTER ? TRUE : FALSE;
}

int item_getcheck_func_BILL() {
    return dComIfGs_getItem(SLOT_21, true) == BILL ? TRUE : FALSE;
}

int item_getcheck_func_WOOD_STATUE() {
    return dComIfGs_getItem(SLOT_21, true) == WOOD_STATUE ? TRUE : FALSE;
}

int item_getcheck_func_IRIAS_PENDANT() {
    return dComIfGs_getItem(SLOT_21, true) == IRIAS_PENDANT ? TRUE : FALSE;
}

int item_getcheck_func_HORSE_FLUTE() {
    return dComIfGs_getItem(SLOT_22, true) == HORSE_FLUTE ? TRUE : FALSE;
}

int item_getcheck_func_RAFRELS_MEMO() {
    return dComIfGs_getItem(SLOT_19, true) == RAFRELS_MEMO ? TRUE : FALSE;
}

int item_getcheck_func_ASHS_SCRIBBLING() {
    return dComIfGs_getItem(SLOT_19, true) == ASHS_SCRIBBLING ? TRUE : FALSE;
}

int item_getcheck_func_CHUCHU_YELLOW2() {
    return dComIfGs_checkBottle(CHUCHU_YELLOW2);
}

int item_getcheck_func_OIL_BOTTLE3() {
    return -1;
}

int item_getcheck_func_SHOP_BEE_CHILD() {
    return -1;
}

int item_getcheck_func_CHUCHU_BLACK() {
    return dComIfGs_checkBottle(CHUCHU_BLACK);
}

int item_getcheck_func_LIGHT_DROP() {
    return dComIfGs_isItemFirstBit(LIGHT_DROP);
}

int item_getcheck_func_DROP_CONTAINER() {
    return dComIfGs_isLightDropGetFlag(FARON_VESSEL);
}

int item_getcheck_func_DROP_CONTAINER02() {
    return dComIfGs_isLightDropGetFlag(ELDIN_VESSEL);
}

int item_getcheck_func_DROP_CONTAINER03() {
    return dComIfGs_isLightDropGetFlag(LANAYRU_VESSEL);
}

int item_getcheck_func_FILLED_CONTAINER() {
    return -1;
}

int item_getcheck_func_MIRROR_PIECE_2() {
    return -1;
}

int item_getcheck_func_MIRROR_PIECE_3() {
    return -1;
}

int item_getcheck_func_MIRROR_PIECE_4() {
    return -1;
}

int item_getcheck_func_SMELL_YELIA_POUCH() {
    return dComIfGs_getCollectSmell() == SMELL_YELIA_POUCH ? TRUE : FALSE;
}

int item_getcheck_func_SMELL_PUMPKIN() {
    return -1;
}

int item_getcheck_func_SMELL_POH() {
    return dComIfGs_getCollectSmell() == SMELL_POH ? TRUE : FALSE;
}

int item_getcheck_func_SMELL_FISH() {
    return dComIfGs_getCollectSmell() == SMELL_FISH ? TRUE : FALSE;
}

int item_getcheck_func_SMELL_CHILDREN() {
    return dComIfGs_getCollectSmell() == SMELL_CHILDREN ? TRUE : FALSE;
}

int item_getcheck_func_SMELL_MEDICINE() {
    return dComIfGs_getCollectSmell() == SMELL_MEDICINE ? TRUE : FALSE;
}

int item_getcheck_func_M_BEETLE() {
    return dComIfGs_isItemFirstBit(M_BEETLE);
}

int item_getcheck_func_F_BEETLE() {
    return dComIfGs_isItemFirstBit(F_BEETLE);
}

int item_getcheck_func_M_BUTTERFLY() {
    return dComIfGs_isItemFirstBit(M_BUTTERFLY);
}

int item_getcheck_func_F_BUTTERFLY() {
    return dComIfGs_isItemFirstBit(F_BUTTERFLY);
}

int item_getcheck_func_M_STAG_BEETLE() {
    return dComIfGs_isItemFirstBit(M_STAG_BEETLE);
}

int item_getcheck_func_F_STAG_BEETLE() {
    return dComIfGs_isItemFirstBit(F_STAG_BEETLE);
}

int item_getcheck_func_M_GRASSHOPPER() {
    return dComIfGs_isItemFirstBit(M_GRASSHOPPER);
}

int item_getcheck_func_F_GRASSHOPPER() {
    return dComIfGs_isItemFirstBit(F_GRASSHOPPER);
}

int item_getcheck_func_M_NANAFUSHI() {
    return dComIfGs_isItemFirstBit(M_NANAFUSHI);
}

int item_getcheck_func_F_NANAFUSHI() {
    return dComIfGs_isItemFirstBit(F_NANAFUSHI);
}

int item_getcheck_func_M_DANGOMUSHI() {
    return dComIfGs_isItemFirstBit(M_DANGOMUSHI);
}

int item_getcheck_func_F_DANGOMUSHI() {
    return dComIfGs_isItemFirstBit(F_DANGOMUSHI);
}

int item_getcheck_func_M_MANTIS() {
    return dComIfGs_isItemFirstBit(M_MANTIS);
}

int item_getcheck_func_F_MANTIS() {
    return dComIfGs_isItemFirstBit(F_MANTIS);
}

int item_getcheck_func_M_LADYBUG() {
    return dComIfGs_isItemFirstBit(M_LADYBUG);
}

int item_getcheck_func_F_LADYBUG() {
    return dComIfGs_isItemFirstBit(F_LADYBUG);
}

int item_getcheck_func_M_SNAIL() {
    return dComIfGs_isItemFirstBit(M_SNAIL);
}

int item_getcheck_func_F_SNAIL() {
    return dComIfGs_isItemFirstBit(F_SNAIL);
}

int item_getcheck_func_M_DRAGONFLY() {
    return dComIfGs_isItemFirstBit(M_DRAGONFLY);
}

int item_getcheck_func_F_DRAGONFLY() {
    return dComIfGs_isItemFirstBit(F_DRAGONFLY);
}

int item_getcheck_func_M_ANT() {
    return dComIfGs_isItemFirstBit(M_ANT);
}

int item_getcheck_func_F_ANT() {
    return dComIfGs_isItemFirstBit(F_ANT);
}

int item_getcheck_func_M_MAYFLY() {
    return dComIfGs_isItemFirstBit(M_MAYFLY);
}

int item_getcheck_func_F_MAYFLY() {
    return dComIfGs_isItemFirstBit(F_MAYFLY);
}

int item_getcheck_func_POU_SPIRIT() {
    return dComIfGs_getPohSpiritNum();
}

int item_getcheck_func_ANCIENT_DOCUMENT() {
    return dComIfGs_getItem(SLOT_22, true) == ANCIENT_DOCUMENT ? TRUE : FALSE;
}

int item_getcheck_func_AIR_LETTER() {
    return dComIfGs_getItem(SLOT_22, true) == AIR_LETTER ? TRUE : FALSE;
}

int item_getcheck_func_ANCIENT_DOCUMENT2() {
    return dComIfGs_getItem(SLOT_22, true) == ANCIENT_DOCUMENT2 ? TRUE : FALSE;
}

int item_getcheck_func_LV7_DUNGEON_EXIT() {
    return dComIfGs_getItem(SLOT_18, true) == LV7_DUNGEON_EXIT ? TRUE : FALSE;
}

int item_getcheck_func_LINKS_SAVINGS() {
    return -1;
}

int item_getcheck_func_SMALL_KEY2() {
    return -1;
}

int item_getcheck_func_POU_FIRE1() {
    return -1;
}

int item_getcheck_func_POU_FIRE2() {
    return -1;
}

int item_getcheck_func_POU_FIRE3() {
    return -1;
}

int item_getcheck_func_POU_FIRE4() {
    return -1;
}

int item_getcheck_func_BOSSRIDER_KEY() {
    return -1;
}

int item_getcheck_func_TOMATO_PUREE() {
    return dComIfGs_isItemFirstBit(TOMATO_PUREE);
}

int item_getcheck_func_TASTE() {
    return dComIfGs_isItemFirstBit(TASTE);
}

int item_getcheck_func_LV5_BOSS_KEY() {
    return dComIfGs_isDungeonItemBossKey();
}

int item_getcheck_func_SURFBOARD() {
    return -1;
}

int item_getcheck_func_KANTERA2() {
    return -1;
}

int item_getcheck_func_L2_KEY_PIECES1() {
    return dComIfGs_isItemFirstBit(L2_KEY_PIECES1);
}

int item_getcheck_func_L2_KEY_PIECES2() {
    return dComIfGs_isItemFirstBit(L2_KEY_PIECES2);
}

int item_getcheck_func_L2_KEY_PIECES3() {
    return dComIfGs_isItemFirstBit(L2_KEY_PIECES3);
}

int item_getcheck_func_KEY_OF_CARAVAN() {
    return dComIfGs_isItemFirstBit(KEY_OF_CARAVAN);
}

int item_getcheck_func_LV2_BOSS_KEY() {
    return dComIfGs_isDungeonItemBossKey();
}

int item_getcheck_func_KEY_OF_FILONE() {
    return dComIfGs_getKeyNum();
}

int isBomb(u8 i_itemNo) {
    int is_bomb = false;

    if (i_itemNo == BOMB_5 || i_itemNo == BOMB_10 || i_itemNo == BOMB_20 || i_itemNo == BOMB_30 ||
        i_itemNo == NORMAL_BOMB | i_itemNo == WATER_BOMB || i_itemNo == POKE_BOMB)
    {
        is_bomb = true;
    }

    return is_bomb;
}

int isArrow(u8 i_itemNo) {
    int is_arrow = false;

    if (i_itemNo == ARROW_1 || i_itemNo == ARROW_10 || i_itemNo == ARROW_20 || i_itemNo == ARROW_30)
    {
        is_arrow = true;
    }

    return is_arrow;
}

/* 8009B708-8009B77C 096048 0074+00 0/0 4/4 1/1 .text            isBottleItem__FUc */
BOOL isBottleItem(u8 i_itemNo) {
    switch (i_itemNo) {
    case OIL_BOTTLE3:
    case EMPTY_BOTTLE:
    case RED_BOTTLE:
    case GREEN_BOTTLE:
    case BLUE_BOTTLE:
    case MILK_BOTTLE:
    case HALF_MILK_BOTTLE:
    case OIL_BOTTLE:
    case WATER_BOTTLE:
    case OIL_BOTTLE_2:
    case RED_BOTTLE_2:
    case UGLY_SOUP:
    case HOT_SPRING:
    case FAIRY:
    case FAIRY_DROP:
    case WORM:
    case BEE_CHILD:
    case CHUCHU_RARE:
    case CHUCHU_RED:
    case CHUCHU_BLUE:
    case CHUCHU_GREEN:
    case CHUCHU_YELLOW:
    case CHUCHU_PURPLE:
    case LV1_SOUP:
    case LV2_SOUP:
    case LV3_SOUP:
    case CHUCHU_BLACK:
    case POU_FIRE1:
    case POU_FIRE2:
    case POU_FIRE3:
    case POU_FIRE4:
        return TRUE;
    default:
        return FALSE;
    }
}

BOOL isHeart(u8 i_itemNo) {
    BOOL is_heart = false;

    if (i_itemNo == HEART || i_itemNo == TRIPLE_HEART) {
        is_heart = true;
    }

    return is_heart;
}

bool isInsect(u8 i_itemNo) {
    bool is_insect = false;

    switch (i_itemNo) {
    case M_BEETLE:
    case F_BEETLE:
    case M_BUTTERFLY:
    case F_BUTTERFLY:
    case M_STAG_BEETLE:
    case F_STAG_BEETLE:
    case M_GRASSHOPPER:
    case F_GRASSHOPPER:
    case M_NANAFUSHI:
    case F_NANAFUSHI:
    case M_DANGOMUSHI:
    case F_DANGOMUSHI:
    case M_MANTIS:
    case F_MANTIS:
    case M_LADYBUG:
    case F_LADYBUG:
    case M_SNAIL:
    case F_SNAIL:
    case M_DRAGONFLY:
    case F_DRAGONFLY:
    case M_ANT:
    case F_ANT:
    case M_MAYFLY:
    case F_MAYFLY:
        is_insect = true;
    }

    return is_insect;
}

u8 check_itemno(int i_itemNo) {
    if (!dComIfGs_isGetMagicUseFlag() && (i_itemNo == S_MAGIC || i_itemNo == L_MAGIC)) {
        return GREEN_RUPEE;
    }

    if (i_itemNo == ARROW_1) {
        if (!dComIfGs_isItemFirstBit(BOW)) {
            return GREEN_RUPEE;
        }
    } else {
        if (isArrow(i_itemNo)) {
            if (!dComIfGs_isItemFirstBit(BOW)) {
                return GREEN_RUPEE;
            }

            if (g_dComIfG_gameInfo.play.getLayerNo(0) == 0xD ||
                g_dComIfG_gameInfo.play.getLayerNo(0) == 0xE)
            {
                const char* stage_name = dComIfGp_getStartStageName();
                // D_MN08: Palace of Twilight
                if (strncmp(stage_name, "D_MN08", 6)) {
                    return GREEN_RUPEE;
                }
            }
        }
    }

    if (!dComIfGs_isItemFirstBit(BOMB_BAG_LV1) && isBomb(i_itemNo)) {
        return GREEN_RUPEE;
    } else {
        if (i_itemNo == TRIPLE_HEART) {
            i_itemNo = HEART;
        }
        if (!checkItemGet(PACHINKO, 1) && i_itemNo == PACHINKO_SHOT) {
            i_itemNo = GREEN_RUPEE;
        }
        if (i_itemNo == S_MAGIC || i_itemNo == L_MAGIC) {
            i_itemNo = GREEN_RUPEE;
        }
    }
    return i_itemNo;
}

/* 8009B940-8009BBD8 096280 0298+00 11/11 0/0 0/0 .text            addBombCount__FUcUc */
int addBombCount(u8 i_bombType, u8 i_addNum) {
    u8 bombType[3];
    int bombNum[3];

    for (u8 i = 0; i < 3; i++) {
        bombType[i] = dComIfGs_getItem(i + SLOT_15, false);

        if (bombType[i] == BOMB_BAG_LV1) {
            bombNum[i] = 0;
        } else if (bombType[i] == i_bombType) {
            bombNum[i] = dComIfGs_getBombNum(i);
        } else {
            bombNum[i] = -1;
        }
    }

    for (u8 i = 0; i < 3; i++) {
        int bombIdx = -1;
        int var_r22 = -1;

        for (u8 j = 0; j < 3; j++) {
            if (bombNum[j] == 0) {
                bombIdx = j;
                var_r22 = 0;
            }
        }

        for (u8 k = 0; k < 3; k++) {
            if (bombNum[k] > 0 && bombNum[k] > var_r22 &&
                bombNum[k] != dComIfGs_getBombMax(bombType[k]))
            {
                bombIdx = k;
                var_r22 = bombNum[k];
            }
        }

        if (bombIdx == -1) {
            return i_addNum;
        } else if (var_r22 == 0) {
            if (dComIfGs_getBombMax(i_bombType) >= i_addNum) {
                dComIfGs_setEmptyBombBagItemIn(i_bombType, i_addNum, true);
                return 0;
            } else {
                dComIfGs_setEmptyBombBagItemIn(i_bombType, i_addNum, true);
                i_addNum = i_addNum - dComIfGs_getBombMax(i_bombType);
            }
        } else {
            if (dComIfGs_getBombMax(bombType[bombIdx]) >= var_r22 + i_addNum) {
                dComIfGp_setItemBombNumCount(bombIdx, i_addNum);
                return 0;
            } else {
                dComIfGp_setItemBombNumCount(bombIdx, i_addNum);
                i_addNum = i_addNum - (dComIfGs_getBombMax(bombType[bombIdx]) - var_r22);
            }
        }

        bombNum[bombIdx] = dComIfGs_getBombMax(bombType[bombIdx]);
    }

    return i_addNum;
}

/* 80450F90-80450F98 000490 0004+04 0/0 2/2 0/0 .sbss            mData__12dEnemyItem_c */
u8* dEnemyItem_c::mData;