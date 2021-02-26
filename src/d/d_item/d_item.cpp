#include "d/d_item/d_item/d_item.h"
#include "d/d_com/d_com_inf_game/d_com_inf_game.h"
#include "global.h"
#include "msl_c/string.h"

extern "C" {
int checkItemGet__FUci(u8, int);
int item_getcheck_func_FISHING_ROD_1(void);
u16 dComIfGs_getMaxLifeGauge(void);
u32 getBombNum__21dSv_player_item_max_cCFUc(u8);
u32 isMagicFlag__21dSv_player_status_a_cCFUc(u8);
u8 getBombNum__24dSv_player_item_record_cCFUc(u8);
void addBombCount(u8, u8);
void dComIfG_play_c_NS_getLayerNo(int);
void dComIfG_play_c_NS_setItemBombNumCount(u8, s16);
void dComIfGs_setSelectEquipClothes(u8);
void dComIfGs_setSelectEquipShield(u8);
void dComIfGs_setSelectEquipSword(u8);
void dMeter2Info_setSword(u8, bool);
void getItem__17dSv_player_item_cCFib(void);
void isFirstBit__21dSv_player_get_item_cCFUc(void);
void onDungeonItem__12dSv_memBit_cFi(int);
void onSwitch__10dSv_info_cFii(int, int);
void setBottleNum__24dSv_player_item_record_cFUcUc(u8, u8);
void setCollect__20dSv_player_collect_cFiUc(int, u8);
void setEmptyBombBagItemIn__17dSv_player_item_cFUcUcb(u8, bool);
void setEmptyBottleItemIn__17dSv_player_item_cFUc(u8);
}

extern f32 lbl_80452BD8;
extern f32 lbl_80452BDC;
extern f64 lbl_80452BE0;
extern u8 lbl_80450D64;
extern u8 lbl_8037B0D0[0x8];

struct unkEvent {  // figure out what this is later
    u16 unk0[0x11A];
    u8 unk565;
    u16 unk566;
    u8 unk567[0x439];
};
extern unkEvent lbl_803A7288;

inline void dComIfGp_setItemLifeCount(float amount, u8 unk) {
    g_dComIfG_gameInfo.getPlay().setItemLifeCount(amount, unk);
}
inline void dComIfGp_setItemRupeeCount(long amount) {
    g_dComIfG_gameInfo.getPlay().setItemRupeeCount(amount);
}
inline int dComIfGs_isItemFirstBit(u8 i_no) {
    return g_dComIfG_gameInfo.getSaveFile().getPlayerGetItem().isFirstBit(i_no);
}

void execItemGet(u8 item_id) {
    getItemFunc(item_id);
}

int checkItemGet(u8 item_id, int param_2) {
    int checkItem = getCheckItemFunc(item_id);
    if (checkItem == -1) {
        checkItem = param_2;
    }
    return checkItem;
}

void item_func_HEART(void) {
    dComIfGp_setItemLifeCount(lbl_80452BD8, 0);
}

void item_func_GREEN_RUPEE(void) {
    dComIfGp_setItemRupeeCount(1);
}

void item_func_BLUE_RUPEE(void) {
    dComIfGp_setItemRupeeCount(5);
}

void item_func_YELLOW_RUPEE(void) {
    dComIfGp_setItemRupeeCount(10);
}

void item_func_RED_RUPEE(void) {
    dComIfGp_setItemRupeeCount(20);
}

void item_func_PURPLE_RUPEE(void) {
    dComIfGp_setItemRupeeCount(50);
}

void item_func_ORANGE_RUPEE(void) {
    dComIfGp_setItemRupeeCount(100);
}

void item_func_SILVER_RUPEE(void) {
    dComIfGp_setItemRupeeCount(200);
}

void item_func_S_MAGIC(void) {
    dComIfGp_setItemMagicCount(4);
}

void item_func_L_MAGIC(void) {
    dComIfGp_setItemMagicCount(8);
}

void item_func_BOMB_5(void) {
    addBombCount(NORMAL_BOMB, 5);
}

void item_func_BOMB_10(void) {
    addBombCount(NORMAL_BOMB, 10);
}

void item_func_BOMB_20(void) {
    addBombCount(NORMAL_BOMB, 20);
}

void item_func_BOMB_30(void) {
    addBombCount(NORMAL_BOMB, 30);
}

void item_func_ARROW_10(void) {
    dComIfGp_setItemArrowNumCount(10);
}

void item_func_ARROW_20(void) {
    dComIfGp_setItemArrowNumCount(20);
}

void item_func_ARROW_30(void) {
    dComIfGp_setItemArrowNumCount(30);
}

void item_func_ARROW_1(void) {
    dComIfGp_setItemArrowNumCount(1);
}

void item_func_PACHINKO_SHOT(void) {
    dComIfGp_setItemPachinkoNumCount(50);
}

void item_func_WATER_BOMB_5(void) {
    addBombCount(WATER_BOMB, 5);
}

void item_func_WATER_BOMB_10(void) {
    addBombCount(WATER_BOMB, 10);
}

void item_func_WATER_BOMB_20(void) {
    addBombCount(WATER_BOMB, 15);
}

void item_func_WATER_BOMB_30(void) {
    addBombCount(WATER_BOMB, 3);
}

void item_func_BOMB_INSECT_5(void) {
    addBombCount(POKE_BOMB, 5);
}

void item_func_BOMB_INSECT_10(void) {
    addBombCount(POKE_BOMB, 10);
}

void item_func_BOMB_INSECT_20(void) {
    addBombCount(POKE_BOMB, 3);
}

void item_func_BOMB_INSECT_30(void) {
    return;
}

void item_func_RECOVER_FAILY(void) {
    dComIfGp_setItemLifeCount(lbl_80452BDC, 0);
}

void item_func_TRIPLE_HEART(void) {
    return;
}

void item_func_SMALL_KEY(void) {
    dComIfGp_setItemKeyNumCount(1);
}

void item_func_KAKERA_HEART(void) {
    dComIfGp_setItemMaxLifeCount(1);
}

asm void item_func_UTUWA_HEART(void) {
    nofralloc
#include "d/d_item/d_item/asm/func_800982B4.s"
}

void item_func_MAP(void) {
    dComIfGs_onDungeonItemMap();
}

