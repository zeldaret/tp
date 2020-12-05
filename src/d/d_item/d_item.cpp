#include "global.h"
#include "d/d_com/d_com_inf_game/d_com_inf_game.h"

asm void execItemGet(u8) {
    nofralloc
    #include "d/d_item/d_item/asm/func_80097E8C.s"
}

asm int checkItemGet(u8, int) {
    nofralloc
    #include "d/d_item/d_item/asm/func_80097EE0.s"
}

void item_func_HEART(void){
    g_dComIfG_gameInfo.give_item.hearts += lbl_80452BD8;
    g_dComIfG_gameInfo.unk35[0xBE] = 0;
}

void item_func_GREEN_RUPEE(void){
    g_dComIfG_gameInfo.give_item.rupees += 1;
}

void item_func_BLUE_RUPEE(void){
    g_dComIfG_gameInfo.give_item.rupees += 5;
}

void item_func_YELLOW_RUPEE(void){
    g_dComIfG_gameInfo.give_item.rupees += 10;
}

void item_func_RED_RUPEE(void){
    g_dComIfG_gameInfo.give_item.rupees += 20;
}

void item_func_PURPLE_RUPEE(void){
    g_dComIfG_gameInfo.give_item.rupees += 50;
}

void item_func_ORANGE_RUPEE(void){
    g_dComIfG_gameInfo.give_item.rupees += 100;
}

void item_func_SILVER_RUPEE(void){
    g_dComIfG_gameInfo.give_item.rupees += 200;
}

void item_func_S_MAGIC(void){
    g_dComIfG_gameInfo.give_item.magic += 4;
}

void item_func_L_MAGIC(void){
    g_dComIfG_gameInfo.give_item.magic += 8;
}

void item_func_BOMB_5(void){
    addBombCount(112, 5);
}

void item_func_BOMB_10(void){
    addBombCount(112, 10);
}

void item_func_BOMB_20(void){
    addBombCount(112, 20);
}

void item_func_BOMB_30(void){
    addBombCount(112, 30);
}

void item_func_ARROW_10(void){
    g_dComIfG_gameInfo.give_item.arrows += 10;
}

void item_func_ARROW_20(void){
    g_dComIfG_gameInfo.give_item.arrows += 20;
}

void item_func_ARROW_30(void){
    g_dComIfG_gameInfo.give_item.arrows += 30;
}

void item_func_ARROW_1(void){
    g_dComIfG_gameInfo.give_item.arrows += 1;
}

void item_func_PACHINKO_SHOT(void){
    g_dComIfG_gameInfo.give_item.seeds += 50;
}

void item_func_WATER_BOMB_5(void){
    addBombCount(113, 5);
}

void item_func_WATER_BOMB_10(void){
    addBombCount(113, 10);
}

void item_func_WATER_BOMB_20(void){
    addBombCount(113, 15);
}

void item_func_WATER_BOMB_30(void){
    addBombCount(113, 3);
}

void item_func_BOMB_INSECT_5(void){
    addBombCount(114, 5);
}

void item_func_BOMB_INSECT_10(void){
    addBombCount(114, 10);
}

void item_func_BOMB_INSECT_20(void){
    addBombCount(114, 3);
}

void item_func_BOMB_INSECT_30(void){
    return;
}

void item_func_RECOVER_FAILY(void){
    g_dComIfG_gameInfo.give_item.hearts += lbl_80452BDC;
    g_dComIfG_gameInfo.unk35[0xBE] = 0;
}

void item_func_TRIPLE_HEART(void){
    return;
}

void item_func_SMALL_KEY(void){
    g_dComIfG_gameInfo.give_item.small_keys += 1;
}

void item_func_KAKERA_HEART(void){
    g_dComIfG_gameInfo.give_item.kakera_heart += 1;
}

asm void item_func_UTUWA_HEART(void){
    nofralloc
    #include "d/d_item/d_item/asm/func_800982B4.s"
}

void item_func_MAP(void){
    g_dComIfG_gameInfo.memory.getTempFlags().onDungeonItem(0);
}

void item_func_COMPUS(void){
    g_dComIfG_gameInfo.memory.getTempFlags().onDungeonItem(1);
}

void item_func_DUNGEON_EXIT(void){
    g_dComIfG_gameInfo.memory.getTempFlags().onDungeonItem(6);
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setItem(18,37);
}

void item_func_BOSS_KEY(void){
    g_dComIfG_gameInfo.memory.getTempFlags().onDungeonItem(2);
}

void item_func_DUNGEON_BACK(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setItem(18,39);
}

void item_func_SWORD(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerCollect().setCollect(1,0);
    dComIfGs_setSelectEquipSword(40);
}

void item_func_MASTER_SWORD(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerCollect().setCollect(1,1);
    dComIfGs_setSelectEquipSword(41);
}

void item_func_WOOD_SHIELD(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerCollect().setCollect(2,0);
    dComIfGs_setSelectEquipShield(42);
}

void item_func_SHIELD(void){
    return;
}

void item_func_HYLIA_SHIELD(void){
    return;
}

void item_func_TKS_LETTER(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setItem(18,45);
}

