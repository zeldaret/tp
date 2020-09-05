#include "dolphin/types.h"

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
    void setSelectItemIndex(signed int select_item_index, u8 item_index);
    u8 getSelectItemIndex(signed int select_item_index) const;
    void setMixItemIndex(signed int mix_item_index, u8 item_index);
    u8 getMixItemIndex(signed int mix_item_index) const;
    u16 getRupeeMax(void) const;
    bool isMagicFlag(u8 unk_param) const;

   private:
    u16 max_health;
    u16 current_health;
    u16 current_rupees;
    u16 max_lantern_oil;
    u16 current_lantern_oil;
    u8 _unk1;
    u8 select_item[3];
    u8 mix_item[3];
    u8 _unk2;
    u8 _unk3;
    u8 equipment[6];
    u8 current_wallet;
    u8 _unk6;
    u8 _unk7;
    u8 magic_flag;
    u8 _unk9;
    u8 _unk10;
    u8 _unk11[3];
};