void item_func_COMPUS(void) {
    dComIfGs_onDungeonItemCompass();
}

void item_func_DUNGEON_EXIT(void) {
    dComIfGs_onDungeonItemWarp();
    dComIfGs_setItem(SLOT_18, DUNGEON_EXIT);
}

void item_func_BOSS_KEY(void) {
    dComIfGs_onDungeonItemBossKey();
}

void item_func_DUNGEON_BACK(void) {
    dComIfGs_setItem(SLOT_18, DUNGEON_BACK);
}

void item_func_SWORD(void) {
    dComIfGs_setCollectSword(ORDON_SWORD_FLAG);
    dComIfGs_setSelectEquipSword(SWORD);
}

void item_func_MASTER_SWORD(void) {
    dComIfGs_setCollectSword(MASTER_SWORD_FLAG);
    dComIfGs_setSelectEquipSword(MASTER_SWORD);
}

void item_func_WOOD_SHIELD(void) {
    dComIfGs_setCollectShield(ORDON_SHIELD_FLAG);
    dComIfGs_setSelectEquipShield(WOOD_SHIELD);
}

void item_func_SHIELD(void) {
    return;
}

void item_func_HYLIA_SHIELD(void) {
    return;
}

void item_func_TKS_LETTER(void) {
    dComIfGs_setItem(SLOT_18, TKS_LETTER);
}

void item_func_WEAR_CASUAL(void) {
    dComIfGs_setSelectEquipClothes(WEARS_CASUAL);
}

void item_func_WEAR_KOKIRI(void) {
    dComIfGs_setCollectClothes(KOKIRI_CLOTHES_FLAG);
    dComIfGs_setSelectEquipClothes(WEAR_KOKIRI);
}

void item_func_ARMOR(void) {
    return;
}

void item_func_WEAR_ZORA(void) {
    return;
}

void item_func_MAGIC_LV1(void) {
    dComIfGp_setItemMagicCount(16);
    dComIfGp_setItemMaxMagicCount(16);
}

void item_func_DUNGEON_EXIT_2(void) {
    dComIfGs_setItem(SLOT_18, DUNGEON_EXIT);
}

void item_func_WALLET_LV1(void) {
    dComIfGs_setWalletSize(WALLET);
}

void item_func_WALLET_LV2(void) {
    dComIfGs_setWalletSize(BIG_WALLET);
}

void item_func_WALLET_LV3(void) {
    dComIfGs_setWalletSize(GIANT_WALLET);
}

void item_func_ZORAS_JEWEL(void) {
    int checkFishingRod;

    checkFishingRod = item_getcheck_func_FISHING_ROD_1();
    if (checkFishingRod != 0) {
        dComIfGs_setRodTypeLevelUp();
    } else {
        dComIfGs_setItem(SLOT_20, ZORAS_JEWEL);
    }
}

void item_func_HAWK_EYE(void) {
    dComIfGs_setItem(SLOT_5, HAWK_EYE);
}

#ifdef NONMATCHING
void item_func_WOOD_STICK(void) {
    dComIfGs_setCollectSword(WOODEN_SWORD_FLAG);
    dComIfGs_setSelectEquipSword(WOOD_STICK);
    dComIfGs_onSwitch(28, lbl_80450D64);  // wrong order
}
#else
asm void item_func_WOOD_STICK(void) {
    nofralloc
#include "d/d_item/d_item/asm/func_800986C4.s"
}
#endif

void item_func_BOOMERANG(void) {
    dComIfGs_setItem(SLOT_0, BOOMERANG);
}

void item_func_SPINNER(void) {
    dComIfGs_setItem(SLOT_2, SPINNER);
}

void item_func_IRONBALL(void) {
    dComIfGs_setItem(SLOT_6, IRONBALL);
}

void item_func_BOW(void) {
    dComIfGs_setItem(SLOT_4, BOW);
    dComIfGs_setArrowNum(30);
    dComIfGs_setArrowMax(30);
}

void item_func_HOOKSHOT(void) {
    dComIfGs_setItem(SLOT_9, HOOKSHOT);
}

void item_func_HVY_BOOTS(void) {
    dComIfGs_setItem(SLOT_3, HVY_BOOTS);
}

void item_func_COPY_ROD(void) {
    dComIfGs_setItem(SLOT_8, COPY_ROD);
}

void item_func_W_HOOKSHOT(void) {
    dComIfGs_setItem(SLOT_9, NO_ITEM);
    dComIfGs_setItem(SLOT_10, W_HOOKSHOT);
}

void item_func_KANTERA(void) {
    dComIfGs_setMaxOil(21600);
    dComIfGs_setOil(21600);
    dComIfGs_setItem(SLOT_1, KANTERA);
}

void item_func_LIGHT_SWORD(void) {
    dComIfGs_setCollectSword(LIGHT_SWORD_FLAG);
    dMeter2Info_setSword(LIGHT_SWORD, 0);
}

void item_func_FISHING_ROD_1(void) {
    dComIfGs_setItem(SLOT_20, FISHING_ROD_1);
}

void item_func_PACHINKO(void) {
    u8 pachinko_max = dComIfGs_getPachinkoMax();
    dComIfGp_setItemPachinkoNumCount(pachinko_max);
    dComIfGs_setItem(SLOT_23, PACHINKO);
}

void item_func_COPY_ROD_2(void) {
    dComIfGs_setItem(SLOT_8, COPY_ROD);
}

void item_func_BOMB_BAG_LV2(void) {
    return;
}

void item_func_BOMB_BAG_LV1(void) {
    dComIfGs_setEmptyBombBag(NORMAL_BOMB, 30);
}

void item_func_BOMB_IN_BAG(void) {
    dComIfGs_setEmptyBombBag(NORMAL_BOMB, 30);
}

void item_func_LIGHT_ARROW(void) {
    dComIfGs_setItem(SLOT_4, LIGHT_ARROW);
}

void item_func_ARROW_LV1(void) {
    dComIfGs_setArrowNum(60);
    dComIfGs_setArrowMax(60);
}

void item_func_ARROW_LV2(void) {
    dComIfGs_setArrowNum(60);
    dComIfGs_setArrowMax(60);
}