void item_func_WEAR_CASUAL(void){
    dComIfGs_setSelectEquipClothes(46);
}

void item_func_WEAR_KOKIRI(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerCollect().setCollect(0,0);
    dComIfGs_setSelectEquipClothes(47);
}

void item_func_ARMOR(void){
    return;
}

void item_func_WEAR_ZORA(void){
    return;
}

void item_func_MAGIC_LV1(void){
    g_dComIfG_gameInfo.give_item.magic += 16;
    g_dComIfG_gameInfo.give_item.magic_lv += 16;
}

void item_func_DUNGEON_EXIT_2(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setItem(18,37);
}

void item_func_WALLET_LV1(void){
    g_dComIfG_gameInfo.save_file.setPlayerStatusAWallet(0);
}

void item_func_WALLET_LV2(void){
    g_dComIfG_gameInfo.save_file.setPlayerStatusAWallet(1);
}

void item_func_WALLET_LV3(void){
    g_dComIfG_gameInfo.save_file.setPlayerStatusAWallet(2);
}

void item_func_ZORAS_JEWEL(void){
    int checkFishingRod;

    checkFishingRod = item_getcheck_func_FISHING_ROD_1();
    if(checkFishingRod != 0){
        g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setRodTypeLevelUp();   
    }
    else{
        g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setItem(20,61);
    }
}

void item_func_HAWK_EYE(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setItem(5,62);
}

#ifdef NONMATCHING
void item_func_WOOD_STICK(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerCollect().setCollect(1,2);
    dComIfGs_setSelectEquipSword(63);
    //needs to be a onSwitch call here
}
#else
asm void item_func_WOOD_STICK(void) {
    nofralloc
    #include "d/d_item/d_item/asm/func_800986C4.s"
}
#endif

void item_func_BOOMERANG(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setItem(0,GALE_BOOMERANG);
}

void item_func_SPINNER(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setItem(2,SPINNER);
}

void item_func_IRONBALL(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setItem(6,BALL_AND_CHAIN);
}

// li r0, 0x1e instruction in wrong place
#ifdef NONMATCHING
void item_func_BOW(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setItem(4,HEROS_BOW);
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItemRecord().setBowAmount(30);
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItemMax().setBowCapacity(30);
}
#else
asm void item_func_BOW(void) {
    nofralloc
    #include "d/d_item/d_item/asm/func_800987B4.s"
}
#endif

void item_func_HOOKSHOT(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setItem(9,CLAWSHOT);
}

void item_func_HVY_BOOTS(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setItem(3,IRON_BOOTS);
}

void item_func_COPY_ROD(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setItem(8,DOMINION_ROD);
}

void item_func_W_HOOKSHOT(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setItem(9,NO_ITEM);
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setItem(10,DOUBLE_CLAWSHOTS);
}

void item_func_KANTERA(void){
    g_dComIfG_gameInfo.save_file.getPlayer().setPlayerStatusAOil(21600);
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setItem(1,LANTERN);
}

void item_func_LIGHT_SWORD(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerCollect().setCollect(1,3);
    dMeter2Info_setSword(73,0);
}

void item_func_FISHING_ROD_1(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setItem(20,FISHING_ROD);
}

void item_func_PACHINKO(void){
    g_dComIfG_gameInfo.give_item.seeds += 50;
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setItem(23,SLINGSHOT);
}

void item_func_COPY_ROD_2(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setItem(8,DOMINION_ROD);
}

void item_func_BOMB_BAG_LV2(void){
    return;
}

void item_func_BOMB_BAG_LV1(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setEmptyBombBag(112,30);
}

void item_func_BOMB_IN_BAG(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setEmptyBombBag(112,30);
}

void item_func_LIGHT_ARROW(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setItem(4,FIRE_ARROW);
}

// li r0, 0x3C instruction in wrong place
#ifdef NONMATCHING
void item_func_ARROW_LV1(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItemRecord().setBowAmount(60);
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItemMax().setBowCapacity(60);
}
#else
asm void item_func_ARROW_LV1(void) {
    nofralloc
    #include "d/d_item/d_item/asm/func_80098AB0.s"
}
#endif

// li r0, 0x3C instruction in wrong place
#ifdef NONMATCHING
void item_func_ARROW_LV2(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItemRecord().setBowAmount(60);
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItemMax().setBowCapacity(60);
}
#else
asm void item_func_ARROW_LV2(void) {
    nofralloc
    #include "d/d_item/d_item/asm/func_80098AB0.s" // didnt bother splitting as its exactly the same as LV1
}
#endif

// li r0, 0x64 instruction in wrong place
#ifdef NONMATCHING
void item_func_ARROW_LV3(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItemRecord().setBowAmount(100);
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItemMax().setBowCapacity(100);
}
#else
asm void item_func_ARROW_LV3(void) {
    nofralloc
    #include "d/d_item/d_item/asm/func_80098AE0.s"
}
#endif

void item_func_LURE_ROD(void){
    return;
}

void item_func_BOMB_ARROW(void){
    return;
}

void item_func_HAWK_ARROW(void){
    return;
}

void item_func_BEE_ROD(void){
    return;
}

