#include "global.h"
#include "d/d_item/d_item/d_item.h"
#include "d/d_com/d_com_inf_game/d_com_inf_game.h"

void execItemGet(u8 item_id){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().onFirstBit(item_id);
    item_func_ptr[item_id]();
}

int checkItemGet(u8 item_id, int param_2) {
    int uVar2 = item_getcheck_func_ptr[item_id]();
    if (uVar2 == -1) {
        uVar2 = param_2;
    }
    return uVar2;
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
    addBombCount(NORMAL_BOMB, 5);
}

void item_func_BOMB_10(void){
    addBombCount(NORMAL_BOMB, 10);
}

void item_func_BOMB_20(void){
    addBombCount(NORMAL_BOMB, 20);
}

void item_func_BOMB_30(void){
    addBombCount(NORMAL_BOMB, 30);
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
    addBombCount(WATER_BOMB, 5);
}

void item_func_WATER_BOMB_10(void){
    addBombCount(WATER_BOMB, 10);
}

void item_func_WATER_BOMB_20(void){
    addBombCount(WATER_BOMB, 15);
}

void item_func_WATER_BOMB_30(void){
    addBombCount(WATER_BOMB, 3);
}

void item_func_BOMB_INSECT_5(void){
    addBombCount(POKE_BOMB, 5);
}

void item_func_BOMB_INSECT_10(void){
    addBombCount(POKE_BOMB, 10);
}

void item_func_BOMB_INSECT_20(void){
    addBombCount(POKE_BOMB, 3);
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
    g_dComIfG_gameInfo.info.getMemory().getTempFlags().onDungeonItem(MAP_FLAG);
}

void item_func_COMPUS(void){
    g_dComIfG_gameInfo.info.getMemory().getTempFlags().onDungeonItem(COMPASS_FLAG);
}

void item_func_DUNGEON_EXIT(void){
    g_dComIfG_gameInfo.info.getMemory().getTempFlags().onDungeonItem(OOCCOO_NOTE_FLAG);
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setItem(SLOT_18,DUNGEON_EXIT);
}

void item_func_BOSS_KEY(void){
    g_dComIfG_gameInfo.info.getMemory().getTempFlags().onDungeonItem(BOSS_KEY_FLAG);
}

void item_func_DUNGEON_BACK(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setItem(SLOT_18,DUNGEON_BACK);
}

void item_func_SWORD(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerCollect().setCollect(SWORD_BITFIELD,ORDON_SWORD_FLAG);
    dComIfGs_setSelectEquipSword(SWORD);
}

void item_func_MASTER_SWORD(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerCollect().setCollect(SWORD_BITFIELD,MASTER_SWORD_FLAG);
    dComIfGs_setSelectEquipSword(MASTER_SWORD);
}

void item_func_WOOD_SHIELD(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerCollect().setCollect(SHIELD_BITFIELD,ORDON_SHIELD_FLAG);
    dComIfGs_setSelectEquipShield(WOOD_SHIELD);
}

void item_func_SHIELD(void){
    return;
}

void item_func_HYLIA_SHIELD(void){
    return;
}

void item_func_TKS_LETTER(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setItem(SLOT_18,TKS_LETTER);
}

void item_func_WEAR_CASUAL(void){
    dComIfGs_setSelectEquipClothes(WEARS_CASUAL);
}

void item_func_WEAR_KOKIRI(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerCollect().setCollect(CLOTHING_BITFIELD,KOKIRI_CLOTHES_FLAG);
    dComIfGs_setSelectEquipClothes(WEAR_KOKIRI);
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
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setItem(SLOT_18,DUNGEON_EXIT);
}

void item_func_WALLET_LV1(void){
    g_dComIfG_gameInfo.info.getSaveFile().setPlayerStatusAWallet(WALLET);
}

void item_func_WALLET_LV2(void){
    g_dComIfG_gameInfo.info.getSaveFile().setPlayerStatusAWallet(BIG_WALLET);
}

void item_func_WALLET_LV3(void){
    g_dComIfG_gameInfo.info.getSaveFile().setPlayerStatusAWallet(GIANT_WALLET);
}

void item_func_ZORAS_JEWEL(void){
    int checkFishingRod;

    checkFishingRod = item_getcheck_func_FISHING_ROD_1();
    if(checkFishingRod != 0){
        g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setRodTypeLevelUp();   
    }
    else{
        g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setItem(SLOT_20,ZORAS_JEWEL);
    }
}

void item_func_HAWK_EYE(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setItem(SLOT_5,HAWK_EYE);
}