void item_func_ARROW_LV3(void) {
    dComIfGs_setArrowNum(100);
    dComIfGs_setArrowMax(100);
}

void item_func_LURE_ROD(void) {
    return;
}

void item_func_BOMB_ARROW(void) {
    return;
}

void item_func_HAWK_ARROW(void) {
    return;
}

void item_func_BEE_ROD(void) {
    return;
}

void item_func_JEWEL_ROD(void) {
    return;
}

void item_func_WORM_ROD(void) {
    return;
}

void item_func_JEWEL_BEE_ROD(void) {
    return;
}

void item_func_JEWEL_WORM_ROD(void) {
    return;
}

void item_func_EMPTY_BOTTLE(void) {
    dComIfGs_setEmptyBottle();
}

void item_func_RED_BOTTLE(void) {
    dComIfGs_setEmptyBottleItemIn(RED_BOTTLE);
}

void item_func_GREEN_BOTTLE(void) {
    dComIfGs_setEmptyBottleItemIn(GREEN_BOTTLE);
}

void item_func_BLUE_BOTTLE(void) {
    dComIfGs_setEmptyBottleItemIn(BLUE_BOTTLE);
}

void item_func_MILK_BOTTLE(void) {
    dComIfGs_setEmptyBottleItemIn(MILK_BOTTLE);
}

void item_func_HALF_MILK_BOTTLE(void) {
    dComIfGs_setEmptyBottle(HALF_MILK_BOTTLE);
}

void item_func_OIL_BOTTLE(void) {
    dComIfGs_setEmptyBottleItemIn(OIL_BOTTLE);
}

void item_func_WATER_BOTTLE(void) {
    dComIfGs_setEmptyBottleItemIn(WATER_BOTTLE);
}

void item_func_OIL_BOTTLE2(void) {
    dComIfGs_setEmptyBottleItemIn(OIL_BOTTLE);
}

void item_func_RED_BOTTLE2(void) {
    dComIfGs_setEmptyBottleItemIn(RED_BOTTLE);
}

void item_func_UGLY_SOUP(void) {
    dComIfGs_setEmptyBottleItemIn(UGLY_SOUP);
}

void item_func_HOT_SPRING(void) {
    dComIfGs_setEmptyBottleItemIn(HOT_SPRING);
}

void item_func_FAIRY_BOTTLE(void) {
    dComIfGs_setEmptyBottleItemIn(FAIRY);
}

void item_func_HOT_SPRING2(void) {
    dComIfGs_setEmptyBottleItemIn(HOT_SPRING);
}

void item_func_OIL2(void) {
    return;
}

void item_func_OIL(void) {
    return;
}

void item_func_NORMAL_BOMB(void) {
    dComIfGs_setEmptyBombBag(NORMAL_BOMB, 60);
}

void item_func_WATER_BOMB(void) {
    dComIfGs_setEmptyBombBag();
    dComIfGs_setEmptyBombBagItemIn(WATER_BOMB, true);
}

void item_func_POKE_BOMB(void) {
    dComIfGs_setEmptyBombBag();
    dComIfGs_setEmptyBombBagItemIn(POKE_BOMB, true);
}

void item_func_FAIRY_DROP(void) {
    dComIfGs_setEmptyBottleItemIn(FAIRY_DROP);
}

void item_func_WORM(void) {
    return;
}

void item_func_DROP_BOTTLE(void) {
    dComIfGs_setEmptyBottle(FAIRY_DROP);
}

asm void item_func_BEE_CHILD(void) {
    nofralloc
#include "d/d_item/d_item/asm/func_80098EE4.s"
}

void item_func_CHUCHU_RARE(void) {
    dComIfGs_setEmptyBottleItemIn(CHUCHU_RARE);
}

void item_func_CHUCHU_RED(void) {
    dComIfGs_setEmptyBottleItemIn(CHUCHU_RED);
}

void item_func_CHUCHU_BLUE(void) {
    dComIfGs_setEmptyBottleItemIn(CHUCHU_BLUE);
}

void item_func_CHUCHU_GREEN(void) {
    dComIfGs_setEmptyBottleItemIn(CHUCHU_GREEN);
}

void item_func_CHUCHU_YELLOW(void) {
    dComIfGs_setEmptyBottleItemIn(CHUCHU_YELLOW);
}

void item_func_CHUCHU_PURPLE(void) {
    dComIfGs_setEmptyBottleItemIn(CHUCHU_PURPLE);
}

void item_func_LV1_SOUP(void) {
    dComIfGs_setEmptyBottleItemIn(LV1_SOUP);
}

void item_func_LV2_SOUP(void) {
    dComIfGs_setEmptyBottleItemIn(LV2_SOUP);
}

void item_func_LV3_SOUP(void) {
    dComIfGs_setEmptyBottleItemIn(LV3_SOUP);
}

void item_func_LETTER(void) {
    dComIfGs_setItem(SLOT_21, LETTER);
}

void item_func_BILL(void) {
    dComIfGs_setItem(SLOT_21, BILL);
}

void item_func_WOOD_STATUE(void) {
    dComIfGs_onEventBit(lbl_803A7288.unk566);
    dComIfGs_setItem(SLOT_21, WOOD_STATUE);
}

void item_func_IRIAS_PENDANT(void) {
    dComIfGs_setItem(SLOT_21, IRIAS_PENDANT);
}

void item_func_HORSE_FLUTE(void) {
    dComIfGs_setItem(SLOT_21, HORSE_FLUTE);
}

void item_func_RAFRELS_MEMO(void) {
    dComIfGs_setItem(SLOT_19, RAFRELS_MEMO);
}

void item_func_ASHS_SCRIBBLING(void) {
    dComIfGs_setItem(SLOT_19, ASHS_SCRIBBLING);
}

void item_func_CHUCHU_YELLOW2(void) {
    dComIfGs_setEmptyBottleItemIn(CHUCHU_YELLOW);
}

void item_func_OIL_BOTTLE3(void) {
    dComIfGs_setEmptyBottle(OIL_BOTTLE);
}

void item_func_SHOP_BEE_CHILD(void) {
    item_func_BEE_CHILD();
}

void item_func_CHUCHU_BLACK(void) {
    dComIfGs_setEmptyBottleItemIn(CHUCHU_BLACK);
}

void item_func_LIGHT_DROP(void) {
    return;
}