void item_func_JEWEL_ROD(void){
    return;
}

void item_func_WORM_ROD(void){
    return;
}

void item_func_JEWEL_BEE_ROD(void){
    return;
}

void item_func_JEWEL_WORM_ROD(void){
    return;
}

void item_func_EMPTY_BOTTLE(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setEmptyBottle();
}

void item_func_RED_BOTTLE(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setEmptyBottleItemIn(97);
}

void item_func_GREEN_BOTTLE(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setEmptyBottleItemIn(98);
}

void item_func_BLUE_BOTTLE(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setEmptyBottleItemIn(99);
}

void item_func_MILK_BOTTLE(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setEmptyBottleItemIn(100);
}

void item_func_HALF_MILK_BOTTLE(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setEmptyBottle(101);
}

void item_func_OIL_BOTTLE(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setEmptyBottleItemIn(102);
}

void item_func_WATER_BOTTLE(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setEmptyBottleItemIn(103);
}

void item_func_OIL_BOTTLE2(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setEmptyBottleItemIn(102);
}

void item_func_RED_BOTTLE2(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setEmptyBottleItemIn(97);
}

void item_func_UGLY_SOUP(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setEmptyBottleItemIn(106);
}

void item_func_HOT_SPRING(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setEmptyBottleItemIn(107);
}

void item_func_FAIRY_BOTTLE(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setEmptyBottleItemIn(108);
}

void item_func_HOT_SPRING2(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setEmptyBottleItemIn(107);
}

void item_func_OIL2(void){
    return;
}

void item_func_OIL(void){
    return;
}

void item_func_NORMAL_BOMB(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setEmptyBombBag(112,60);
}

void item_func_WATER_BOMB(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setEmptyBombBag();
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setEmptyBombBagItemIn(113,1);
}

void item_func_POKE_BOMB(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setEmptyBombBag();
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setEmptyBombBagItemIn(114,1);
}

void item_func_FAIRY_DROP(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setEmptyBottleItemIn(115);
}

void item_func_WORM(void){
    return;
}

void item_func_DROP_BOTTLE(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setEmptyBottle(115);
}

asm void item_func_BEE_CHILD(void) {
    nofralloc
    #include "d/d_item/d_item/asm/func_80098EE4.s"
}

void item_func_CHUCHU_RARE(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setEmptyBottleItemIn(119);
}

void item_func_CHUCHU_RED(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setEmptyBottleItemIn(120);
}

void item_func_CHUCHU_BLUE(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setEmptyBottleItemIn(121);
}

void item_func_CHUCHU_GREEN(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setEmptyBottleItemIn(122);
}

void item_func_CHUCHU_YELLOW(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setEmptyBottleItemIn(123);
}

void item_func_CHUCHU_PURPLE(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setEmptyBottleItemIn(124);
}

void item_func_LV1_SOUP(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setEmptyBottleItemIn(125);
}

void item_func_LV2_SOUP(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setEmptyBottleItemIn(126);
}

void item_func_LV3_SOUP(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setEmptyBottleItemIn(127);
}

void item_func_LETTER(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setItem(21,RENADOS_LETTER);
}

void item_func_BILL(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setItem(21,INVOICE);
}

void item_func_WOOD_STATUE(void){
    g_dComIfG_gameInfo.save_file.getEventFlags().onEventBit(lbl_803A7288.unk566);
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setItem(21,WOODEN_STATUE);
}

void item_func_IRIAS_PENDANT(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setItem(21,ILIAS_CHARM);
}

void item_func_HORSE_FLUTE(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setItem(21,HORSE_CALL);
}

void item_func_RAFRELS_MEMO(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setItem(19,AURUS_MEMO);
}

void item_func_ASHS_SCRIBBLING(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setItem(19,ASHEIS_SKETCH);
}

void item_func_CHUCHU_YELLOW2(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setEmptyBottleItemIn(123);
}

void item_func_OIL_BOTTLE3(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setEmptyBottle(102);
}

void item_func_SHOP_BEE_CHILD(void){
    item_func_BEE_CHILD();
}

void item_func_CHUCHU_BLACK(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setEmptyBottleItemIn(159);
}

void item_func_LIGHT_DROP(void){
    return;
}

void item_func_DROP_CONTAINER(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getLightDrop().onLightDropGetFlag(0);
}

void item_func_DROP_CONTAINER02(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getLightDrop().onLightDropGetFlag(1);
}

void item_func_DROP_CONTAINER03(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getLightDrop().onLightDropGetFlag(2);
}

void item_func_FILLED_CONTAINER(void){
    return;
}

void item_func_MIRROR_PIECE_2(void){
    return;
}

void item_func_MIRROR_PIECE_3(void){
    return;
}

void item_func_MIRROR_PIECE_4(void){
    return;
}

void item_func_SMELL_YELIA_POUCH(void){
    return;
}

void item_func_SMELL_PUMPKIN(void){
    return;
}

void item_func_SMELL_POH(void){
    return;
}

void item_func_SMELL_FISH(void){
    return;
}

void item_func_SMELL_CHILDREN(void){
    return;
}