#ifdef NONMATCHING
void item_func_WOOD_STICK(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerCollect().setCollect(SWORD_BITFIELD,WOODEN_SWORD_FLAG);
    dComIfGs_setSelectEquipSword(WOOD_STICK);
    g_dComIfG_gameInfo.info.onSwitch(28,lbl_80450D64); // wrong order
}
#else
asm void item_func_WOOD_STICK(void) {
    nofralloc
    #include "d/d_item/d_item/asm/func_800986C4.s"
}
#endif

void item_func_BOOMERANG(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setItem(SLOT_0,BOOMERANG);
}

void item_func_SPINNER(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setItem(SLOT_2,SPINNER);
}

void item_func_IRONBALL(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setItem(SLOT_6,IRONBALL);
}

// li r0, 0x1e instruction in wrong place
#ifdef NONMATCHING
void item_func_BOW(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setItem(SLOT_4,BOW);
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItemRecord().setBowAmount(30);
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItemMax().setBowCapacity(30);
}
#else
asm void item_func_BOW(void) {
    nofralloc
    #include "d/d_item/d_item/asm/func_800987B4.s"
}
#endif

void item_func_HOOKSHOT(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setItem(SLOT_9,HOOKSHOT);
}

void item_func_HVY_BOOTS(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setItem(SLOT_3,HVY_BOOTS);
}

void item_func_COPY_ROD(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setItem(SLOT_8,COPY_ROD);
}

void item_func_W_HOOKSHOT(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setItem(SLOT_9,NO_ITEM);
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setItem(SLOT_10,W_HOOKSHOT);
}

void item_func_KANTERA(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().setPlayerStatusAOil(21600);
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setItem(SLOT_1,KANTERA);
}

void item_func_LIGHT_SWORD(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerCollect().setCollect(SWORD_BITFIELD,LIGHT_SWORD_FLAG);
    dMeter2Info_setSword(LIGHT_SWORD,0);
}

void item_func_FISHING_ROD_1(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setItem(SLOT_20,FISHING_ROD_1);
}

void item_func_PACHINKO(void){
    g_dComIfG_gameInfo.give_item.seeds += 50;
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setItem(SLOT_23,PACHINKO);
}

void item_func_COPY_ROD_2(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setItem(SLOT_8,COPY_ROD);
}

void item_func_BOMB_BAG_LV2(void){
    return;
}

void item_func_BOMB_BAG_LV1(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setEmptyBombBag(NORMAL_BOMB,30);
}

void item_func_BOMB_IN_BAG(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setEmptyBombBag(NORMAL_BOMB,30);
}

void item_func_LIGHT_ARROW(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setItem(SLOT_4,LIGHT_ARROW);
}

// li r0, 0x3C instruction in wrong place
#ifdef NONMATCHING
void item_func_ARROW_LV1(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItemRecord().setBowAmount(60);
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItemMax().setBowCapacity(60);
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
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItemRecord().setBowAmount(60);
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItemMax().setBowCapacity(60);
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
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItemRecord().setBowAmount(100);
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItemMax().setBowCapacity(100);
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
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setEmptyBottle();
}

void item_func_RED_BOTTLE(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setEmptyBottleItemIn(RED_BOTTLE);
}

void item_func_GREEN_BOTTLE(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setEmptyBottleItemIn(GREEN_BOTTLE);
}

void item_func_BLUE_BOTTLE(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setEmptyBottleItemIn(BLUE_BOTTLE);
}

void item_func_MILK_BOTTLE(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setEmptyBottleItemIn(MILK_BOTTLE);
}

void item_func_HALF_MILK_BOTTLE(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setEmptyBottle(HALF_MILK_BOTTLE);
}

void item_func_OIL_BOTTLE(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setEmptyBottleItemIn(OIL_BOTTLE);
}

void item_func_WATER_BOTTLE(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setEmptyBottleItemIn(WATER_BOTTLE);
}

void item_func_OIL_BOTTLE2(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setEmptyBottleItemIn(OIL_BOTTLE);
}

void item_func_RED_BOTTLE2(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setEmptyBottleItemIn(RED_BOTTLE);
}

void item_func_UGLY_SOUP(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setEmptyBottleItemIn(UGLY_SOUP);
}

void item_func_HOT_SPRING(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setEmptyBottleItemIn(HOT_SPRING);
}

void item_func_FAIRY_BOTTLE(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setEmptyBottleItemIn(FAIRY);
}

void item_func_HOT_SPRING2(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setEmptyBottleItemIn(HOT_SPRING);
}

void item_func_OIL2(void){
    return;
}

void item_func_OIL(void){
    return;
}

void item_func_NORMAL_BOMB(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setEmptyBombBag(NORMAL_BOMB,60);
}

void item_func_WATER_BOMB(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setEmptyBombBag();
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setEmptyBombBagItemIn(WATER_BOMB,1);
}