void item_func_DROP_CONTAINER(void) {
    dComIfGs_onLightDropFlag(FARON_VESSEL);
}

void item_func_DROP_CONTAINER02(void) {
    dComIfGs_onLightDropFlag(ELDIN_VESSEL);
}

void item_func_DROP_CONTAINER03(void) {
    dComIfGs_onLightDropFlag(LANAYRU_VESSEL);
}

void item_func_FILLED_CONTAINER(void) {
    return;
}

void item_func_MIRROR_PIECE_2(void) {
    return;
}

void item_func_MIRROR_PIECE_3(void) {
    return;
}

void item_func_MIRROR_PIECE_4(void) {
    return;
}

void item_func_SMELL_YELIA_POUCH(void) {
    return;
}

void item_func_SMELL_PUMPKIN(void) {
    return;
}

void item_func_SMELL_POH(void) {
    return;
}

void item_func_SMELL_FISH(void) {
    return;
}

void item_func_SMELL_CHILDREN(void) {
    return;
}

void item_func_SMELL_MEDICINE(void) {
    return;
}

void item_func_M_BEETLE(void) {
    return;
}

void item_func_F_BEETLE(void) {
    return;
}

void item_func_M_BUTTERFLY(void) {
    return;
}

void item_func_F_BUTTERFLY(void) {
    return;
}

void item_func_M_STAG_BEETLE(void) {
    return;
}

void item_func_F_STAG_BEETLE(void) {
    return;
}

void item_func_M_GRASSHOPPER(void) {
    return;
}

void item_func_F_GRASSHOPPER(void) {
    return;
}

void item_func_M_NANAFUSHI(void) {
    return;
}

void item_func_F_NANAFUSHI(void) {
    return;
}

void item_func_M_DANGOMUSHI(void) {
    return;
}

void item_func_F_DANGOMUSHI(void) {
    return;
}

void item_func_M_MANTIS(void) {
    return;
}

void item_func_F_MANTIS(void) {
    return;
}

void item_func_M_LADYBUG(void) {
    return;
}

void item_func_F_LADYBUG(void) {
    return;
}

void item_func_M_SNAIL(void) {
    return;
}

void item_func_F_SNAIL(void) {
    return;
}

void item_func_M_DRAGONFLY(void) {
    return;
}

void item_func_F_DRAGONFLY(void) {
    return;
}

void item_func_M_ANT(void) {
    return;
}

void item_func_F_ANT(void) {
    return;
}

void item_func_M_MAYFLY(void) {
    return;
}

void item_func_F_MAYFLY(void) {
    return;
}

void item_func_POU_SPIRIT(void) {
    return;
}

void item_func_ANCIENT_DOCUMENT(void) {
    dComIfGs_setItem(SLOT_22, ANCIENT_DOCUMENT);
}

void item_func_AIR_LETTER(void) {
    dComIfGs_setItem(SLOT_22, AIR_LETTER);
}

void item_func_ANCIENT_DOCUMENT2(void) {
    dComIfGs_setItem(SLOT_22, ANCIENT_DOCUMENT2);
}

void item_func_LV7_DUNGEON_EXIT(void) {
    dComIfGs_setItem(SLOT_18, LV7_DUNGEON_EXIT);
}

void item_func_LINKS_SAVINGS(void) {
    dComIfGp_setItemRupeeCount(50);
}

void item_func_SMALL_KEY2(void) {
    dComIfGp_setItemKeyNumCount(1);
}

void item_func_POU_FIRE1(void) {
    return;
}

void item_func_POU_FIRE2(void) {
    return;
}

void item_func_POU_FIRE3(void) {
    return;
}

void item_func_POU_FIRE4(void) {
    return;
}

void item_func_BOSSRIDER_KEY(void) {
    return;
}

void item_func_TOMATO_PUREE(void) {
    return;
}

void item_func_TASTE(void) {
    return;
}

void item_func_LV5_BOSS_KEY(void) {
    dComIfGs_onDungeonItemBossKey();
}

void item_func_SURFBOARD(void) {
    return;
}

void item_func_KANTERA2(void) {
    return;
}

void item_func_L2_KEY_PIECES1(void) {
    return;
}

void item_func_L2_KEY_PIECES2(void) {
    return;
}

void item_func_L2_KEY_PIECES3(void) {
    return;
}

void item_func_KEY_OF_CARAVAN(void) {
    return;
}

void item_func_LV2_BOSS_KEY(void) {
    dComIfGs_onDungeonItemBossKey();
}

void item_func_KEY_OF_FILONE(void) {
    dComIfGp_setItemKeyNumCount(1);
}

void item_func_noentry(void) {
    return;
}

int item_getcheck_func_noentry(void) {
    return -1;
}

int item_getcheck_func_HEART(void) {
    return -1;
}

int item_getcheck_func_GREEN_RUPEE(void) {
    return dComIfGs_isItemFirstBit(GREEN_RUPEE);
}

int item_getcheck_func_BLUE_RUPEE(void) {
    return dComIfGs_isItemFirstBit(BLUE_RUPEE);
}

int item_getcheck_func_YELLOW_RUPEE(void) {
    return dComIfGs_isItemFirstBit(YELLOW_RUPEE);
}

int item_getcheck_func_RED_RUPEE(void) {
    return dComIfGs_isItemFirstBit(RED_RUPEE);
}

int item_getcheck_func_PURPLE_RUPEE(void) {
    return dComIfGs_isItemFirstBit(PURPLE_RUPEE);
}

int item_getcheck_func_ORANGE_RUPEE(void) {
    return dComIfGs_isItemFirstBit(ORANGE_RUPEE);
}

int item_getcheck_func_SILVER_RUPEE(void) {
    return dComIfGs_isItemFirstBit(SILVER_RUPEE);
}

int item_getcheck_func_S_MAGIC(void) {
    return -1;
}

int item_getcheck_func_L_MAGIC(void) {
    return -1;
}

int item_getcheck_func_BOMB_5(void) {
    return dComIfGs_isItemFirstBit(BOMB_5);
}

int item_getcheck_func_BOMB_10(void) {
    return dComIfGs_isItemFirstBit(BOMB_10);
}

int item_getcheck_func_BOMB_20(void) {
    return dComIfGs_isItemFirstBit(BOMB_20);
}