void item_func_SMELL_MEDICINE(void){
    return;
}

void item_func_M_BEETLE(void){
    return;
}

void item_func_F_BEETLE(void){
    return;
}

void item_func_M_BUTTERFLY(void){
    return;
}

void item_func_F_BUTTERFLY(void){
    return;
}

void item_func_M_STAG_BEETLE(void){
    return;
}

void item_func_F_STAG_BEETLE(void){
    return;
}

void item_func_M_GRASSHOPPER(void){
    return;
}

void item_func_F_GRASSHOPPER(void){
    return;
}

void item_func_M_NANAFUSHI(void){
    return;
}

void item_func_F_NANAFUSHI(void){
    return;
}

void item_func_M_DANGOMUSHI(void){
    return;
}

void item_func_F_DANGOMUSHI(void){
    return;
}

void item_func_M_MANTIS(void){
    return;
}

void item_func_F_MANTIS(void){
    return;
}

void item_func_M_LADYBUG(void){
    return;
}

void item_func_F_LADYBUG(void){
    return;
}

void item_func_M_SNAIL(void){
    return;
}

void item_func_F_SNAIL(void){
    return;
}

void item_func_M_DRAGONFLY(void){
    return;
}

void item_func_F_DRAGONFLY(void){
    return;
}

void item_func_M_ANT(void){
    return;
}

void item_func_F_ANT(void){
    return;
}

void item_func_M_MAYFLY(void){
    return;
}

void item_func_F_MAYFLY(void){
    return;
}

void item_func_POU_SPIRIT(void){
    return;
}

void item_func_ANCIENT_DOCUMENT(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setItem(22,ANCIENT_SKY_BOOK_EMPTY);
}

void item_func_AIR_LETTER(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setItem(22,ANCIENT_SKY_BOOK_PARTIAL);
}

void item_func_ANCIENT_DOCUMENT2(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setItem(22,ANCIENT_SKY_BOOK_FILLED);
}

void item_func_LV7_DUNGEON_EXIT(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().setItem(18,236);
}

void item_func_LINKS_SAVINGS(void){
    g_dComIfG_gameInfo.give_item.rupees += 50;
}

void item_func_SMALL_KEY2(void){
    g_dComIfG_gameInfo.give_item.small_keys += 1;
}

void item_func_POU_FIRE1(void){
    return;
}

void item_func_POU_FIRE2(void){
    return;
}

void item_func_POU_FIRE3(void){
    return;
}

void item_func_POU_FIRE4(void){
    return;
}

void item_func_BOSSRIDER_KEY(void){
    return;
}

void item_func_TOMATO_PUREE(void){
    return;
}

void item_func_TASTE(void){
    return;
}

void item_func_LV5_BOSS_KEY(void){
    g_dComIfG_gameInfo.memory.getTempFlags().onDungeonItem(2);
}

void item_func_SURFBOARD(void){
    return;
}

void item_func_KANTERA2(void){
    return;
}

void item_func_L2_KEY_PIECES1(void){
    return;
}

void item_func_L2_KEY_PIECES2(void){
    return;
}

void item_func_L2_KEY_PIECES3(void){
    return;
}

void item_func_KEY_OF_CARAVAN(void){
    return;
}

void item_func_LV2_BOSS_KEY(void){
    g_dComIfG_gameInfo.memory.getTempFlags().onDungeonItem(2);
}

void item_func_KEY_OF_FILONE(void){
    g_dComIfG_gameInfo.give_item.small_keys += 1;
}

void item_func_noentry(void){
    return;
}

u32 item_getcheck_func_noentry(void){
    return -1;
}

u32 item_getcheck_func_HEART(void){
    return -1;
}

void item_getcheck_func_GREEN_RUPEE(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(1);
}

void item_getcheck_func_BLUE_RUPEE(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(2);
}

void item_getcheck_func_YELLOW_RUPEE(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(3);
}

void item_getcheck_func_RED_RUPEE(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(4);
}

void item_getcheck_func_PURPLE_RUPEE(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(5);
}

void item_getcheck_func_ORANGE_RUPEE(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(6);
}

void item_getcheck_func_SILVER_RUPEE(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(7);
}

u32 item_getcheck_func_S_MAGIC(void){
    return -1;
}

u32 item_getcheck_func_L_MAGIC(void){
    return -1;
}

void item_getcheck_func_BOMB_5(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(10);
}

void item_getcheck_func_BOMB_10(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(11);
}

void item_getcheck_func_BOMB_20(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(12);
}

void item_getcheck_func_BOMB_30(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(13);
}

void item_getcheck_func_ARROW_10(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(14);
}

void item_getcheck_func_ARROW_20(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(15);
}

void item_getcheck_func_ARROW_30(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(16);
}

void item_getcheck_func_ARROW_1(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(17);
}

void item_getcheck_func_PACHINKO_SHOT(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(18);
}

u32 item_getcheck_func_WATER_BOMB_5(void){
    return -1;
}

u32 item_getcheck_func_WATER_BOMB_10(void){
    return -1;
}

u32 item_getcheck_func_WATER_BOMB_20(void){
    return -1;
}