void item_func_POKE_BOMB(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setEmptyBombBag();
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setEmptyBombBagItemIn(POKE_BOMB,1);
}

void item_func_FAIRY_DROP(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setEmptyBottleItemIn(FAIRY_DROP);
}

void item_func_WORM(void){
    return;
}

void item_func_DROP_BOTTLE(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setEmptyBottle(FAIRY_DROP);
}

asm void item_func_BEE_CHILD(void) {
    nofralloc
    #include "d/d_item/d_item/asm/func_80098EE4.s"
}

void item_func_CHUCHU_RARE(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setEmptyBottleItemIn(CHUCHU_RARE);
}

void item_func_CHUCHU_RED(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setEmptyBottleItemIn(CHUCHU_RED);
}

void item_func_CHUCHU_BLUE(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setEmptyBottleItemIn(CHUCHU_BLUE);
}

void item_func_CHUCHU_GREEN(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setEmptyBottleItemIn(CHUCHU_GREEN);
}

void item_func_CHUCHU_YELLOW(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setEmptyBottleItemIn(CHUCHU_YELLOW);
}

void item_func_CHUCHU_PURPLE(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setEmptyBottleItemIn(CHUCHU_PURPLE);
}

void item_func_LV1_SOUP(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setEmptyBottleItemIn(LV1_SOUP);
}

void item_func_LV2_SOUP(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setEmptyBottleItemIn(LV2_SOUP);
}

void item_func_LV3_SOUP(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setEmptyBottleItemIn(LV3_SOUP);
}

void item_func_LETTER(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setItem(SLOT_21,LETTER);
}

void item_func_BILL(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setItem(SLOT_21,BILL);
}

void item_func_WOOD_STATUE(void){
    g_dComIfG_gameInfo.info.getSaveFile().getEventFlags().onEventBit(lbl_803A7288.unk566);
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setItem(SLOT_21,WOOD_STATUE);
}

void item_func_IRIAS_PENDANT(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setItem(SLOT_21,IRIAS_PENDANT);
}

void item_func_HORSE_FLUTE(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setItem(SLOT_21,HORSE_FLUTE);
}

void item_func_RAFRELS_MEMO(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setItem(SLOT_19,RAFRELS_MEMO);
}

void item_func_ASHS_SCRIBBLING(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setItem(SLOT_19,ASHS_SCRIBBLING);
}

void item_func_CHUCHU_YELLOW2(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setEmptyBottleItemIn(CHUCHU_YELLOW);
}

void item_func_OIL_BOTTLE3(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setEmptyBottle(OIL_BOTTLE);
}

void item_func_SHOP_BEE_CHILD(void){
    item_func_BEE_CHILD();
}

void item_func_CHUCHU_BLACK(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setEmptyBottleItemIn(CHUCHU_BLACK);
}

void item_func_LIGHT_DROP(void){
    return;
}

void item_func_DROP_CONTAINER(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getLightDrop().onLightDropGetFlag(FARON_VESSEL);
}

void item_func_DROP_CONTAINER02(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getLightDrop().onLightDropGetFlag(ELDIN_VESSEL);
}

void item_func_DROP_CONTAINER03(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getLightDrop().onLightDropGetFlag(LANAYRU_VESSEL);
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
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setItem(SLOT_22,ANCIENT_DOCUMENT);
}

void item_func_AIR_LETTER(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setItem(SLOT_22,AIR_LETTER);
}

void item_func_ANCIENT_DOCUMENT2(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setItem(SLOT_22,ANCIENT_DOCUMENT2);
}

void item_func_LV7_DUNGEON_EXIT(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().setItem(SLOT_18,LV7_DUNGEON_EXIT);
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
    g_dComIfG_gameInfo.info.getMemory().getTempFlags().onDungeonItem(BOSS_KEY_FLAG);
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
    g_dComIfG_gameInfo.info.getMemory().getTempFlags().onDungeonItem(BOSS_KEY_FLAG);
}

void item_func_KEY_OF_FILONE(void){
    g_dComIfG_gameInfo.give_item.small_keys += 1;
}

void item_func_noentry(void){
    return;
}

int item_getcheck_func_noentry(void){
    return -1;
}

int item_getcheck_func_HEART(void){
    return -1;
}

void item_getcheck_func_GREEN_RUPEE(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(GREEN_RUPEE);
}

void item_getcheck_func_BLUE_RUPEE(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(BLUE_RUPEE);
}

void item_getcheck_func_YELLOW_RUPEE(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(YELLOW_RUPEE);
}

void item_getcheck_func_RED_RUPEE(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(RED_RUPEE);
}

void item_getcheck_func_PURPLE_RUPEE(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(PURPLE_RUPEE);
}

