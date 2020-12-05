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