u32 item_getcheck_func_WATER_BOMB_30(void){
    return -1;
}

u32 item_getcheck_func_BOMB_INSECT_5(void){
    return -1;
}

void item_getcheck_func_BOMB_INSECT_10(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(27);
}

void item_getcheck_func_BOMB_INSECT_20(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(28);
}

void item_getcheck_func_BOMB_INSECT_30(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(29);
}

u32 item_getcheck_func_RECOVER_FAILY(void){
    return -1;
}

u32 item_getcheck_func_TRIPLE_HEART(void){
    return -1;
}

u32 item_getcheck_func_SMALL_KEY(void){
    return -1;
}

u32 item_getcheck_func_KAKERA_HEART(void){
    return -1;
}

u32 item_getcheck_func_UTUWA_HEART(void){
    return -1;
}

bool item_getcheck_func_MAP(void){
    return g_dComIfG_gameInfo.memory.getTempFlags().isDungeonItem(0);
}

u32 item_getcheck_func_COMPUS(void){
    return -1;
}

asm u32 item_getcheck_func_DUNGEON_EXIT(void){
    nofralloc
    #include "d/d_item/d_item/asm/func_80099A70.s"
}

bool item_getcheck_func_BOSS_KEY(void){
    return g_dComIfG_gameInfo.memory.getTempFlags().isDungeonItem(2);
}

asm u32 item_getcheck_func_DUNGEON_BACK(void){
    nofralloc
    #include "d/d_item/d_item/asm/func_80099AE4.s"
}

void item_getcheck_func_SWORD(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerCollect().isCollect(1,0);
}

void item_getcheck_func_MASTER_SWORD(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerCollect().isCollect(1,1);
}

void item_getcheck_func_WOOD_SHIELD(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(42);
}

void item_getcheck_func_SHIELD(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(43);
}

void item_getcheck_func_HYLIA_SHIELD(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(44);
}

asm u32 item_getcheck_func_TKS_LETTER(void){
    nofralloc
    #include "d/d_item/d_item/asm/func_80099C20.s"
}

void item_getcheck_func_WEAR_CASUAL(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(46);
}

void item_getcheck_func_WEAR_KOKIRI(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerCollect().isCollect(0,0);
}

void item_getcheck_func_ARMOR(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(48);
}

void item_getcheck_func_WEAR_ZORA(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(49);
}

u32 item_getcheck_func_MAGIC_LV1(void){
    return -1;
}

asm u32 item_getcheck_func_DUNGEON_EXIT_2(void){
    nofralloc
    #include "d/d_item/d_item/asm/func_80099D30.s"
}

u32 item_getcheck_func_WALLET_LV1(void){
    return -1;
}

u32 item_getcheck_func_WALLET_LV2(void){
    return -1;
}

u32 item_getcheck_func_WALLET_LV3(void){
    return -1;
}

asm u32 item_getcheck_func_ZORAS_JEWEL(void){
    nofralloc
    #include "d/d_item/d_item/asm/func_80099D8C.s"
}

void item_getcheck_func_HAWK_EYE(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(62);
}

void item_getcheck_func_WOOD_STICK(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(63);
}

asm u32 item_getcheck_func_BOOMERANG(void){
    nofralloc
    #include "d/d_item/d_item/asm/func_80099E30.s"
}

asm u32 item_getcheck_func_SPINNER(void){
    nofralloc
    #include "d/d_item/d_item/asm/func_80099E74.s"
}

asm u32 item_getcheck_func_IRONBALL(void){
    nofralloc
    #include "d/d_item/d_item/asm/func_80099EB8.s"
}

asm u32 item_getcheck_func_BOW(void){
    nofralloc
    #include "d/d_item/d_item/asm/func_80099EFC.s"
}

asm u32 item_getcheck_func_HOOKSHOT(void){
    nofralloc
    #include "d/d_item/d_item/asm/func_80099F40.s"
}

asm u32 item_getcheck_func_HVY_BOOTS(void){
    nofralloc
    #include "d/d_item/d_item/asm/func_80099F84.s"
}

asm u32 item_getcheck_func_COPY_ROD(void){
    nofralloc
    #include "d/d_item/d_item/asm/func_80099FC8.s"
}

asm u32 item_getcheck_func_W_HOOKSHOT(void){
    nofralloc
    #include "d/d_item/d_item/asm/func_8009A00C.s"
}

asm u32 item_getcheck_func_KANTERA(void){
    nofralloc
    #include "d/d_item/d_item/asm/func_8009A050.s"
}

void item_getcheck_func_LIGHT_SWORD(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerCollect().isCollect(1,3);
}

asm u32 item_getcheck_func_FISHING_ROD_1(void){
    nofralloc
    #include "d/d_item/d_item/asm/func_8009A0C8.s"
}

asm u32 item_getcheck_func_PACHINKO(void){
    nofralloc
    #include "d/d_item/d_item/asm/func_8009A1FC.s"
}

u32 item_getcheck_func_COPY_ROD_2(void){
    return -1;
}

void item_getcheck_func_BOMB_BAG_LV2(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(79);
}

void item_getcheck_func_BOMB_BAG_LV1(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(80);
}