void item_getcheck_func_ORANGE_RUPEE(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(ORANGE_RUPEE);
}

void item_getcheck_func_SILVER_RUPEE(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(SILVER_RUPEE);
}

int item_getcheck_func_S_MAGIC(void){
    return -1;
}

int item_getcheck_func_L_MAGIC(void){
    return -1;
}

void item_getcheck_func_BOMB_5(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(BOMB_5);
}

void item_getcheck_func_BOMB_10(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(BOMB_10);
}

void item_getcheck_func_BOMB_20(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(BOMB_20);
}

void item_getcheck_func_BOMB_30(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(BOMB_30);
}

void item_getcheck_func_ARROW_10(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(ARROW_10);
}

void item_getcheck_func_ARROW_20(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(ARROW_20);
}

void item_getcheck_func_ARROW_30(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(ARROW_30);
}

void item_getcheck_func_ARROW_1(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(ARROW_1);
}

void item_getcheck_func_PACHINKO_SHOT(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(PACHINKO_SHOT);
}

int item_getcheck_func_WATER_BOMB_5(void){
    return -1;
}

int item_getcheck_func_WATER_BOMB_10(void){
    return -1;
}

int item_getcheck_func_WATER_BOMB_20(void){
    return -1;
}

int item_getcheck_func_WATER_BOMB_30(void){
    return -1;
}

int item_getcheck_func_BOMB_INSECT_5(void){
    return -1;
}

void item_getcheck_func_BOMB_INSECT_10(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(BOMB_INSECT_10);
}

void item_getcheck_func_BOMB_INSECT_20(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(BOMB_INSECT_20);
}

void item_getcheck_func_BOMB_INSECT_30(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(BOMB_INSECT_30);
}

int item_getcheck_func_RECOVER_FAILY(void){
    return -1;
}

int item_getcheck_func_TRIPLE_HEART(void){
    return -1;
}

int item_getcheck_func_SMALL_KEY(void){
    return -1;
}

int item_getcheck_func_KAKERA_HEART(void){
    return -1;
}

int item_getcheck_func_UTUWA_HEART(void){
    return -1;
}

bool item_getcheck_func_MAP(void){
    return g_dComIfG_gameInfo.info.getMemory().getTempFlags().isDungeonItem(MAP_FLAG);
}

int item_getcheck_func_COMPUS(void){
    return -1;
}

int item_getcheck_func_DUNGEON_EXIT(void){
    u32 check_item = __cntlzw(DUNGEON_EXIT - g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().getItem(SLOT_18,true));
    return check_item >> 5;
}

bool item_getcheck_func_BOSS_KEY(void){
    return g_dComIfG_gameInfo.info.getMemory().getTempFlags().isDungeonItem(BOSS_KEY_FLAG);
}

int item_getcheck_func_DUNGEON_BACK(void){
    u32 check_item = __cntlzw(DUNGEON_BACK - g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().getItem(SLOT_18,true));
    return check_item >> 5;
}

void item_getcheck_func_SWORD(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerCollect().isCollect(SWORD_BITFIELD,ORDON_SWORD_FLAG);
}

void item_getcheck_func_MASTER_SWORD(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerCollect().isCollect(SWORD_BITFIELD,MASTER_SWORD_FLAG);
}

void item_getcheck_func_WOOD_SHIELD(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(WOOD_SHIELD);
}

void item_getcheck_func_SHIELD(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(SHIELD);
}

void item_getcheck_func_HYLIA_SHIELD(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(HYLIA_SHIELD);
}

int item_getcheck_func_TKS_LETTER(void){
    u32 check_item = __cntlzw(TKS_LETTER - g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().getItem(SLOT_18,true));
    return check_item >> 5;
}

void item_getcheck_func_WEAR_CASUAL(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(WEARS_CASUAL);
}

void item_getcheck_func_WEAR_KOKIRI(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerCollect().isCollect(CLOTHING_BITFIELD,KOKIRI_CLOTHES_FLAG);
}

void item_getcheck_func_ARMOR(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(ARMOR);
}

void item_getcheck_func_WEAR_ZORA(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(WEAR_ZORA);
}

int item_getcheck_func_MAGIC_LV1(void){
    return -1;
}

int item_getcheck_func_DUNGEON_EXIT_2(void){
    u32 check_item = __cntlzw(DUNGEON_EXIT - g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().getItem(SLOT_18,true));
    return check_item >> 5;
}

int item_getcheck_func_WALLET_LV1(void){
    return -1;
}

int item_getcheck_func_WALLET_LV2(void){
    return -1;
}

int item_getcheck_func_WALLET_LV3(void){
    return -1;
}