int item_getcheck_func_BOMB_30(void) {
    return dComIfGs_isItemFirstBit(BOMB_30);
}

int item_getcheck_func_ARROW_10(void) {
    return dComIfGs_isItemFirstBit(ARROW_10);
}

int item_getcheck_func_ARROW_20(void) {
    return dComIfGs_isItemFirstBit(ARROW_20);
}

int item_getcheck_func_ARROW_30(void) {
    return dComIfGs_isItemFirstBit(ARROW_30);
}

int item_getcheck_func_ARROW_1(void) {
    return dComIfGs_isItemFirstBit(ARROW_1);
}

int item_getcheck_func_PACHINKO_SHOT(void) {
    return dComIfGs_isItemFirstBit(PACHINKO_SHOT);
}

int item_getcheck_func_WATER_BOMB_5(void) {
    return -1;
}

int item_getcheck_func_WATER_BOMB_10(void) {
    return -1;
}

int item_getcheck_func_WATER_BOMB_20(void) {
    return -1;
}

int item_getcheck_func_WATER_BOMB_30(void) {
    return -1;
}

int item_getcheck_func_BOMB_INSECT_5(void) {
    return -1;
}

int item_getcheck_func_BOMB_INSECT_10(void) {
    return dComIfGs_isItemFirstBit(BOMB_INSECT_10);
}

int item_getcheck_func_BOMB_INSECT_20(void) {
    return dComIfGs_isItemFirstBit(BOMB_INSECT_20);
}

int item_getcheck_func_BOMB_INSECT_30(void) {
    return dComIfGs_isItemFirstBit(BOMB_INSECT_30);
}

int item_getcheck_func_RECOVER_FAILY(void) {
    return -1;
}

int item_getcheck_func_TRIPLE_HEART(void) {
    return -1;
}

int item_getcheck_func_SMALL_KEY(void) {
    return -1;
}

int item_getcheck_func_KAKERA_HEART(void) {
    return -1;
}

int item_getcheck_func_UTUWA_HEART(void) {
    return -1;
}

bool item_getcheck_func_MAP(void) {
    return dComIfGs_isDungeonItemMap();
}

int item_getcheck_func_COMPUS(void) {
    return -1;
}

bool item_getcheck_func_DUNGEON_EXIT(void) {
    return dComIfGs_getItem(SLOT_18, true) == DUNGEON_EXIT;
}

bool item_getcheck_func_BOSS_KEY(void) {
    return dComIfGs_isDungeonItemBossKey();
}

bool item_getcheck_func_DUNGEON_BACK(void) {
    return dComIfGs_getItem(SLOT_18, true) == DUNGEON_BACK;
}

BOOL item_getcheck_func_SWORD(void) {
    return dComIfGs_isCollectSword(ORDON_SWORD_FLAG);
}

BOOL item_getcheck_func_MASTER_SWORD(void) {
    return dComIfGs_isCollectSword(MASTER_SWORD_FLAG);
}

int item_getcheck_func_WOOD_SHIELD(void) {
    return dComIfGs_isItemFirstBit(WOOD_SHIELD);
}

int item_getcheck_func_SHIELD(void) {
    return dComIfGs_isItemFirstBit(SHIELD);
}

int item_getcheck_func_HYLIA_SHIELD(void) {
    return dComIfGs_isItemFirstBit(HYLIA_SHIELD);
}

bool item_getcheck_func_TKS_LETTER(void) {
    return dComIfGs_getItem(SLOT_18, true) == TKS_LETTER;
}

int item_getcheck_func_WEAR_CASUAL(void) {
    return dComIfGs_isItemFirstBit(WEARS_CASUAL);
}

BOOL item_getcheck_func_WEAR_KOKIRI(void) {
    return dComIfGs_isCollectClothing(KOKIRI_CLOTHES_FLAG);
}

int item_getcheck_func_ARMOR(void) {
    return dComIfGs_isItemFirstBit(ARMOR);
}

int item_getcheck_func_WEAR_ZORA(void) {
    return dComIfGs_isItemFirstBit(WEAR_ZORA);
}

int item_getcheck_func_MAGIC_LV1(void) {
    return -1;
}

bool item_getcheck_func_DUNGEON_EXIT_2(void) {
    return dComIfGs_getItem(SLOT_18, true) == DUNGEON_EXIT;
}

int item_getcheck_func_WALLET_LV1(void) {
    return -1;
}

int item_getcheck_func_WALLET_LV2(void) {
    return -1;
}

int item_getcheck_func_WALLET_LV3(void) {
    return -1;
}

bool item_getcheck_func_ZORAS_JEWEL(void) {
    return dComIfGs_getItem(SLOT_20, true) == ZORAS_JEWEL;
}

int item_getcheck_func_HAWK_EYE(void) {
    return dComIfGs_isItemFirstBit(HAWK_EYE);
}

int item_getcheck_func_WOOD_STICK(void) {
    return dComIfGs_isItemFirstBit(WOOD_STICK);
}

bool item_getcheck_func_BOOMERANG(void) {
    return dComIfGs_getItem(SLOT_0, true) == BOOMERANG;
}

bool item_getcheck_func_SPINNER(void) {
    return dComIfGs_getItem(SLOT_2, true) == SPINNER;
}

bool item_getcheck_func_IRONBALL(void) {
    return dComIfGs_getItem(SLOT_6, true) == IRONBALL;
}

bool item_getcheck_func_BOW(void) {
    return dComIfGs_getItem(SLOT_4, false) == BOW;
}

bool item_getcheck_func_HOOKSHOT(void) {
    return dComIfGs_getItem(SLOT_9, true) == HOOKSHOT;
}

bool item_getcheck_func_HVY_BOOTS(void) {
    return dComIfGs_getItem(SLOT_3, true) == HVY_BOOTS;
}

bool item_getcheck_func_COPY_ROD(void) {
    return dComIfGs_getItem(SLOT_8, true) == COPY_ROD;
}

bool item_getcheck_func_W_HOOKSHOT(void) {
    return dComIfGs_getItem(SLOT_10, true) == W_HOOKSHOT;
}

bool item_getcheck_func_KANTERA(void) {
    return dComIfGs_getItem(SLOT_1, true) == KANTERA;
}