void item_getcheck_func_BOMB_IN_BAG(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(81);
}

void item_getcheck_func_LIGHT_ARROW(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(83);
}

asm u32 item_getcheck_func_ARROW_LV1(void) {
    nofralloc
    #include "d/d_item/d_item/asm/func_8009A308.s"
}

asm u32 item_getcheck_func_ARROW_LV2(void) {
    nofralloc
    #include "d/d_item/d_item/asm/func_8009A378.s"
}

asm u32 item_getcheck_func_ARROW_LV3(void) {
    nofralloc
    #include "d/d_item/d_item/asm/func_8009A3E8.s"
}

u32 item_getcheck_func_LURE_ROD(void){
    return -1;
}

u32 item_getcheck_func_BOMB_ARROW(void){
    return -1;
}

u32 item_getcheck_func_HAWK_ARROW(void){
    return -1;
}

void item_getcheck_func_BEE_ROD(void){
    item_getcheck_func_FISHING_ROD_1();
}

void item_getcheck_func_JEWEL_ROD(void){
    item_getcheck_func_FISHING_ROD_1();
}

void item_getcheck_func_WORM_ROD(void){
    item_getcheck_func_FISHING_ROD_1();
}

void item_getcheck_func_JEWEL_BEE_ROD(void){
    item_getcheck_func_FISHING_ROD_1();
}

void item_getcheck_func_JEWEL_WORM_ROD(void){
    item_getcheck_func_FISHING_ROD_1();
}

u32 item_getcheck_func_EMPTY_BOTTLE(void){
    u32 bottle_check;

    bottle_check = g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().checkBottle(96);
    return bottle_check & 0xff;
}

u32 item_getcheck_func_RED_BOTTLE(void){
    u32 bottle_check;

    bottle_check = g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().checkBottle(97);
    return bottle_check & 0xff;
}

u32 item_getcheck_func_GREEN_BOTTLE(void){
    u32 bottle_check;

    bottle_check = g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().checkBottle(98);
    return bottle_check & 0xff;
}

u32 item_getcheck_func_BLUE_BOTTLE(void){
    u32 bottle_check;

    bottle_check = g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().checkBottle(99);
    return bottle_check & 0xff;
}

u32 item_getcheck_func_MILK_BOTTLE(void){
    u32 bottle_check;

    bottle_check = g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().checkBottle(100);
    return bottle_check & 0xff;
}

u32 item_getcheck_func_HALF_MILK_BOTTLE(void){
    u32 bottle_check;

    bottle_check = g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().checkBottle(101);
    return bottle_check & 0xff;
}

u32 item_getcheck_func_OIL_BOTTLE(void){
    u32 bottle_check;

    bottle_check = g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().checkBottle(102);
    return bottle_check & 0xff;
}

u32 item_getcheck_func_WATER_BOTTLE(void){
    u32 bottle_check;

    bottle_check = g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().checkBottle(103);
    return bottle_check & 0xff;
}

u32 item_getcheck_func_OIL_BOTTLE2(void){
    u32 bottle_check;

    bottle_check = g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().checkBottle(104);
    return bottle_check & 0xff;
}

u32 item_getcheck_func_RED_BOTTLE2(void){
    u32 bottle_check;

    bottle_check = g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().checkBottle(105);
    return bottle_check & 0xff;
}

u32 item_getcheck_func_UGLY_SOUP(void){
    u32 bottle_check;

    bottle_check = g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().checkBottle(106);
    return bottle_check & 0xff;
}

u32 item_getcheck_func_HOT_SPRING(void){
    u32 bottle_check;

    bottle_check = g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().checkBottle(107);
    return bottle_check & 0xff;
}

u32 item_getcheck_func_FAIRY_BOTTLE(void){
    u32 bottle_check;

    bottle_check = g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().checkBottle(108);
    return bottle_check & 0xff;
}

u32 item_getcheck_func_HOT_SPRING2(void){
    u32 bottle_check;

    bottle_check = g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().checkBottle(107);
    return bottle_check & 0xff;
}

u32 item_getcheck_func_OIL2(void){
    u32 bottle_check;

    bottle_check = g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().checkBottle(110);
    return bottle_check & 0xff;
}

u32 item_getcheck_func_OIL(void){
    u32 bottle_check;

    bottle_check = g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().checkBottle(111);
    return bottle_check & 0xff;
}

void item_getcheck_func_NORMAL_BOMB(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(112);
}

void item_getcheck_func_WATER_BOMB(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(113);
}

void item_getcheck_func_POKE_BOMB(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(114);
}

u32 item_getcheck_func_FAIRY_DROP(void){
    u32 bottle_check;

    bottle_check = g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().checkBottle(115);
    return bottle_check & 0xff;
}

u32 item_getcheck_func_WORM(void){
    u32 bottle_check;

    bottle_check = g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().checkBottle(116);
    return bottle_check & 0xff;
}

void item_getcheck_func_DROP_BOTTLE(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(117);
}

u32 item_getcheck_func_BEE_CHILD(void) {
    return -1;
}

u32 item_getcheck_func_CHUCHU_RARE(void){
    u32 bottle_check;

    bottle_check = g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().checkBottle(119);
    return bottle_check & 0xff;
}