int item_getcheck_func_ZORAS_JEWEL(void){
    u32 check_item = __cntlzw(ZORAS_JEWEL - g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().getItem(SLOT_20,true));
    return check_item >> 5;
}

void item_getcheck_func_HAWK_EYE(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(HAWK_EYE);
}

void item_getcheck_func_WOOD_STICK(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(WOOD_STICK);
}

int item_getcheck_func_BOOMERANG(void){
    u32 check_item = __cntlzw(BOOMERANG - g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().getItem(SLOT_0,true));
    return check_item >> 5;
}

int item_getcheck_func_SPINNER(void){
    u32 check_item = __cntlzw(SPINNER - g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().getItem(SLOT_2,true));
    return check_item >> 5;
}

int item_getcheck_func_IRONBALL(void){
    u32 check_item = __cntlzw(IRONBALL - g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().getItem(SLOT_6,true));
    return check_item >> 5;
}

int item_getcheck_func_BOW(void){
    u32 check_item = __cntlzw(BOW - g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().getItem(SLOT_4,false));
    return check_item >> 5;
}

int item_getcheck_func_HOOKSHOT(void){
    u32 check_item = __cntlzw(HOOKSHOT - g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().getItem(SLOT_9,true));
    return check_item >> 5;
}

int item_getcheck_func_HVY_BOOTS(void){
    u32 check_item = __cntlzw(HVY_BOOTS - g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().getItem(SLOT_3,true));
    return check_item >> 5;
}

int item_getcheck_func_COPY_ROD(void){
    u32 check_item = __cntlzw(COPY_ROD - g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().getItem(SLOT_8,true));
    return check_item >> 5;
}

int item_getcheck_func_W_HOOKSHOT(void){
    u32 check_item = __cntlzw(W_HOOKSHOT - g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().getItem(SLOT_10,true));
    return check_item >> 5;
}

int item_getcheck_func_KANTERA(void){
    u32 check_item = __cntlzw(KANTERA - g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().getItem(SLOT_1,true));
    return check_item >> 5;
}

void item_getcheck_func_LIGHT_SWORD(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerCollect().isCollect(SWORD_BITFIELD,LIGHT_SWORD_FLAG);
}

asm int item_getcheck_func_FISHING_ROD_1(void){
    nofralloc
    #include "d/d_item/d_item/asm/func_8009A0C8.s"
}

int item_getcheck_func_PACHINKO(void){
    u32 check_item = __cntlzw(PACHINKO - g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().getItem(SLOT_23,true));
    return check_item >> 5;
}

int item_getcheck_func_COPY_ROD_2(void){
    return -1;
}

void item_getcheck_func_BOMB_BAG_LV2(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(BOMB_BAG_LV2);
}

void item_getcheck_func_BOMB_BAG_LV1(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(BOMB_BAG_LV1);
}

void item_getcheck_func_BOMB_IN_BAG(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(BOMB_IN_BAG);
}

void item_getcheck_func_LIGHT_ARROW(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(LIGHT_ARROW);
}

int item_getcheck_func_ARROW_LV1(void){
    return (g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().getItem(SLOT_4,false) == 0x43 && g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItemMax().getBowCapacity() >= 30) ? 1 : 0;
}

int item_getcheck_func_ARROW_LV2(void) {
    return (g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().getItem(SLOT_4,false) == 0x43 && g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItemMax().getBowCapacity() >= 60) ? 1 : 0;
}

int item_getcheck_func_ARROW_LV3(void) {
    return (g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().getItem(SLOT_4,false) == 0x43 && g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItemMax().getBowCapacity() >= 100) ? 1 : 0;
}

int item_getcheck_func_LURE_ROD(void){
    return -1;
}

int item_getcheck_func_BOMB_ARROW(void){
    return -1;
}