BOOL item_getcheck_func_LIGHT_SWORD(void) {
    return dComIfGs_isCollectSword(LIGHT_SWORD_FLAG);
}

asm int item_getcheck_func_FISHING_ROD_1(void) {
    nofralloc
#include "d/d_item/d_item/asm/func_8009A0C8.s"
}

bool item_getcheck_func_PACHINKO(void) {
    return dComIfGs_getItem(SLOT_23, true) == PACHINKO;
}

int item_getcheck_func_COPY_ROD_2(void) {
    return -1;
}

int item_getcheck_func_BOMB_BAG_LV2(void) {
    return dComIfGs_isItemFirstBit(BOMB_BAG_LV2);
}

int item_getcheck_func_BOMB_BAG_LV1(void) {
    return dComIfGs_isItemFirstBit(BOMB_BAG_LV1);
}

int item_getcheck_func_BOMB_IN_BAG(void) {
    return dComIfGs_isItemFirstBit(BOMB_IN_BAG);
}

int item_getcheck_func_LIGHT_ARROW(void) {
    return dComIfGs_isItemFirstBit(LIGHT_ARROW);
}

int item_getcheck_func_ARROW_LV1(void) {
    return (dComIfGs_getItem(SLOT_4, false) == BOW && dComIfGs_getArrowMax() >= 30) ? 1 : 0;
}

int item_getcheck_func_ARROW_LV2(void) {
    return (dComIfGs_getItem(SLOT_4, false) == BOW && dComIfGs_getArrowMax() >= 60) ? 1 : 0;
}

int item_getcheck_func_ARROW_LV3(void) {
    return (dComIfGs_getItem(SLOT_4, false) == BOW && dComIfGs_getArrowMax() >= 100) ? 1 : 0;
}

int item_getcheck_func_LURE_ROD(void) {
    return -1;
}

int item_getcheck_func_BOMB_ARROW(void) {
    return -1;
}

int item_getcheck_func_HAWK_ARROW(void) {
    return -1;
}

BOOL item_getcheck_func_BEE_ROD(void) {
    return item_getcheck_func_FISHING_ROD_1();
}

BOOL item_getcheck_func_JEWEL_ROD(void) {
    return item_getcheck_func_FISHING_ROD_1();
}

BOOL item_getcheck_func_WORM_ROD(void) {
    return item_getcheck_func_FISHING_ROD_1();
}

BOOL item_getcheck_func_JEWEL_BEE_ROD(void) {
    return item_getcheck_func_FISHING_ROD_1();
}

BOOL item_getcheck_func_JEWEL_WORM_ROD(void) {
    return item_getcheck_func_FISHING_ROD_1();
}

int item_getcheck_func_EMPTY_BOTTLE(void) {
    return dComIfGs_checkBottle(EMPTY_BOTTLE);
}

int item_getcheck_func_RED_BOTTLE(void) {
    return dComIfGs_checkBottle(RED_BOTTLE);
}

int item_getcheck_func_GREEN_BOTTLE(void) {
    return dComIfGs_checkBottle(GREEN_BOTTLE);
}

int item_getcheck_func_BLUE_BOTTLE(void) {
    return dComIfGs_checkBottle(BLUE_BOTTLE);
}

int item_getcheck_func_MILK_BOTTLE(void) {
    return dComIfGs_checkBottle(MILK_BOTTLE);
}

int item_getcheck_func_HALF_MILK_BOTTLE(void) {
    return dComIfGs_checkBottle(HALF_MILK_BOTTLE);
}

int item_getcheck_func_OIL_BOTTLE(void) {
    return dComIfGs_checkBottle(OIL_BOTTLE);
}

int item_getcheck_func_WATER_BOTTLE(void) {
    return dComIfGs_checkBottle(WATER_BOTTLE);
}

int item_getcheck_func_OIL_BOTTLE2(void) {
    return dComIfGs_checkBottle(OIL_BOTTLE_2);
}

int item_getcheck_func_RED_BOTTLE2(void) {
    return dComIfGs_checkBottle(RED_BOTTLE_2);
}

int item_getcheck_func_UGLY_SOUP(void) {
    return dComIfGs_checkBottle(UGLY_SOUP);
}

int item_getcheck_func_HOT_SPRING(void) {
    return dComIfGs_checkBottle(HOT_SPRING);
}

int item_getcheck_func_FAIRY_BOTTLE(void) {
    return dComIfGs_checkBottle(FAIRY);
}

int item_getcheck_func_HOT_SPRING2(void) {
    return dComIfGs_checkBottle(HOT_SPRING);
}

int item_getcheck_func_OIL2(void) {
    return dComIfGs_checkBottle(OIL2);
}

int item_getcheck_func_OIL(void) {
    return dComIfGs_checkBottle(OIL);
}

int item_getcheck_func_NORMAL_BOMB(void) {
    return dComIfGs_isItemFirstBit(NORMAL_BOMB);
}

int item_getcheck_func_WATER_BOMB(void) {
    return dComIfGs_isItemFirstBit(WATER_BOMB);
}

int item_getcheck_func_POKE_BOMB(void) {
    return dComIfGs_isItemFirstBit(POKE_BOMB);
}

int item_getcheck_func_FAIRY_DROP(void) {
    return dComIfGs_checkBottle(FAIRY_DROP);
}

int item_getcheck_func_WORM(void) {
    return dComIfGs_checkBottle(WORM);
}

int item_getcheck_func_DROP_BOTTLE(void) {
    return dComIfGs_isItemFirstBit(DROP_BOTTLE);
}

int item_getcheck_func_BEE_CHILD(void) {
    return -1;
}

int item_getcheck_func_CHUCHU_RARE(void) {
    return dComIfGs_checkBottle(CHUCHU_RARE);
}

int item_getcheck_func_CHUCHU_RED(void) {
    return dComIfGs_checkBottle(CHUCHU_RED);
}

int item_getcheck_func_CHUCHU_BLUE(void) {
    return dComIfGs_checkBottle(CHUCHU_BLUE);
}

int item_getcheck_func_CHUCHU_GREEN(void) {
    return dComIfGs_checkBottle(CHUCHU_GREEN);
}

int item_getcheck_func_CHUCHU_YELLOW(void) {
    return dComIfGs_checkBottle(CHUCHU_YELLOW);
}