u32 item_getcheck_func_CHUCHU_RED(void){
    u32 bottle_check;

    bottle_check = g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().checkBottle(120);
    return bottle_check & 0xff;
}

u32 item_getcheck_func_CHUCHU_BLUE(void){
    u32 bottle_check;

    bottle_check = g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().checkBottle(121);
    return bottle_check & 0xff;
}

u32 item_getcheck_func_CHUCHU_GREEN(void){
    u32 bottle_check;

    bottle_check = g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().checkBottle(122);
    return bottle_check & 0xff;
}

u32 item_getcheck_func_CHUCHU_YELLOW(void){
    u32 bottle_check;

    bottle_check = g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().checkBottle(123);
    return bottle_check & 0xff;
}

u32 item_getcheck_func_CHUCHU_PURPLE(void){
    u32 bottle_check;

    bottle_check = g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().checkBottle(124);
    return bottle_check & 0xff;
}

void item_getcheck_func_LV1_SOUP(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(125);
}

void item_getcheck_func_LV2_SOUP(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(126);
}

void item_getcheck_func_LV3_SOUP(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(127);
}

asm u32 item_getcheck_func_LETTER(void) {
    nofralloc
    #include "d/d_item/d_item/asm/func_8009AB48.s"
}

asm u32 item_getcheck_func_BILL(void) {
    nofralloc
    #include "d/d_item/d_item/asm/func_8009AB8C.s"
}

asm u32 item_getcheck_func_WOOD_STATUE(void) {
    nofralloc
    #include "d/d_item/d_item/asm/func_8009ABD0.s"
}

asm u32 item_getcheck_func_IRIAS_PENDANT(void) {
    nofralloc
    #include "d/d_item/d_item/asm/func_8009AC14.s"
}

asm u32 item_getcheck_func_HORSE_FLUTE(void) {
    nofralloc
    #include "d/d_item/d_item/asm/func_8009AC58.s"
}

asm u32 item_getcheck_func_RAFRELS_MEMO(void) {
    nofralloc
    #include "d/d_item/d_item/asm/func_8009AC9C.s"
}

asm u32 item_getcheck_func_ASHS_SCRIBBLING(void) {
    nofralloc
    #include "d/d_item/d_item/asm/func_8009ACE0.s"
}

u32 item_getcheck_func_CHUCHU_YELLOW2(void){
    u32 bottle_check;

    bottle_check = g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().checkBottle(156);
    return bottle_check & 0xff;
}

u32 item_getcheck_func_OIL_BOTTLE3(void){
    return -1;
}

u32 item_getcheck_func_SHOP_BEE_CHILD(void){
    return -1;
}

u32 item_getcheck_func_CHUCHU_BLACK(void){
    u32 bottle_check;

    bottle_check = g_dComIfG_gameInfo.save_file.getPlayer().getPlayerItem().checkBottle(159);
    return bottle_check & 0xff;
}

void item_getcheck_func_LIGHT_DROP(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(160);
}

void item_getcheck_func_DROP_CONTAINER(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getLightDrop().isLightDropGetFlag(0);
}

void item_getcheck_func_DROP_CONTAINER02(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getLightDrop().isLightDropGetFlag(1);
}

void item_getcheck_func_DROP_CONTAINER03(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getLightDrop().isLightDropGetFlag(2);
}

u32 item_getcheck_func_FILLED_CONTAINER(void){
    return -1;
}

u32 item_getcheck_func_MIRROR_PIECE_2(void){
    return -1;
}

u32 item_getcheck_func_MIRROR_PIECE_3(void){
    return -1;
}

u32 item_getcheck_func_MIRROR_PIECE_4(void){
    return -1;
}

asm u32 item_getcheck_func_SMELL_YELIA_POUCH(void) {
    nofralloc
    #include "d/d_item/d_item/asm/func_8009AE7C.s"
}

u32 item_getcheck_func_SMELL_PUMPKIN(void){
    return -1;
}

asm u32 item_getcheck_func_SMELL_POH(void) {
    nofralloc
    #include "d/d_item/d_item/asm/func_8009AEA0.s"
}

asm u32 item_getcheck_func_SMELL_FISH(void) {
    nofralloc
    #include "d/d_item/d_item/asm/func_8009AEBC.s"
}

asm u32 item_getcheck_func_SMELL_CHILDREN(void) {
    nofralloc
    #include "d/d_item/d_item/asm/func_8009AED8.s"
}

asm u32 item_getcheck_func_SMELL_MEDICINE(void) {
    nofralloc
    #include "d/d_item/d_item/asm/func_8009AEF4.s"
}

void item_getcheck_func_M_BEETLE(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(192);
}

void item_getcheck_func_F_BEETLE(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(193);
}

void item_getcheck_func_M_BUTTERFLY(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(194);
}

void item_getcheck_func_F_BUTTERFLY(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(195);
}

void item_getcheck_func_M_STAG_BEETLE(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(196);
}

void item_getcheck_func_F_STAG_BEETLE(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(197);
}

void item_getcheck_func_M_GRASSHOPPER(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(198);
}