int item_getcheck_func_HAWK_ARROW(void){
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

int item_getcheck_func_EMPTY_BOTTLE(void){
    u8 bottle_check;

    bottle_check = g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().checkBottle(EMPTY_BOTTLE);
    return bottle_check;
}

int item_getcheck_func_RED_BOTTLE(void){
    u8 bottle_check;

    bottle_check = g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().checkBottle(RED_BOTTLE);
    return bottle_check;
}

int item_getcheck_func_GREEN_BOTTLE(void){
    u8 bottle_check;

    bottle_check = g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().checkBottle(GREEN_BOTTLE);
    return bottle_check;
}

int item_getcheck_func_BLUE_BOTTLE(void){
    u8 bottle_check;

    bottle_check = g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().checkBottle(BLUE_BOTTLE);
    return bottle_check;
}

int item_getcheck_func_MILK_BOTTLE(void){
    u8 bottle_check;

    bottle_check = g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().checkBottle(MILK_BOTTLE);
    return bottle_check;
}

int item_getcheck_func_HALF_MILK_BOTTLE(void){
    u8 bottle_check;

    bottle_check = g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().checkBottle(HALF_MILK_BOTTLE);
    return bottle_check;
}

int item_getcheck_func_OIL_BOTTLE(void){
    u8 bottle_check;

    bottle_check = g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().checkBottle(OIL_BOTTLE);
    return bottle_check;
}

int item_getcheck_func_WATER_BOTTLE(void){
    u8 bottle_check;

    bottle_check = g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().checkBottle(WATER_BOTTLE);
    return bottle_check;
}

int item_getcheck_func_OIL_BOTTLE2(void){
    u8 bottle_check;

    bottle_check = g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().checkBottle(OIL_BOTTLE_2);
    return bottle_check;
}

int item_getcheck_func_RED_BOTTLE2(void){
    u8 bottle_check;

    bottle_check = g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().checkBottle(RED_BOTTLE_2);
    return bottle_check;
}

int item_getcheck_func_UGLY_SOUP(void){
    u8 bottle_check;

    bottle_check = g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().checkBottle(UGLY_SOUP);
    return bottle_check;
}

int item_getcheck_func_HOT_SPRING(void){
    u8 bottle_check;

    bottle_check = g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().checkBottle(HOT_SPRING);
    return bottle_check;
}

int item_getcheck_func_FAIRY_BOTTLE(void){
    u8 bottle_check;

    bottle_check = g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().checkBottle(FAIRY);
    return bottle_check;
}

int item_getcheck_func_HOT_SPRING2(void){
    u8 bottle_check;

    bottle_check = g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().checkBottle(HOT_SPRING);
    return bottle_check;
}

int item_getcheck_func_OIL2(void){
    u8 bottle_check;

    bottle_check = g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().checkBottle(OIL2);
    return bottle_check;
}

int item_getcheck_func_OIL(void){
    u8 bottle_check;

    bottle_check = g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().checkBottle(OIL);
    return bottle_check;
}

void item_getcheck_func_NORMAL_BOMB(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(NORMAL_BOMB);
}

void item_getcheck_func_WATER_BOMB(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(WATER_BOMB);
}

void item_getcheck_func_POKE_BOMB(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(POKE_BOMB);
}

int item_getcheck_func_FAIRY_DROP(void){
    u8 bottle_check;

    bottle_check = g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().checkBottle(FAIRY_DROP);
    return bottle_check;
}

int item_getcheck_func_WORM(void){
    u8 bottle_check;

    bottle_check = g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().checkBottle(WORM);
    return bottle_check;
}

void item_getcheck_func_DROP_BOTTLE(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(DROP_BOTTLE);
}

int item_getcheck_func_BEE_CHILD(void) {
    return -1;
}

int item_getcheck_func_CHUCHU_RARE(void){
    u8 bottle_check;

    bottle_check = g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().checkBottle(CHUCHU_RARE);
    return bottle_check;
}

int item_getcheck_func_CHUCHU_RED(void){
    u8 bottle_check;

    bottle_check = g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().checkBottle(CHUCHU_RED);
    return bottle_check;
}

int item_getcheck_func_CHUCHU_BLUE(void){
    u8 bottle_check;

    bottle_check = g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().checkBottle(CHUCHU_BLUE);
    return bottle_check;
}

int item_getcheck_func_CHUCHU_GREEN(void){
    u8 bottle_check;

    bottle_check = g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().checkBottle(CHUCHU_GREEN);
    return bottle_check;
}

int item_getcheck_func_CHUCHU_YELLOW(void){
    u8 bottle_check;

    bottle_check = g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().checkBottle(CHUCHU_YELLOW);
    return bottle_check;
}

int item_getcheck_func_CHUCHU_PURPLE(void){
    u8 bottle_check;

    bottle_check = g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().checkBottle(CHUCHU_PURPLE);
    return bottle_check;
}

void item_getcheck_func_LV1_SOUP(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(LV1_SOUP);
}

void item_getcheck_func_LV2_SOUP(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(LV2_SOUP);
}

void item_getcheck_func_LV3_SOUP(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(LV3_SOUP);
}

int item_getcheck_func_LETTER(void) {
    u32 check_item = __cntlzw(LETTER - g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().getItem(SLOT_21,true));
    return check_item >> 5;
}

int item_getcheck_func_BILL(void) {
    u32 check_item = __cntlzw(BILL - g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().getItem(SLOT_21,true));
    return check_item >> 5;
}

int item_getcheck_func_WOOD_STATUE(void) {
    u32 check_item = __cntlzw(WOOD_STATUE - g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().getItem(SLOT_21,true));
    return check_item >> 5;
}

int item_getcheck_func_IRIAS_PENDANT(void) {
    u32 check_item = __cntlzw(IRIAS_PENDANT - g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().getItem(SLOT_21,true));
    return check_item >> 5;
}

int item_getcheck_func_HORSE_FLUTE(void) {
    u32 check_item = __cntlzw(HORSE_FLUTE - g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().getItem(SLOT_22,true));
    return check_item >> 5;
}

int item_getcheck_func_RAFRELS_MEMO(void) {
    u32 check_item = __cntlzw(RAFRELS_MEMO - g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().getItem(SLOT_19,true));
    return check_item >> 5;
}

int item_getcheck_func_ASHS_SCRIBBLING(void) {
    u32 check_item = __cntlzw(ASHS_SCRIBBLING - g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().getItem(SLOT_19,true));
    return check_item >> 5;
}

int item_getcheck_func_CHUCHU_YELLOW2(void){
    u8 bottle_check;

    bottle_check = g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().checkBottle(CHUCHU_YELLOW2);
    return bottle_check;
}

int item_getcheck_func_OIL_BOTTLE3(void){
    return -1;
}

int item_getcheck_func_SHOP_BEE_CHILD(void){
    return -1;
}

int item_getcheck_func_CHUCHU_BLACK(void){
    u8 bottle_check;

    bottle_check = g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().checkBottle(CHUCHU_BLACK);
    return bottle_check;
}

void item_getcheck_func_LIGHT_DROP(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(LIGHT_DROP);
}

void item_getcheck_func_DROP_CONTAINER(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getLightDrop().isLightDropGetFlag(FARON_VESSEL);
}

void item_getcheck_func_DROP_CONTAINER02(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getLightDrop().isLightDropGetFlag(ELDIN_VESSEL);
}

void item_getcheck_func_DROP_CONTAINER03(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getLightDrop().isLightDropGetFlag(LANAYRU_VESSEL);
}

int item_getcheck_func_FILLED_CONTAINER(void){
    return -1;
}

int item_getcheck_func_MIRROR_PIECE_2(void){
    return -1;
}

int item_getcheck_func_MIRROR_PIECE_3(void){
    return -1;
}

int item_getcheck_func_MIRROR_PIECE_4(void){
    return -1;
}

int item_getcheck_func_SMELL_YELIA_POUCH(void) {
    u32 check_item = __cntlzw(SMELL_YELIA_POUCH - g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerStatusA().getScent());
    return check_item >> 5;
}

int item_getcheck_func_SMELL_PUMPKIN(void){
    return -1;
}

int item_getcheck_func_SMELL_POH(void) {
    u32 check_item = __cntlzw(SMELL_POH - g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerStatusA().getScent());
    return check_item >> 5;
}

int item_getcheck_func_SMELL_FISH(void) {
    u32 check_item = __cntlzw(SMELL_FISH - g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerStatusA().getScent());
    return check_item >> 5;
}

int item_getcheck_func_SMELL_CHILDREN(void) {
    u32 check_item = __cntlzw(SMELL_CHILDREN - g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerStatusA().getScent());
    return check_item >> 5;
}

int item_getcheck_func_SMELL_MEDICINE(void) {
    u32 check_item = __cntlzw(SMELL_MEDICINE - g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerStatusA().getScent());
    return check_item >> 5;
}

void item_getcheck_func_M_BEETLE(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(M_BEETLE);
}

void item_getcheck_func_F_BEETLE(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(F_BEETLE);
}

void item_getcheck_func_M_BUTTERFLY(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(M_BUTTERFLY);
}

void item_getcheck_func_F_BUTTERFLY(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(F_BUTTERFLY);
}

void item_getcheck_func_M_STAG_BEETLE(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(M_STAG_BEETLE);
}

void item_getcheck_func_F_STAG_BEETLE(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(F_STAG_BEETLE);
}

void item_getcheck_func_M_GRASSHOPPER(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(M_GRASSHOPPER);
}

void item_getcheck_func_F_GRASSHOPPER(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(F_GRASSHOPPER);
}

void item_getcheck_func_M_NANAFUSHI(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(M_NANAFUSHI);
}

void item_getcheck_func_F_NANAFUSHI(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(F_NANAFUSHI);
}

void item_getcheck_func_M_DANGOMUSHI(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(M_DANGOMUSHI);
}

void item_getcheck_func_F_DANGOMUSHI(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(F_DANGOMUSHI);
}

void item_getcheck_func_M_MANTIS(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(M_MANTIS);
}

void item_getcheck_func_F_MANTIS(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(F_MANTIS);
}

void item_getcheck_func_M_LADYBUG(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(M_LADYBUG);
}

void item_getcheck_func_F_LADYBUG(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(F_LADYBUG);
}

void item_getcheck_func_M_SNAIL(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(M_SNAIL);
}

void item_getcheck_func_F_SNAIL(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(F_SNAIL);
}

void item_getcheck_func_M_DRAGONFLY(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(M_DRAGONFLY);
}

void item_getcheck_func_F_DRAGONFLY(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(F_DRAGONFLY);
}

void item_getcheck_func_M_ANT(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(M_ANT);
}

void item_getcheck_func_F_ANT(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(F_ANT);
}

void item_getcheck_func_M_MAYFLY(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(M_MAYFLY);
}

void item_getcheck_func_F_MAYFLY(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(F_MAYFLY);
}

int item_getcheck_func_POU_SPIRIT(void){
    return g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerCollect().getPoeCount();
}

int item_getcheck_func_ANCIENT_DOCUMENT(void) {
    u32 check_item = __cntlzw(ANCIENT_DOCUMENT - g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().getItem(SLOT_22,true));
    return check_item >> 5;
}

int item_getcheck_func_AIR_LETTER(void) {
    u32 check_item = __cntlzw(AIR_LETTER - g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().getItem(SLOT_22,true));
    return check_item >> 5;
}

int item_getcheck_func_ANCIENT_DOCUMENT2(void) {
    u32 check_item = __cntlzw(ANCIENT_DOCUMENT2 - g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().getItem(SLOT_22,true));
    return check_item >> 5;
}

int item_getcheck_func_LV7_DUNGEON_EXIT(void) {
    u32 check_item = __cntlzw(LV7_DUNGEON_EXIT - g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerItem().getItem(SLOT_18,true));
    return check_item >> 5;
}

int item_getcheck_func_LINKS_SAVINGS(void){
    return -1;
}

int item_getcheck_func_SMALL_KEY2(void){
    return -1;
}

int item_getcheck_func_POU_FIRE1(void){
    return -1;
}

int item_getcheck_func_POU_FIRE2(void){
    return -1;
}

int item_getcheck_func_POU_FIRE3(void){
    return -1;
}

int item_getcheck_func_POU_FIRE4(void){
    return -1;
}

int item_getcheck_func_BOSSRIDER_KEY(void){
    return -1;
}

void item_getcheck_func_TOMATO_PUREE(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(TOMATO_PUREE);
}

void item_getcheck_func_TASTE(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(TASTE);
}

void item_getcheck_func_LV5_BOSS_KEY(void){
    g_dComIfG_gameInfo.info.getMemory().getTempFlags().isDungeonItem(BOSS_KEY_FLAG);
}

int item_getcheck_func_SURFBOARD(void){
    return -1;
}

int item_getcheck_func_KANTERA2(void){
    return -1;
}

void item_getcheck_func_L2_KEY_PIECES1(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(L2_KEY_PIECES1);
}

void item_getcheck_func_L2_KEY_PIECES2(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(L2_KEY_PIECES2);
}

void item_getcheck_func_L2_KEY_PIECES3(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(L2_KEY_PIECES3);
}

void item_getcheck_func_KEY_OF_CARAVAN(void){
    g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerGetItem().isFirstBit(KEY_OF_CARAVAN);
}

void item_getcheck_func_LV2_BOSS_KEY(void){
    g_dComIfG_gameInfo.info.getMemory().getTempFlags().isDungeonItem(BOSS_KEY_FLAG);
}

int item_getcheck_func_KEY_OF_FILONE(void){
    return g_dComIfG_gameInfo.info.getMemory().getTempFlags().getSmallKeys();
}

#ifdef NONMATCHING
int isBomb(u32 param1){
    u32 uvar1;
    u32 uvar2;
    int ret;

    ret = 0;
    if((u8)(param1 - 10) > 3){
        uvar1 = __cntlzw(0x70 - (u8)param1);
        uvar2 = __cntlzw(0x71 - (u8)param1);
        
        if((uvar1 | uvar2) == 0 && param1 == 0x72){
            ret = 1;
        }
    }
    return ret;
}
#else
asm bool isBomb(u8 param1){
    nofralloc
    #include "d/d_item/d_item/asm/func_8009B688.s"
}
#endif

bool isArrow(u8 param1){
    bool is_arrow;

    is_arrow = false;
    if(param1 == ARROW_1 || (u8)(param1 - ARROW_10) <= 1 || param1 == ARROW_30){
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
    if(param1 == HEART || param1 == TRIPLE_HEART){
        is_heart = true;
    }
    return is_heart;
}

//close
#ifdef NONMATCHING
bool isInsect(u8 param1) {
    bool is_insect;

    is_insect = false;
    if(param1 < noentry53 && param1 < M_BEETLE){
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