int item_getcheck_func_CHUCHU_PURPLE(void) {
    return dComIfGs_checkBottle(CHUCHU_PURPLE);
}

int item_getcheck_func_LV1_SOUP(void) {
    return dComIfGs_isItemFirstBit(LV1_SOUP);
}

int item_getcheck_func_LV2_SOUP(void) {
    return dComIfGs_isItemFirstBit(LV2_SOUP);
}

int item_getcheck_func_LV3_SOUP(void) {
    return dComIfGs_isItemFirstBit(LV3_SOUP);
}

bool item_getcheck_func_LETTER(void) {
    return dComIfGs_getItem(SLOT_21, true) == LETTER;
}

bool item_getcheck_func_BILL(void) {
    return dComIfGs_getItem(SLOT_21, true) == BILL;
}

bool item_getcheck_func_WOOD_STATUE(void) {
    return dComIfGs_getItem(SLOT_21, true) == WOOD_STATUE;
}

bool item_getcheck_func_IRIAS_PENDANT(void) {
    return dComIfGs_getItem(SLOT_21, true) == IRIAS_PENDANT;
}

bool item_getcheck_func_HORSE_FLUTE(void) {
    return dComIfGs_getItem(SLOT_22, true) == HORSE_FLUTE;
}

bool item_getcheck_func_RAFRELS_MEMO(void) {
    return dComIfGs_getItem(SLOT_19, true) == RAFRELS_MEMO;
}

bool item_getcheck_func_ASHS_SCRIBBLING(void) {
    return dComIfGs_getItem(SLOT_19, true) == ASHS_SCRIBBLING;
}

int item_getcheck_func_CHUCHU_YELLOW2(void) {
    return dComIfGs_checkBottle(CHUCHU_YELLOW2);
}

int item_getcheck_func_OIL_BOTTLE3(void) {
    return -1;
}

int item_getcheck_func_SHOP_BEE_CHILD(void) {
    return -1;
}

int item_getcheck_func_CHUCHU_BLACK(void) {
    return dComIfGs_checkBottle(CHUCHU_BLACK);
}

int item_getcheck_func_LIGHT_DROP(void) {
    return dComIfGs_isItemFirstBit(LIGHT_DROP);
}

BOOL item_getcheck_func_DROP_CONTAINER(void) {
    return dComIfGs_isLightDropGetFlag(FARON_VESSEL);
}

BOOL item_getcheck_func_DROP_CONTAINER02(void) {
    return dComIfGs_isLightDropGetFlag(ELDIN_VESSEL);
}

BOOL item_getcheck_func_DROP_CONTAINER03(void) {
    return dComIfGs_isLightDropGetFlag(LANAYRU_VESSEL);
}

int item_getcheck_func_FILLED_CONTAINER(void) {
    return -1;
}

int item_getcheck_func_MIRROR_PIECE_2(void) {
    return -1;
}

int item_getcheck_func_MIRROR_PIECE_3(void) {
    return -1;
}

int item_getcheck_func_MIRROR_PIECE_4(void) {
    return -1;
}

bool item_getcheck_func_SMELL_YELIA_POUCH(void) {
    return dComIfGs_getCollectSmell() == SMELL_YELIA_POUCH;
}

int item_getcheck_func_SMELL_PUMPKIN(void) {
    return -1;
}

bool item_getcheck_func_SMELL_POH(void) {
    return dComIfGs_getCollectSmell() == SMELL_POH;
}

bool item_getcheck_func_SMELL_FISH(void) {
    return dComIfGs_getCollectSmell() == SMELL_FISH;
}

bool item_getcheck_func_SMELL_CHILDREN(void) {
    return dComIfGs_getCollectSmell() == SMELL_CHILDREN;
}

bool item_getcheck_func_SMELL_MEDICINE(void) {
    return dComIfGs_getCollectSmell() == SMELL_MEDICINE;
}

int item_getcheck_func_M_BEETLE(void) {
    return dComIfGs_isItemFirstBit(M_BEETLE);
}

int item_getcheck_func_F_BEETLE(void) {
    return dComIfGs_isItemFirstBit(F_BEETLE);
}

int item_getcheck_func_M_BUTTERFLY(void) {
    return dComIfGs_isItemFirstBit(M_BUTTERFLY);
}

int item_getcheck_func_F_BUTTERFLY(void) {
    return dComIfGs_isItemFirstBit(F_BUTTERFLY);
}

int item_getcheck_func_M_STAG_BEETLE(void) {
    return dComIfGs_isItemFirstBit(M_STAG_BEETLE);
}

int item_getcheck_func_F_STAG_BEETLE(void) {
    return dComIfGs_isItemFirstBit(F_STAG_BEETLE);
}

int item_getcheck_func_M_GRASSHOPPER(void) {
    return dComIfGs_isItemFirstBit(M_GRASSHOPPER);
}

int item_getcheck_func_F_GRASSHOPPER(void) {
    return dComIfGs_isItemFirstBit(F_GRASSHOPPER);
}

int item_getcheck_func_M_NANAFUSHI(void) {
    return dComIfGs_isItemFirstBit(M_NANAFUSHI);
}

int item_getcheck_func_F_NANAFUSHI(void) {
    return dComIfGs_isItemFirstBit(F_NANAFUSHI);
}

int item_getcheck_func_M_DANGOMUSHI(void) {
    return dComIfGs_isItemFirstBit(M_DANGOMUSHI);
}

int item_getcheck_func_F_DANGOMUSHI(void) {
    return dComIfGs_isItemFirstBit(F_DANGOMUSHI);
}

int item_getcheck_func_M_MANTIS(void) {
    return dComIfGs_isItemFirstBit(M_MANTIS);
}

int item_getcheck_func_F_MANTIS(void) {
    return dComIfGs_isItemFirstBit(F_MANTIS);
}

int item_getcheck_func_M_LADYBUG(void) {
    return dComIfGs_isItemFirstBit(M_LADYBUG);
}

int item_getcheck_func_F_LADYBUG(void) {
    return dComIfGs_isItemFirstBit(F_LADYBUG);
}

int item_getcheck_func_M_SNAIL(void) {
    return dComIfGs_isItemFirstBit(M_SNAIL);
}