void item_getcheck_func_F_GRASSHOPPER(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(199);
}

void item_getcheck_func_M_NANAFUSHI(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(200);
}

void item_getcheck_func_F_NANAFUSHI(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(201);
}

void item_getcheck_func_M_DANGOMUSHI(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(202);
}

void item_getcheck_func_F_DANGOMUSHI(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(203);
}

void item_getcheck_func_M_MANTIS(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(204);
}

void item_getcheck_func_F_MANTIS(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(205);
}

void item_getcheck_func_M_LADYBUG(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(206);
}

void item_getcheck_func_F_LADYBUG(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(207);
}

void item_getcheck_func_M_SNAIL(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(208);
}

void item_getcheck_func_F_SNAIL(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(209);
}

void item_getcheck_func_M_DRAGONFLY(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(210);
}

void item_getcheck_func_F_DRAGONFLY(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(211);
}

void item_getcheck_func_M_ANT(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(212);
}

void item_getcheck_func_F_ANT(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(213);
}

void item_getcheck_func_M_MAYFLY(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(214);
}

void item_getcheck_func_F_MAYFLY(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(215);
}

u32 item_getcheck_func_POU_SPIRIT(void){
    return g_dComIfG_gameInfo.save_file.getPlayer().getPlayerCollect().getPoeCount();
}

asm u32 item_getcheck_func_ANCIENT_DOCUMENT(void) {
    nofralloc
    #include "d/d_item/d_item/asm/func_8009B3A0.s"
}

asm u32 item_getcheck_func_AIR_LETTER(void) {
    nofralloc
    #include "d/d_item/d_item/asm/func_8009B3E4.s"
}

asm u32 item_getcheck_func_ANCIENT_DOCUMENT2(void) {
    nofralloc
    #include "d/d_item/d_item/asm/func_8009B428.s"
}

asm u32 item_getcheck_func_LV7_DUNGEON_EXIT(void) {
    nofralloc
    #include "d/d_item/d_item/asm/func_8009B46C.s"
}

u32 item_getcheck_func_LINKS_SAVINGS(void){
    return -1;
}

u32 item_getcheck_func_SMALL_KEY2(void){
    return -1;
}

u32 item_getcheck_func_POU_FIRE1(void){
    return -1;
}

u32 item_getcheck_func_POU_FIRE2(void){
    return -1;
}

u32 item_getcheck_func_POU_FIRE3(void){
    return -1;
}

u32 item_getcheck_func_POU_FIRE4(void){
    return -1;
}

u32 item_getcheck_func_BOSSRIDER_KEY(void){
    return -1;
}

void item_getcheck_func_TOMATO_PUREE(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(244);
}

void item_getcheck_func_TASTE(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(245);
}

void item_getcheck_func_LV5_BOSS_KEY(void){
    g_dComIfG_gameInfo.memory.getTempFlags().isDungeonItem(2);
}

u32 item_getcheck_func_SURFBOARD(void){
    return -1;
}

u32 item_getcheck_func_KANTERA2(void){
    return -1;
}

void item_getcheck_func_L2_KEY_PIECES1(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(249);
}

void item_getcheck_func_L2_KEY_PIECES2(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(250);
}

void item_getcheck_func_L2_KEY_PIECES3(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(251);
}

void item_getcheck_func_KEY_OF_CARAVAN(void){
    g_dComIfG_gameInfo.save_file.getPlayer().getPlayerGetItem().isFirstBit(252);
}

void item_getcheck_func_LV2_BOSS_KEY(void){
    g_dComIfG_gameInfo.memory.getTempFlags().isDungeonItem(2);
}

u32 item_getcheck_func_KEY_OF_FILONE(void){
    return g_dComIfG_gameInfo.memory.getTempFlags().getSmallKeys();
}

asm bool isBomb(u8 param1){
    nofralloc
    #include "d/d_item/d_item/asm/func_8009B688.s"
}

bool isArrow(u8 param1){
    bool is_arrow;

    is_arrow = false;
    if(param1 == 17 || (u8)(param1 - 14) <= 1 || param1 == 16){
        is_arrow = true;
    }

    return is_arrow;
}

asm bool isBottleItem(u8 param1){
    nofralloc
    #include "d/d_item/d_item/asm/func_8009B708.s"
}

bool isHeart(u8 param1) {
    bool is_heart;

    is_heart = false;
    if(param1 == 0 || param1 == 31){
        is_heart = true;
    }
    return is_heart;
}

//close
#ifdef NONMATCHING
bool isInsect(u8 param1) {
    bool is_insect;

    is_insect = false;
    if(param1 < 216 && param1 < 192){
        is_insect = true;
    }
    return is_insect;
}
#else
asm bool isInsect(u8 param1){
    nofralloc
    #include "d/d_item/d_item/asm/func_8009B79C.s"
}
#endif

asm u32 check_itemno(int param1){
    nofralloc
    #include "d/d_item/d_item/asm/func_8009B7C4.s"
}

asm void addBombCount(u8 param1, u8 param2){
    nofralloc
    #include "d/d_item/d_item/asm/func_8009B940.s"
}