int item_getcheck_func_F_SNAIL(void) {
    return dComIfGs_isItemFirstBit(F_SNAIL);
}

int item_getcheck_func_M_DRAGONFLY(void) {
    return dComIfGs_isItemFirstBit(M_DRAGONFLY);
}

int item_getcheck_func_F_DRAGONFLY(void) {
    return dComIfGs_isItemFirstBit(F_DRAGONFLY);
}

int item_getcheck_func_M_ANT(void) {
    return dComIfGs_isItemFirstBit(M_ANT);
}

int item_getcheck_func_F_ANT(void) {
    return dComIfGs_isItemFirstBit(F_ANT);
}

int item_getcheck_func_M_MAYFLY(void) {
    return dComIfGs_isItemFirstBit(M_MAYFLY);
}

int item_getcheck_func_F_MAYFLY(void) {
    return dComIfGs_isItemFirstBit(F_MAYFLY);
}

int item_getcheck_func_POU_SPIRIT(void) {
    return dComIfGs_getPohSpiritNum();
}

bool item_getcheck_func_ANCIENT_DOCUMENT(void) {
    return dComIfGs_getItem(SLOT_22, true) == ANCIENT_DOCUMENT;
}

bool item_getcheck_func_AIR_LETTER(void) {
    return dComIfGs_getItem(SLOT_22, true) == AIR_LETTER;
}

bool item_getcheck_func_ANCIENT_DOCUMENT2(void) {
    return dComIfGs_getItem(SLOT_22, true) == ANCIENT_DOCUMENT2;
}

bool item_getcheck_func_LV7_DUNGEON_EXIT(void) {
    return dComIfGs_getItem(SLOT_18, true) == LV7_DUNGEON_EXIT;
}

int item_getcheck_func_LINKS_SAVINGS(void) {
    return -1;
}

int item_getcheck_func_SMALL_KEY2(void) {
    return -1;
}

int item_getcheck_func_POU_FIRE1(void) {
    return -1;
}

int item_getcheck_func_POU_FIRE2(void) {
    return -1;
}

int item_getcheck_func_POU_FIRE3(void) {
    return -1;
}

int item_getcheck_func_POU_FIRE4(void) {
    return -1;
}

int item_getcheck_func_BOSSRIDER_KEY(void) {
    return -1;
}

int item_getcheck_func_TOMATO_PUREE(void) {
    return dComIfGs_isItemFirstBit(TOMATO_PUREE);
}

int item_getcheck_func_TASTE(void) {
    return dComIfGs_isItemFirstBit(TASTE);
}

bool item_getcheck_func_LV5_BOSS_KEY(void) {
    return dComIfGs_isDungeonItemBossKey();
}

int item_getcheck_func_SURFBOARD(void) {
    return -1;
}

int item_getcheck_func_KANTERA2(void) {
    return -1;
}

int item_getcheck_func_L2_KEY_PIECES1(void) {
    return dComIfGs_isItemFirstBit(L2_KEY_PIECES1);
}

int item_getcheck_func_L2_KEY_PIECES2(void) {
    return dComIfGs_isItemFirstBit(L2_KEY_PIECES2);
}

int item_getcheck_func_L2_KEY_PIECES3(void) {
    return dComIfGs_isItemFirstBit(L2_KEY_PIECES3);
}

int item_getcheck_func_KEY_OF_CARAVAN(void) {
    return dComIfGs_isItemFirstBit(KEY_OF_CARAVAN);
}

bool item_getcheck_func_LV2_BOSS_KEY(void) {
    return dComIfGs_isDungeonItemBossKey();
}

int item_getcheck_func_KEY_OF_FILONE(void) {
    return dComIfGs_getKeyNum();
}

#ifdef NONMATCHING
int isBomb(u32 param1) {
    u32 uvar1;
    u32 uvar2;
    int ret;

    ret = 0;
    if ((u8)(param1 - 10) > 3) {
        uvar1 = __cntlzw(0x70 - (u8)param1);
        uvar2 = __cntlzw(0x71 - (u8)param1);

        if ((uvar1 | uvar2) == 0 && param1 == 0x72) {
            ret = 1;
        }
    }
    return ret;
}
#else
asm bool isBomb(u8 param1) {
    nofralloc
#include "d/d_item/d_item/asm/func_8009B688.s"
}
#endif

bool isArrow(u8 item_no) {
    bool is_arrow = false;

    if (item_no == ARROW_1 || item_no == ARROW_10 || item_no == ARROW_20 || item_no == ARROW_30) {
        is_arrow = true;
    }
    return is_arrow;
}

asm bool isBottleItem(u8 param1){nofralloc
#include "d/d_item/d_item/asm/func_8009B708.s"
}

BOOL isHeart(u8 item_no) {
    BOOL is_heart = false;

    if (item_no == HEART || item_no == TRIPLE_HEART) {
        is_heart = true;
    }
    return is_heart;
}

// close
#ifdef NONMATCHING
bool isInsect(u8 param1) {
    bool is_insect;

    is_insect = false;
    if (param1 < noentry53 && param1 < M_BEETLE) {
        is_insect = true;
    }
    return is_insect;
}
#else
asm bool isInsect(u8 param1) {
    nofralloc
#include "d/d_item/d_item/asm/func_8009B79C.s"
}
#endif

#ifdef NONMATCHING
int check_itemno(int param1) {
    if (dComIfGs_isGetMagicUseFlag() == 0 && (param1 == 8 || param1 == 9)) {
        param1 = 1;
        return param1;
    } else if (param1 == 0x11) {
        if (dComIfGs_isItemFirstBit(67) == false) {
            param1 = 1;
            return param1;
        }
    } else if (isArrow(param1)) {
        if (dComIfGs_isItemFirstBit(67) == false) {
            param1 = 1;
            return param1;
        }
    } else if (test_getLayerNo(0) != 0xd) {
        if (test_getLayerNo(0) == 0xe) {
        }
    }
    return param1;
}
#else
asm u32 check_itemno(int param1) {
    nofralloc
#include "d/d_item/d_item/asm/func_8009B7C4.s"
}
#endif

asm void addBombCount(u8 param1, u8 param2) {
    nofralloc
#include "d/d_item/d_item/asm/func_8009B940.s"
}