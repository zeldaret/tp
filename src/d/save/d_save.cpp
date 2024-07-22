/**
 * @file d_save.cpp
 * @brief Save Data Management
 *
 * This file contains the implementation of various classes and functions related to handling
 * save data in the game. It includes classes for managing player status, items, collectibles,
 * events, switches, and other game-related data. The main classes include:
 *
 * - dSv_player_status_a_c: Manages player status data such as life, rupees, oil, and equipment.
 * - dSv_player_status_b_c: Manages additional player status data.
 * - dSv_player_item_c: Handles player inventory and item management.
 * - dSv_player_get_item_c: Tracks the player's acquired items.
 * - dSv_player_collect_c: Manages player collectibles like Poe souls and Golden Bugs.
 * - dSv_event_c: Handles game events and their associated bits.
 * - dSv_info_c: Provides functions for initializing, saving, and loading game data.
 * - dSv_danBit_c: Manages dungeon-related bits and switches.
 * - dSv_zoneBit_c: Manages zone-related bits and switches.
 * - dSv_zoneActor_c: Handles actors within zones.
 *
 * The file also contains various other classes for managing specific aspects of the game, such as
 * fishing, horse-related data, letters, and mini-games.
 *
 * The dSv_info_c class provides the main functionality for saving and loading game data, with
 * functions like memory_to_card(), card_to_memory(), and initdata_to_card() for transferring
 * data between memory and the memory card.
 *
 * Overall, this file plays a crucial role in managing the game's save data, ensuring that the
 * player's progress and state are properly stored and loaded throughout the game.
 */

#include "d/save/d_save.h"
#include "d/save/d_save_init.h"
#include "JSystem/JUtility/JUTGamePad.h"
#include "stdio.h"
#include "d/meter/d_meter2_info.h"
#include "dol2asm.h"
#include "rel/d/a/obj/d_a_obj_carry/d_a_obj_carry.h"

//
// Forward References:
//

extern "C" void setItem__17dSv_player_item_cFiUc();
extern "C" void getItem__17dSv_player_item_cCFib();
extern "C" void isFirstBit__21dSv_player_get_item_cCFUc();
extern "C" void onEventBit__11dSv_event_cFUs();
extern "C" void offEventBit__11dSv_event_cFUs();
extern "C" void isEventBit__11dSv_event_cCFUs();
extern "C" extern char const* const d_save_d_save__stringBase0;
extern "C" u8 saveBitLabels__16dSv_event_flag_c[1644 + 4 /* padding */];

//
// External References:
//

extern "C" void _savegpr_22();
extern "C" void _restgpr_22();
extern "C" void __div2i();

//
// Declarations:
//

/**
 * @brief Renames specific item numbers to their standard counterparts
 *
 * @details This function standardizes certain item numbers, mapping alternate versions
 * to their primary item number.
 *
 * @param i_itemNo The item number to potentially rename
 * 
 * @return The renamed item number, or the original if no renaming is necessary
*/
static u8 dSv_item_rename(u8 i_itemNo) {
    switch (i_itemNo) {
    case OIL_BOTTLE_2:
        return OIL_BOTTLE;
    case RED_BOTTLE_2:
        return RED_BOTTLE;
    case OIL2:
        return OIL;
    default:
        return i_itemNo;
    }
}

/**
 * @brief Initializes the player's status (type A)
 *
 * @details Sets initial values for the player's life, rupees, oil, equipment, and other status variables.
*/
void dSv_player_status_a_c::init() {
    mMaxLife = 15;
    mLife = 12;
    mRupee = 0;
    mMaxOil = 0;
    mOil = 0;
    unk10 = 0;

    for (int i = 0; i < MAX_SELECT_ITEM; i++) {
        mSelectItem[i] = 0xFF;
        mMixItem[i] = 0xFF;
        dComIfGp_setSelectItem(i);
    }

    for (int i = 0; i < MAX_EQUIPMENT; i++) {
        mSelectEquip[i] = 0;
    }

    mSelectEquip[COLLECT_CLOTHING] = WEAR_CASUAL;
    mSelectEquip[COLLECT_SWORD] = NO_ITEM;
    mSelectEquip[COLLECT_SHIELD] = NO_ITEM;
    mSelectEquip[COLLECT_SMELL] = NO_ITEM;
    mSelectEquip[B_BUTTON_ITEM] = NO_ITEM;
    mWalletSize = WALLET;
    mMaxMagic = 0;
    mMagic = 0;
    mMagicFlag = 0;
    unk29 = 0;
    mTransformStatus = TF_STATUS_HUMAN;

    for (int i = 0; i < 3; i++) {
        unk31[i] = 0;
    }
}

/**
 * @brief Sets the item index for a specific select item slot
 *
 * @param i_no The select item slot number
 * @param i_slotNo The item index to set
*/
void dSv_player_status_a_c::setSelectItemIndex(int i_no, u8 i_slotNo) {
    if (i_no < MAX_SELECT_ITEM) {
        mSelectItem[i_no] = i_slotNo;
    }
}

/**
 * @brief Gets the item index for a specific select item slot
 *
 * @param i_no The select item slot number
 * 
 * @return The item index for the specified slot, or 0 if the slot is invalid
*/
u8 dSv_player_status_a_c::getSelectItemIndex(int i_no) const {
    if (i_no < MAX_SELECT_ITEM) {
        return mSelectItem[i_no];
    }
    return 0;
}

/**
 * @brief Sets the item index for a specific mix item slot
 *
 * @param i_no The mix item slot number
 * @param i_slotNo The item index to set
*/
void dSv_player_status_a_c::setMixItemIndex(int i_no, u8 i_slotNo) {
    if (i_no < MAX_SELECT_ITEM) {
        mMixItem[i_no] = i_slotNo;
    }
}

/**
 * @brief Gets the item index for a specific mix item slot
 *
 * @param i_no The mix item slot number
 * 
 * @return The item index for the specified slot, or 0 if the slot is invalid
*/
u8 dSv_player_status_a_c::getMixItemIndex(int i_no) const {
    if (i_no < MAX_SELECT_ITEM) {
        return mMixItem[i_no];
    }
    return 0;
}

/**
 * @brief Gets the maximum rupee capacity based on the current wallet size
 *
 * @return The maximum number of rupees the player can hold
*/
u16 dSv_player_status_a_c::getRupeeMax() const {
    if (mWalletSize < 3) {
        switch (mWalletSize) {
        case WALLET:
            return 300;
        case BIG_WALLET:
            return 600;
        case GIANT_WALLET:
            return 1000;
        }
    }
    return 0;
}

/**
 * @brief Checks if a specific magic flag is set
 *
 * @param i_magic The magic flag to check
 * 
 * @return TRUE if the flag is set, FALSE otherwise
*/
BOOL dSv_player_status_a_c::isMagicFlag(u8 i_magic) const {
    if (i_magic == 0) {
        return dComIfGs_isEventBit(dSv_event_flag_c::M_097);  // Magic Unlocked
    }

    return (mMagicFlag & (u8)(1 << i_magic)) ? TRUE : FALSE;
}

/**
 * @brief Initializes the player's status (type B)
 *
 * @details Sets initial values for the player's date, time, transformation level, and dark clear level flags.
*/
void dSv_player_status_b_c::init() {
    mDateIpl = 0;
    mTransformLevelFlag = 0;
    mDarkClearLevelFlag = 0;
    unk10 = 0;
    mTime = 255.0f;
    mDate = 0;

    for (int i = 0; i < 3; i++) {
        unk18[i] = 0;
    }
}

/**
 * @brief Sets the dark clear level flag for a specific level
 *
 * @param i_no The level number to set the flag for
*/
void dSv_player_status_b_c::onDarkClearLV(int i_no) {
    mDarkClearLevelFlag |= (u8)(1 << i_no);
}

/**
 * @brief Checks if the dark clear level flag is set for a specific level
 *
 * @param i_no The level number to check
 * 
 * @return TRUE if the flag is set, FALSE otherwise
*/
BOOL dSv_player_status_b_c::isDarkClearLV(int i_no) const {
    return mDarkClearLevelFlag & (u8)(1 << i_no) ? TRUE : FALSE;
}

/**
 * @brief Sets the transform level flag for a specific level
 *
 * @param i_no The level number to set the flag for
*/
void dSv_player_status_b_c::onTransformLV(int i_no) {
    mTransformLevelFlag |= (u8)(1 << i_no);
}

/**
 * @brief Checks if the transform level flag is set for a specific level
 *
 * @param i_no The level number to check
 * 
 * @return TRUE if the flag is set, FALSE otherwise
*/
BOOL dSv_player_status_b_c::isTransformLV(int i_no) const {
    return mTransformLevelFlag & (u8)(1 << i_no) ? TRUE : FALSE;
}

/**
 * @brief Initializes the horse place data
 *
 * @details Sets default values for the horse's name, position, angle, spawn ID, and room number.
*/
void dSv_horse_place_c::init() {
    strcpy(mName, "");
    mPos.set(0.0f, 0.0f, 0.0f);
    mAngleY = 0;
    mSpawnId = 0;
    mRoomNo = 0;
}

/**
 * @brief Sets the horse place data
 *
 * @param i_name The name of the horse place
 * @param i_pos The position of the horse
 * @param i_angle The Y-angle of the horse
 * @param i_roomNo The room number where the horse is located
*/
void dSv_horse_place_c::set(const char* i_name, const cXyz& i_pos, s16 i_angle, s8 i_roomNo) {
    strcpy(mName, i_name);
    mPos = i_pos;
    mAngleY = i_angle;
    mRoomNo = i_roomNo;
}

/**
 * @brief Initializes the player return place data
 *
 * @details Sets default values for the return place name, room number, player status, and other fields.
*/
void dSv_player_return_place_c::init() {
    strcpy(mName, "F_SP108");
    mRoomNo = 1;
    mPlayerStatus = 0;
    unk10 = 21;
    unk11 = 0;
}

/**
 * @brief Sets the player return place data
 *
 * @param i_name The name of the return place
 * @param i_roomNo The room number of the return place
 * @param i_status The player status at the return place
*/
void dSv_player_return_place_c::set(const char* i_name, s8 i_roomNo, u8 i_status) {
    strcpy(mName, i_name);
    mRoomNo = i_roomNo;
    mPlayerStatus = i_status;
}

/**
 * @brief Initializes the player's last stay info in the field
 *
 * @details Sets default values for the last stay location, including name, position, angle, spawn ID, and region data.
*/
void dSv_player_field_last_stay_info_c::init() {
    strcpy(mName, "");
    mPos.set(0.0f, 0.0f, 0.0f);
    mAngleY = 0;
    mLastSpawnId = 0;
    mRegionNo = 1;
    mFieldDataExistFlag = false;
    mRegion = 0;

    for (int i = 0; i < 2; i++) {
        unk26[i] = 0;
    }
}

/**
 * @brief Sets the player's last stay info in the field
 *
 * @param i_name The name of the last stay location
 * @param i_pos The position of the last stay
 * @param i_angle The Y-angle at the last stay
 * @param i_spawn The spawn ID of the last stay
 * @param i_regionNo The region number of the last stay
*/
void dSv_player_field_last_stay_info_c::set(const char* i_name, const cXyz& i_pos, s16 i_angle,
                                            s8 i_spawn, u8 i_regionNo) {
    strcpy(mName, i_name);
    mPos = i_pos;
    mAngleY = i_angle;
    mLastSpawnId = i_spawn;
    mRegionNo = i_regionNo;
}

/**
 * @brief Sets a region bit in the player's field last stay info
 *
 * @param i_region The region number to set (0-7)
*/
void dSv_player_field_last_stay_info_c::onRegionBit(int i_region) {
    if (i_region >= 0 && i_region < 8) {
        mRegion |= (u8)(1 << i_region);
    }
}

/**
 * @brief Checks if a region bit is set in the player's field last stay info
 *
 * @param i_region The region number to check (0-7)
 * 
 * @return TRUE if the region bit is set, FALSE otherwise
*/
BOOL dSv_player_field_last_stay_info_c::isRegionBit(int i_region) const {
    if (i_region >= 0 && i_region < 8) {
        return (mRegion & (u8)(1 << i_region)) ? TRUE : FALSE;
    }
    return false;
}

/**
 * @brief Initializes the player's last mark info
 *
 * @details Sets default values for the last mark location, including name, position, angle, room number, and spawn ID.
*/
void dSv_player_last_mark_info_c::init() {
    strcpy(mName, "");
    mPos.set(0.0f, 0.0f, 0.0f);
    mAngleY = 0;
    mRoomNo = 0;
    mSpawnId = 0;
    mWarpAcceptStage = -1;

    for (int i = 0; i < 3; i++) {
        unk25[i] = 0;
    }
}

/**
 * @brief Sets the warp item data for the player's last mark info
 *
 * @param i_name The name of the warp location
 * @param i_pos The position of the warp location
 * @param i_angle The Y-angle at the warp location
 * @param i_roomNo The room number of the warp location
*/
void dSv_player_last_mark_info_c::setWarpItemData(const char* i_name, const cXyz& i_pos,
                                                  s16 i_angle, s8 i_roomNo, u8, u8) {
    strcpy(mName, i_name);
    mPos.set(i_pos);
    mAngleY = i_angle;
    mRoomNo = i_roomNo;
}

/**
 * @brief Initializes the player's item inventory
 *
 * @details Sets all item slots to NO_ITEM.
*/
void dSv_player_item_c::init() {
    for (int i = 0; i < MAX_ITEM_SLOTS; i++) {
        mItems[i] = NO_ITEM;
        mItemSlots[i] = NO_ITEM;
    }
}

/**
 * @brief Sets an item in a specific slot and updates the inventory
 *
 * @details Updates the item in the specified slot, rearranges the inventory,
 * and updates the select item if necessary.
 * 
 * @param i_slotNo The slot number to set the item in
 * @param i_itemNo The item number to set
*/
void dSv_player_item_c::setItem(int i_slotNo, u8 i_itemNo) {
    if (i_slotNo < MAX_ITEM_SLOTS) {
        mItems[i_slotNo] = i_itemNo;
        setLineUpItem();
    }

    for (int i = DEFAULT_SELECT_ITEM_INDEX; i < MAX_SELECT_ITEM - 1; i++) {
        if (i_slotNo == dComIfGs_getSelectItemIndex(i)) {
            dComIfGp_setSelectItem(i);
        }
    }
}

/**
 * @brief Gets the item in a specific slot, considering item combinations
 *
 * @details Checks for various item combinations such as Bomb Arrows, Hawkeye,
 *          and fishing rod combinations if i_checkCombo is true.
 * 
 * @param i_slotNo The slot number to get the item from
 * @param i_checkCombo Whether to check for item combinations
 * 
 * @return The item number in the slot, or a combined item number if applicable
*/
u8 dSv_player_item_c::getItem(int i_slotNo, bool i_checkCombo) const {
    if (i_slotNo < MAX_ITEM_SLOTS) {
        if (i_checkCombo) {
            for (int i = 0; i < SELECT_ITEM_NUM; i++) {
                if ((i_slotNo == dComIfGs_getSelectItemIndex(i) ||
                     i_slotNo == dComIfGs_getMixItemIndex(i)) &&
                    dComIfGs_getMixItemIndex(i) != NO_ITEM) {
                    u8 select_item = mItems[dComIfGs_getSelectItemIndex(i)];
                    u8 mix_item = mItems[dComIfGs_getMixItemIndex(i)];

                    // Get Bomb arrow check: Bow + Normal Bombs
                    if ((select_item == BOW && mix_item == NORMAL_BOMB) ||
                        (mix_item == BOW && select_item == NORMAL_BOMB)) {
                        return BOMB_ARROW;
                    }

                    // Get Bomb arrow check: Bow + Water Bombs
                    if ((select_item == BOW && mix_item == WATER_BOMB) ||
                        (mix_item == BOW && select_item == WATER_BOMB)) {
                        return BOMB_ARROW;
                    }

                    // Get Bomb arrow check: Bow + Bomblings
                    if ((select_item == BOW && mix_item == POKE_BOMB) ||
                        (mix_item == BOW && select_item == POKE_BOMB)) {
                        return BOMB_ARROW;
                    }

                    // Get Hawkeye check
                    if ((select_item == BOW && mix_item == HAWK_EYE) ||
                        (mix_item == BOW && select_item == HAWK_EYE)) {
                        return HAWK_ARROW;
                    }

                    // Get Rod w/ bee larva
                    if ((select_item == FISHING_ROD_1 && mix_item == BEE_CHILD) ||
                        (mix_item == FISHING_ROD_1 && select_item == BEE_CHILD)) {
                        return BEE_ROD;
                    }

                    // Get Rod w/ coral earring
                    if ((select_item == FISHING_ROD_1 && mix_item == ZORAS_JEWEL) ||
                        (mix_item == FISHING_ROD_1 && select_item == ZORAS_JEWEL)) {
                        return JEWEL_ROD;
                    }

                    // Get Rod w/ worm
                    if ((select_item == FISHING_ROD_1 && mix_item == WORM) ||
                        (mix_item == FISHING_ROD_1 && select_item == WORM)) {
                        return WORM_ROD;
                    }

                    // This block will only run on the Wii version
                    if (i == SELECT_ITEM_B) {
                        if (dComIfGs_getSelectItemIndex(i) == 0 &&
                            dComIfGs_getMixItemIndex(i) == 0) {
                            dComIfGs_setSelectItemIndex(i, NO_ITEM);
                            dComIfGs_setMixItemIndex(i, NO_ITEM);
                            return NO_ITEM;
                        }
                    }
                    // Uncertain combination item＝＝＝＞%d, %d\n
                    OSReport_Error("合成アイテム不定＝＝＝＞%d, %d\n", select_item, mix_item);
                }
            }
        }
        return mItems[i_slotNo];
    }

    return NO_ITEM;
}

/**
 * @brief Rearranges the player's inventory based on a predefined order
 *
 * @details Sorts the items in the inventory according to a static list of item priorities.
*/
void dSv_player_item_c::setLineUpItem() {
    static u8 i_item_lst[23] = {
        0x0A, 0x08, 0x06, 0x02, 0x09, 0x04, 0x03, 0x00, 0x01, 0x17, 0x14, 0x05,
        0x0F, 0x10, 0x11, 0x0B, 0x0C, 0x0D, 0x0E, 0x13, 0x12, 0x16, 0x15,
    };

    int slot_idx = 0;

    for (int i = 0; i < 24; i++) {
        mItemSlots[i] = NO_ITEM;
    }

    for (int i = 0; i < 23; i++) {
        u32 current = i_item_lst[i];
        if (mItems[current] != NO_ITEM) {
            mItemSlots[slot_idx] = current;
            slot_idx++;
        }
    }
}

/**
 * @brief Gets the item in a specific slot of the rearranged inventory
 *
 * @param i_slotNo The slot number in the rearranged inventory
 * 
 * @return The item number in the specified slot, or NO_ITEM if the slot is invalid
*/
u8 dSv_player_item_c::getLineUpItem(int i_slotNo) const {
    if (i_slotNo < MAX_ITEM_SLOTS) {
        return mItemSlots[i_slotNo];
    }

    return NO_ITEM;
}

/**
 * @brief Replaces the contents of a bottle with a new item
 *
 * @details Searches for the specified bottle item and replaces it with the new item.
 *          Also handles special cases like setting the hot spring timer.
 * 
 * @param curItemIn The current item in the bottle to be replaced
 * @param newItemIn The new item to put in the bottle
*/
void dSv_player_item_c::setBottleItemIn(u8 curItemIn, u8 newItemIn) {
    curItemIn = dSv_item_rename(curItemIn);
    newItemIn = dSv_item_rename(newItemIn);

    for (int i = 0; i < 4; i++) {
        if (curItemIn == mItems[i + SLOT_11]) {
            setItem(i + SLOT_11, newItemIn);
            if (newItemIn == HOT_SPRING) {
                dMeter2Info_setHotSpringTimer(i + SLOT_11);
            }

            for (int j = 0; j < 3; j++) {
                if (i + SLOT_11 == dComIfGs_getSelectItemIndex(j)) {
                    dComIfGp_setSelectItem(j);
                }
            }
            return;
        }
    }
}

/**
 * @brief Puts a new item into an empty bottle
 *
 * @details Finds an empty bottle in the inventory and replaces it with the specified item.
 *
 * @param i_itemNo The item number to put in the empty bottle
*/
void dSv_player_item_c::setEmptyBottleItemIn(u8 i_itemNo) {
    i_itemNo = dSv_item_rename(i_itemNo);
    setBottleItemIn(EMPTY_BOTTLE, i_itemNo);
}

/**
 * @brief Sets an empty bottle in the player's inventory
 *
 * @details Iterates through the player's bottle slots and sets the first empty slot to contain an empty bottle.
 * The function stops after setting the first empty bottle.
*/
void dSv_player_item_c::setEmptyBottle() {
    for (int i = 0; i < 4; i++) {
        if (dComIfGs_getItem((u8)(i + SLOT_11), true) == NO_ITEM) {
            dComIfGs_setItem((u8)(i + SLOT_11), EMPTY_BOTTLE);
            return;
        }
    }
}

/**
* @brief Sets an empty bottle in the player's inventory
*
* @details Searches for an empty bottle slot in the player's inventory and sets it to the specified item number.
*          The function checks the first 4 slots starting from SLOT_11 and sets the first empty 
*          one found.
* 
* @param i_itemNo The item number to set in the empty bottle slot
* 
*/
void dSv_player_item_c::setEmptyBottle(u8 i_itemNo) {
    for (int i = 0; i < 4; i++) {
        if (dComIfGs_getItem((u8)(i + SLOT_11), true) == NO_ITEM) {
            dComIfGs_setItem((u8)(i + SLOT_11), i_itemNo);
            return;
        }
    }
}

/**
* @brief Sets the item in an equipped bottle
*
* @details This function updates the item contained in an equipped bottle. It handles
*          special cases like hot spring water and updates the item across different
*          game systems.
*
* @param curItemIn The current item in the bottle
* @param newItemIn The new item to put in the bottle
*
*/
void dSv_player_item_c::setEquipBottleItemIn(u8 curItemIn, u8 newItemIn) {
    newItemIn = dSv_item_rename(newItemIn);

    if (dComIfGs_getSelectItemIndex(curItemIn) >= SLOT_11 &&
        dComIfGs_getSelectItemIndex(curItemIn) <= SLOT_14) {
        if (newItemIn == HOT_SPRING) {
            dMeter2Info_setHotSpringTimer(dComIfGs_getSelectItemIndex(curItemIn));
        }

        setItem(dComIfGs_getSelectItemIndex(curItemIn), newItemIn);
        dComIfGs_setItem(dComIfGs_getSelectItemIndex(curItemIn), newItemIn);
        dComIfGp_setItem(dComIfGs_getSelectItemIndex(curItemIn), newItemIn);
        dComIfGp_setSelectItem(curItemIn);
    }
}

/**
* @brief Empties an equipped bottle
*
* @details This function empties an equipped bottle by setting its contents to EMPTY_BOTTLE
*
* @param curItemIn The current item in the bottle to be emptied
*
*/
void dSv_player_item_c::setEquipBottleItemEmpty(u8 curItemIn) {
    setEquipBottleItemIn(curItemIn, EMPTY_BOTTLE);
}

/**
* @brief Counts the number of bottles containing a specific item
*
* @details This function iterates through all bottles and counts how many contain
*          the specified item
*
* @param i_itemNo The item number to check for in bottles
*
* @return The number of bottles containing the specified item
*
*/
u8 dSv_player_item_c::checkBottle(u8 i_itemNo) {
    u8 num_bottles = 0;
    u8 item_id = dSv_item_rename(i_itemNo);

    for (int i = 0; i < BOTTLE_MAX; i++) {
        if (item_id == mItems[i + SLOT_11]) {
            num_bottles++;
        }
    }
    return num_bottles;
}

/**
 * @brief Event flag bit table.
 *
 * @details This array stores the event flags used throughout the game
 *          to track game progress, story events, character interactions, item acquisitions,
 *          dungeon completions, and various other game states. Each flag is represented by a 16-bit
 *          unsigned integer (u16) and corresponds to a specific event or condition in the game.
 */
u16 dSv_event_flag_c::saveBitLabels[822] = {
    UNUSED, TEST_001, TEST_002, TEST_003, TEST_004, F_0001, F_0002, F_0003, F_0004, F_0005, F_0006, 
    F_0007, F_0008, F_0009, F_0010, F_0011, F_0012, F_0013, F_0014, F_0015, F_0016, F_0017, F_0018, 
    F_0019, F_0020, D_0001, F_0021, F_0022, F_0023, F_0024, F_0025, F_0026, F_0027, F_0028, F_0029, 
    F_0030, F_0031, F_0032, F_0033, M_006,  M_007,  M_008,  M_009,  M_010,  M_011,  M_012,  M_013,  
    M_014,  M_015,  M_016,  M_017,  M_018,  M_019,  M_020,  M_021,  M_022,  M_023,  M_024,  M_025,  
    M_026,  M_027,  M_028,  M_029,  M_030,  M_031,  M_032,  M_033,  M_034,  M_035,  M_036,  M_037,  
    M_038,  M_039,  M_040,  M_041,  M_042,  M_043,  M_044,  M_045,  M_046,  M_047,  M_048,  M_049,  
    M_050,  M_051,  M_052,  M_053,  M_054,  M_055,  M_056,  M_057,  M_058,  M_059,  M_060,  M_061,  
    M_062,  M_063,  M_064,  M_065,  M_066,  M_067,  M_068,  M_069,  M_070,  M_071,  M_072,  M_073,  
    M_074,  M_075,  M_076,  M_077,  M_078,  M_079,  M_080,  M_081,  M_082,  M_083,  M_084,  M_085,  
    M_086,  M_087,  M_088,  M_089,  M_090,  M_091,  M_092,  M_093,  M_094,  M_095,  M_096,  F_0034, 
    F_0035, M_001,  M_003,  F_0036, F_0037, F_0038, F_0039, F_0040, F_0041, F_0042, F_0043, F_0044, 
    F_0045, F_0046, F_0047, F_0048, F_0049, F_0050, F_0051, F_0052, F_0053, F_0054, F_0055, F_0056, 
    F_0057, F_0058, F_0059, F_0060, F_0061, F_0062, F_0063, F_0064, F_0065, F_0066, F_0067, F_0068, 
    F_0069, F_0070, M_002,  F_0071, F_0072, F_0073, F_0074, F_0075, F_0076, F_0077, F_0078, F_0079, 
    F_0080, F_0081, F_0082, F_0083, F_0084, F_0085, EREG_000,       F_0086, F_0087, F_0088, F_0089, 
    F_0090, F_0091, F_0092, F_0093, F_0094, F_0095, F_0096, F_0097, TOTAL_PRICE_HIGH,       TOTAL_PRICE_LOW, 
    TOTAL_PAYMENT_HIGH,     TOTAL_PAYMENT_LOW,      F_0202, F_0203, F_0204, F_0205, F_0206, F_0207, 
    F_0208, F_0209, F_0210, F_0211, F_0212, F_0213, F_0214, F_0215, F_0216, F_0217, F_0218, F_0219, 
    F_0220, F_0221, F_0222, F_0223, F_0224, F_0225, F_0226, F_0227, F_0228, F_0229, F_0230, F_0231,
    F_0232, F_0233, F_234,  F_0235, F_0236, F_0237, F_0238, T_0239, F_0240, F_0241, F_0242, F_0243, 
    F_0244, MAP_VISIBLE,    F_0246, F_0247, F_0248, F_0249, F_0250, F_0251, F_0252, F_0253, F_0254, 
    F_0255, F_0256, F_0257, F_0258, F_0259, F_0260, F_0261, F_0262, F_0263, F_0264, F_0265, F_0266, 
    F_0267, F_0268, F_0269, F_0270, F_0271, F_0272, F_0273, F_0274, F_0275, F_0276, F_0277, F_0278,
    F_0279, F_0280, F_0281, F_282,  F_283,  F_284,  F_285,  F_286,  F_287,  F_288,  F_289,  F_290, 
    M_097,  F_0292, F_0293, F_0294, F_0295, F_0296, F_0297, F_0298, F_0299, F_0300, F_0301, F_0302, 
    F_0303, F_0304, F_0305, F_0306, F_0307, F_0308, F_0309, F_0310, F_0311, F_0312, F_0313, F_0314, 
    F_0315, F_0316, F_0317, F_0318, F_0319, F_0320, F_0321, F_0322, F_0323, F_0324, F_0325, F_0326, 
    F_0327, F_0328, F_0329, F_0330, F_0331, F_0332, F_0333, F_0334, F_0335, F_0336, F_0337, F_0338, 
    F_0339, F_0340, F_0341, F_0342, F_0343, F_0344, F_0345, F_0346, F_0347, F_0348, F_0349, F_0350, 
    F_0351, F_0352, F_0353, F_0354, F_0355, F_0356, F_0357, F_0358, F_0359, F_0360, F_0361, F_0362, 
    F_0363, F_0364, F_0365, F_0366, F_0367, F_0368, F_0369, F_0370, F_0371, F_0372, F_0373, F_0374, 
    F_0375, F_0376, F_0377, F_0378, F_0379, F_0380, F_0381, F_0382, F_0383, F_0384, F_0385, F_0386, 
    F_0387, F_0388, F_0389, F_0390, F_0391, F_0392, F_0393, F_0394, F_0395, F_0396, F_0397, F_0398, 
    F_0399, F_0400, F_0401, F_0402, F_0403, F_0404, F_0405, F_0406, F_0407, F_0408, F_0409, F_0410, 
    F_0411, F_0412, F_0413, F_0414, F_0415, F_0416, F_0417, F_0418, F_0419, F_0420, F_0421, F_0422, 
    F_0423, F_0424, F_0425, F_0426, F_0427, F_0428, F_0429, F_0430, F_0431, F_0432, F_0433, F_0434, 
    F_0435, F_0436, F_0437, F_0438, F_0439, F_0440, F_0441, F_0442, F_0443, F_0444, F_0445, F_0446, 
    F_0447, F_0448, F_0449, F_0450, FUND_RAISING_LOW,       FUND_RAISING_HIGH,      F_0453, F_0454, 
    F_0455, F_0456, F_0457, F_0458, F_0459, F_0460, F_0461, F_0462, F_0463, F_0464, F_0465, F_0466, 
    F_0467, F_0468, F_0469, F_0470, F_0471, F_0472, F_0473, F_0474, F_0475, F_0476, F_0477, F_0478, 
    F_0479, F_0480, F_0481, F_0482, F_0483, F_0484, F_0485, F_0486, F_0487, F_0488, F_0489, F_0490, 
    F_0491, F_0492, F_0493, F_0494, F_0495, F_0496, F_0497, F_0498, F_0499, F_0500, F_0501, F_0502, 
    F_0503, F_0504, F_0505, F_0506, F_0507, F_0508, F_0509, F_0510, FUND_RAISING_LOW2,      FUND_RAISING_HIGH2, 
    F_0513, F_0514, F_0515, F_0516, F_0517, F_0518, F_0519, F_0520, F_0521, F_0522, F_0523, F_0524, 
    F_0525, F_0526, F_0527, F_0528, F_0529, F_0530, F_0531, F_0532, F_0533, F_0534, F_0535, F_0536, 
    F_0537, F_0538, F_0539, F_0540, F_0541, F_0542, F_0543, F_0544, F_0545, F_0546, F_0547, F_0548, 
    F_0549, F_0550, F_0551, F_0552, F_0553, F_0554, F_0555, F_0556, F_0557, F_0558, F_0559, F_0560, 
    F_0561, F_0562, F_0563, F_0564, F_0565, F_0566, F_0567, F_0568, F_0569, F_0570, F_0571, F_0572, 
    F_0573, F_0574, F_0575, F_0576, F_0577, F_0578, F_0579, F_0580, F_0581, F_0582, F_0583, F_0584, 
    F_0585, F_0586, F_0587, F_0588, F_0589, F_0590, F_0591, F_0592, F_0593, F_0594, F_0595, F_0596, 
    F_0597, F_0598, F_0599, F_0600, F_0601, UNUSED, F_0700, F_0701, F_0702, F_0606, F_0607, F_0608, 
    F_0609, F_0610, F_0611, F_0612, F_0613, F_0614, F_0615, F_0616, F_0617, F_0618, F_0619, F_0620, 
    F_0621, F_0622, F_0623, F_0624, F_0625, F_0626, F_0627, F_0628, F_0629, F_0630, F_0631, F_0632, 
    F_0633, F_0634, F_0635, F_0636, F_0637, F_0638, F_0639, F_0640, F_0641, F_0642, F_0643, F_0644, 
    F_0645, F_0646, F_0647, F_0648, F_0649, F_0650, F_0651, F_0652, F_0653, F_0654, F_0655, F_0656, 
    F_0657, F_0658, F_0659, F_0660, F_0661, F_0662, F_0663, F_0664, F_0665, F_0666, F_0667, F_0668, 
    F_0669, F_0670, F_0671, F_0672, F_0673, F_0674, F_0675, F_0676, F_0677, F_0678, F_0679, F_0680, 
    F_0681, F_0682, F_0683, F_0684, F_0685, F_0686, F_0687, F_0688, F_0689, F_0690, F_0691, F_0692, 
    F_0693, F_0694, F_0695, F_0696, F_0697, F_0698, F_0699, F_0700B,        F_0701B,        F_0702B, 
    F_0703, F_0704, F_0705, F_0706, F_0707, F_0708, F_0709, KORO2_LEVEL,    LM_RECORD_0,    RI_RECORD_0,
    NP_RECORD_0,    CF_RECORD_0,    F_0715, F_0716, F_0717, F_0718, F_0719, F_0720, F_0721, F_0722,
    F_0723, F_0724, F_0725, F_0726, F_0727, F_0728, F_0729, F_0730, SP_LURE__USE_COUNT,     F_0732, 
    F_0733, F_0734, F_0735, F_0736, F_0737, F_0738, F_0739, F_0740, F_0741, F_0742, F_0743, F_0744, 
    F_0745, F_0746, F_0747, F_0748, F_0749, F_0750, F_0751, F_0752, F_0753, F_0754, F_0755, F_0756, 
    F_0757, F_0758, F_0759, KAKERA_GET_INFO_00,     KAKERA_GET_INFO_01,     KAKERA_GET_INFO_02,
    KAKERA_GET_INFO_03,     KAKERA_GET_INFO_04,     KAKERA_GET_INFO_05,     B_BTN_GUIDE,    J_BTN_GUIDE,
    F_0768, F_0769, F_0770, F_0771, F_0772, F_0773, F_0774, F_0775, F_0776, F_0777, F_0778, F_0779,
    F_0780, F_0781, F_0782, F_0783, F_0784, F_0785, F_0786, F_0787, F_0788, F_0789, F_0790, F_0791,
    F_0792, F_0793, F_0794, F_0795, F_0796, F_0797, F_0798, F_0799, F_0800, F_0801, F_0802, F_0803,
    F_0804, F_0805, F_0806, F_0807, F_0808, F_0809, F_0810, F_0811, F_0812, F_0813, F_0814, F_0815,
    F_0816, F_0817, F_0818, F_0819, F_0820, KORO2_ALLCLEAR,
};

/**
 * @brief Checks if there are insects in any bottle
 *
 * @details Iterates through 24 possible insect types and checks if they are present in a bottle
 * and if a corresponding event flag is not set.
 *
 * @return TRUE if an insect is found in a bottle, FALSE otherwise
*/
BOOL dSv_player_item_c::checkInsectBottle() {
    for (int i = 0; i < 24; i++) {
        if (dComIfGs_isItemFirstBit(M_BEETLE + i) &&
            !dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0x191 + i])) {
            return TRUE;
        }
    }
    return FALSE;
}

/**
 * @brief Counts the number of empty bottles
 *
 * @details Iterates through the bottle slots (SLOT_11 to SLOT_11 + BOTTLE_MAX - 1)
 * and counts how many contain an EMPTY_BOTTLE item.
 *
 * @return The number of empty bottles
*/
u8 dSv_player_item_c::checkEmptyBottle() {
    u8 bottleNum = 0;

    for (int i = 0; i < BOTTLE_MAX; i++) {
        if (mItems[i + SLOT_11] == EMPTY_BOTTLE) {
            bottleNum++;
        }
    }
    return bottleNum;
}

/**
 * @brief Sets a new bomb bag item and updates related game state
 *
 * @details Replaces a current bomb bag item with a new one, optionally sets the bomb count
 * to the maximum for the new bag, and updates the select item if necessary.
 *
 * @param i_curBomb The current bomb bag item to be replaced
 * @param i_newBomb The new bomb bag item to set
 * @param i_setNum Flag to determine if the bomb count should be set to maximum
*/
void dSv_player_item_c::setBombBagItemIn(u8 i_curBomb, u8 i_newBomb, bool i_setNum) {
    for (int i = 0; i < 3; i++) {
        if (i_curBomb == mItems[i + SLOT_15]) {
            setItem(i + SLOT_15, i_newBomb);

            if (i_setNum == true && i_newBomb != BOMB_BAG_LV1) {
                dComIfGs_setBombNum(i, dComIfGs_getBombMax(i_newBomb));
            }

            for (int j = 0; j < 3; j++) {
                if (i + SLOT_15 == dComIfGs_getSelectItemIndex(j)) {
                    dComIfGp_setSelectItem(j);
                }
            }
            break;
        }
    }
}

/**
 * @brief Sets a new bomb bag item with a specific bomb count and updates related game state
 *
 * @details Replaces a current bomb bag item with a new one, sets the bomb count to a specified
 * value (capped at the maximum for the new bag), and updates the select item if necessary.
 *
 * @param i_curBomb The current bomb bag item to be replaced
 * @param i_newBomb The new bomb bag item to set
 * @param i_bombNum The number of bombs to set for the new bag
 * @param i_setNum Flag to determine if the bomb count should be set
*/
void dSv_player_item_c::setBombBagItemIn(u8 i_curBomb, u8 i_newBomb, u8 i_bombNum, bool i_setNum) {
    for (int i = 0; i < 3; i++) {
        if (i_curBomb == mItems[i + SLOT_15]) {
            setItem(i + SLOT_15, i_newBomb);

            if (i_setNum == 1 && i_newBomb != BOMB_BAG_LV1) {
                if (i_bombNum > dComIfGs_getBombMax(i_newBomb)) {
                    i_bombNum = dComIfGs_getBombMax(i_newBomb);
                }
                dComIfGs_setBombNum(i, i_bombNum);
            }

            for (int j = 0; j < 3; j++) {
                if (i + SLOT_15 == dComIfGs_getSelectItemIndex(j)) {
                    dComIfGp_setSelectItem(j);
                }
            }
            break;
        }
    }
}

/**
 * @brief Sets an empty bomb bag item
 *
 * @details Sets a new bomb type to the first level bomb bag
 *
 * @param i_newBomb The new bomb type to set
 * @param i_setNum Whether to set the number of bombs
 */
void dSv_player_item_c::setEmptyBombBagItemIn(u8 i_newBomb, bool i_setNum) {
    setBombBagItemIn(BOMB_BAG_LV1, i_newBomb, i_setNum);
}

/**
 * @brief Sets an empty bomb bag item with a specific bomb count
 *
 * @details Sets a new bomb type and bomb count to the first level bomb bag
 *
 * @param i_newBomb The new bomb type to set
 * @param i_bombNum The number of bombs to set
 * @param i_setNum Whether to set the number of bombs
 */
void dSv_player_item_c::setEmptyBombBagItemIn(u8 i_newBomb, u8 i_bombNum, bool i_setNum) {
    setBombBagItemIn(BOMB_BAG_LV1, i_newBomb, i_bombNum, i_setNum);
}

/**
 * @brief Sets an empty bomb bag
 *
 * @details Searches for an empty slot and sets it to the first level bomb bag
 */
void dSv_player_item_c::setEmptyBombBag() {
    for (int i = 0; i < 3; i++) {
        if (dComIfGs_getItem((u8)(i + SLOT_15), true) == NO_ITEM) {
            dComIfGs_setItem((u8)(i + SLOT_15), BOMB_BAG_LV1);
            return;
        }
    }
}

/**
 * @brief Sets an empty bomb bag with a specific bomb type and count
 *
 * @details Searches for an empty slot, sets the bomb type, and updates the bomb count
 *
 * @param i_newBomb The new bomb type to set
 * @param i_bombNum The number of bombs to set
 */
void dSv_player_item_c::setEmptyBombBag(u8 i_newBomb, u8 i_bombNum) {
    for (int i = 0; i < 3; i++) {
        if (dComIfGs_getItem((u8)(i + SLOT_15), true) == NO_ITEM) {
            dComIfGs_setItem((u8)(i + SLOT_15), i_newBomb);

            if (i_newBomb == BOMB_BAG_LV1) {
                return;
            }

            if (i_bombNum > dComIfGs_getBombMax(i_newBomb)) {
                i_bombNum = dComIfGs_getBombMax(i_newBomb);
            }

            dComIfGs_setBombNum(i, i_bombNum);
            return;
        }
    }
}

/**
 * @brief Checks the number of bomb bags for a specific item
 *
 * @details Counts the number of bomb bags that match the given item number
 *
 * @param i_itemNo The item number to check
 * 
 * @return The number of matching bomb bags
*/
u8 dSv_player_item_c::checkBombBag(u8 i_itemNo) {
    u8 bombBags = 0;

    for (int i = 0; i < BOMB_BAG_MAX; i++) {
        if (i_itemNo == mItems[i + SLOT_15]) {
            bombBags++;
        }
    }
    return bombBags;
}

/**
 * @brief Sets a Warashibe item
 *
 * @details Updates the item in slot 21 and refreshes the selected items
 *
 * @param i_itemNo The item number to set
*/
void dSv_player_item_c::setWarashibeItem(u8 i_itemNo) {
    dComIfGs_setItem(SLOT_21, i_itemNo);
    dComIfGp_setItem(SLOT_21, i_itemNo);

    for (int i = 0; i < 4; i++) {
        if (dComIfGs_getSelectItemIndex((u8)i) == SLOT_21) {
            dComIfGp_setSelectItem((u8)i);
        }
    }
}

/**
 * @brief Upgrades the rod type to the next level
 *
 * @details Checks the current rod type and upgrades it to its jewel version
*/
void dSv_player_item_c::setRodTypeLevelUp() {
    switch (mItems[SLOT_20]) {
    case BEE_ROD: {
        mItems[SLOT_20] = JEWEL_BEE_ROD;
        break;
    }
    case WORM_ROD: {
        mItems[SLOT_20] = JEWEL_WORM_ROD;
        break;
    }
    case FISHING_ROD_1: {
        mItems[SLOT_20] = JEWEL_ROD;
        break;
    }
    }

    for (int i = 0; i < 4; i++) {
        dComIfGp_setSelectItem(i);
    }
}

/**
 * @brief Sets the bait item for the fishing rod
 *
 * @details Updates the rod type based on the bait item and the presence of Zora's Jewel
 *
 * @param i_itemNo The bait item number to set
*/
void dSv_player_item_c::setBaitItem(u8 i_itemNo) {
    switch (i_itemNo) {
    case BEE_CHILD: {
        dComIfGs_isItemFirstBit(ZORAS_JEWEL) ? mItems[SLOT_20] = JEWEL_BEE_ROD :
                                                 mItems[SLOT_20] = BEE_ROD;
        break;
    }
    case WORM: {
        dComIfGs_isItemFirstBit(ZORAS_JEWEL) ? mItems[SLOT_20] = JEWEL_WORM_ROD :
                                                 mItems[SLOT_20] = WORM_ROD;
        break;
    }
    case NO_ITEM: {
        dComIfGs_isItemFirstBit(ZORAS_JEWEL) ? mItems[SLOT_20] = JEWEL_ROD :
                                                 mItems[SLOT_20] = FISHING_ROD_1;
        break;
    }
    }

    for (int i = 0; i < 4; i++) {
        dComIfGp_setSelectItem(i);
    }
}

/**
 * @brief Initializes the player's get item flags
 *
 * @details Sets all item flags to 0
*/
void dSv_player_get_item_c::init() {
    for (int i = 0; i < 8; i++) {
        mItemFlags[i] = 0;
    }
}

/**
 * @brief Sets the first bit for a given item number
 *
 * @param i_itemNo The item number to set the first bit for
*/
void dSv_player_get_item_c::onFirstBit(u8 i_itemNo) {
    mItemFlags[i_itemNo / 32] |= (1 << (i_itemNo % 32));
}

/**
 * @brief Clears the first bit for a given item number
 *
 * @param i_itemNo The item number to clear the first bit for
*/
void dSv_player_get_item_c::offFirstBit(u8 i_itemNo) {
    mItemFlags[i_itemNo / 32] &= ~(1 << (i_itemNo % 32));
}

/**
 * @brief Checks if the first bit is set for a given item number
 *
 * @param i_itemNo The item number to check
 * 
 * @return TRUE if the first bit is set, FALSE otherwise
*/
int dSv_player_get_item_c::isFirstBit(u8 i_itemNo) const {
    return mItemFlags[i_itemNo / 32] & (1 << (i_itemNo % 32)) ? TRUE : FALSE;
}

/**
 * @brief Initializes the player's item record
 *
 * @details Sets initial values for arrow, bomb, bottle, and pachinko counts
*/
void dSv_player_item_record_c::init() {
    mArrowNum = 0;

    for (int i = 0; i < 3; i++) {
        mBombNum[i] = 0;
    }

    for (int i = 0; i < 4; i++) {
        mBottleNum[i] = 0;
    }

    mPachinkoNum = 0;

    for (int i = 0; i < 3; i++) {
        unk5[i] = 0;
    }
}

/**
 * @brief Sets the bomb count for a specific bag
 *
 * @param i_bagIdx The index of the bomb bag
 * @param i_bombNum The number of bombs to set
*/
void dSv_player_item_record_c::setBombNum(u8 i_bagIdx, u8 i_bombNum) {
    mBombNum[i_bagIdx] = i_bombNum;
}

/**
 * @brief Gets the bomb count for a specific bag
 *
 * @param i_bagIdx The index of the bomb bag
 * 
 * @return The number of bombs in the specified bag
*/
u8 dSv_player_item_record_c::getBombNum(u8 i_bagIdx) const {
    return mBombNum[i_bagIdx];
}

/**
 * @brief Sets the bottle count for a specific bottle
 *
 * @param i_bottleIdx The index of the bottle
 * @param i_bottleNum The number to set for the bottle
*/
void dSv_player_item_record_c::setBottleNum(u8 i_bottleIdx, u8 i_bottleNum) {
    mBottleNum[i_bottleIdx] = i_bottleNum;
}

/**
 * @brief Adds to the bottle count for a specific bottle
 *
 * @details Adjusts the bottle count, ensuring it stays within valid limits
 *
 * @param i_bottleIdx The index of the bottle
 * @param i_no The number to add (can be negative)
 * 
 * @return The new bottle count after adjustment
*/
u8 dSv_player_item_record_c::addBottleNum(u8 i_bottleIdx, s16 i_no) {
    int bottleNum = mBottleNum[i_bottleIdx] + i_no;

    dComIfGs_getItem((u8)(i_bottleIdx + SLOT_11), true);

    if (bottleNum < 0) {
        mBottleNum[i_bottleIdx] = 0;
    } else if (bottleNum > dComIfGs_getBottleMax()) {
        mBottleNum[i_bottleIdx] = dComIfGs_getBottleMax();
    } else {
        mBottleNum[i_bottleIdx] = bottleNum;
    }

    return mBottleNum[i_bottleIdx];
}

/**
 * @brief Gets the bottle count for a specific bottle
 *
 * @param i_bottleIdx The index of the bottle
 * 
 * @return The count for the specified bottle
 */
u8 dSv_player_item_record_c::getBottleNum(u8 i_bottleIdx) const {
    return mBottleNum[i_bottleIdx];
}

/**
 * @brief Initializes the player's maximum item counts
 *
 * @details Sets default maximum values for various items including bombs
*/
void dSv_player_item_max_c::init() {
    for (int i = 0; i < 7; i++) {
        mItemMax[i] = 30;
    }
    setBombNum(NORMAL_BOMB, 30);
    setBombNum(WATER_BOMB, 15);
    setBombNum(POKE_BOMB, 10);
    mItemMax[7] = 0;
}

/**
 * @brief Sets the maximum bomb count for a specific bomb type
 *
 * @param i_bombType The type of bomb
 * @param i_maxNum The maximum number to set
 */
void dSv_player_item_max_c::setBombNum(u8 i_bombType, u8 i_maxNum) {
    switch (i_bombType) {
    case NORMAL_BOMB:
        mItemMax[NORMAL_BOMB_MAX] = i_maxNum;
        return;
    case WATER_BOMB:
        mItemMax[WATER_BOMB_MAX] = i_maxNum;
        return;
    case POKE_BOMB:
        mItemMax[POKE_BOMB_MAX] = i_maxNum;
        return;
    }
}

/**
 * @brief Gets the maximum bomb count for a specific bomb type
 *
 * @details Considers the bomb bag level when calculating the maximum
 *
 * @param i_bombType The type of bomb
 * 
 * @return The maximum number of bombs for the specified type
 */
u8 dSv_player_item_max_c::getBombNum(u8 i_bombType) const {
    u8 lv_multiplier = 1;
    if (dComIfGs_isItemFirstBit(BOMB_BAG_LV2)) {
        lv_multiplier = 2;
    }

    switch (i_bombType) {
    case NORMAL_BOMB:
        return (u8)(mItemMax[NORMAL_BOMB_MAX] * lv_multiplier);
    case WATER_BOMB:
        return (u8)(mItemMax[WATER_BOMB_MAX] * lv_multiplier);
    case POKE_BOMB:
        return (u8)(mItemMax[POKE_BOMB_MAX] * lv_multiplier);
    default:
        return 0;
    }
}

/**
 * @brief Initializes the player collection data
 * 
 * @details Sets all item flags to 0, initializes crystal and mirror flags, and sets other values to their initial states
 */
void dSv_player_collect_c::init() {
    for (int i = 0; i < 8; i++) {
        mItem[i] = 0;
    }

    unk8 = 0;
    mCrystal = 0;
    mMirror = 0;
    unk11 = 0xFF;
    mPohNum = 0;
}

/**
 * @brief Sets a collect flag for a specific item type
 * 
 * @param i_item_type The type of item
 * @param i_item The specific item within the type
 */
void dSv_player_collect_c::setCollect(int i_item_type, u8 i_item) {
    mItem[i_item_type] |= (u8)(1 << i_item);
}

/**
 * @brief Checks if a specific item has been collected
 * 
 * @param i_item_type The type of item
 * @param i_item The specific item within the type
 * 
 * @return TRUE if the item has been collected, FALSE otherwise
 */
BOOL dSv_player_collect_c::isCollect(int i_item_type, u8 i_item) const {
    return mItem[i_item_type] & (u8)(1 << i_item) ? TRUE : FALSE;
}

/**
 * @brief Sets a crystal as collected
 * 
 * @param i_item The specific crystal item
 */
void dSv_player_collect_c::onCollectCrystal(u8 i_item) {
    mCrystal |= (u8)(1 << i_item);
}

/**
 * @brief Checks if a specific crystal has been collected
 * 
 * @param i_item The specific crystal item
 * 
 * @return TRUE if the crystal has been collected, FALSE otherwise
 */
BOOL dSv_player_collect_c::isCollectCrystal(u8 i_item) const {
    return mCrystal & (u8)(1 << i_item) ? TRUE : FALSE;
}

/**
 * @brief Sets a mirror as collected
 * 
 * @param i_item The specific mirror item
 */
void dSv_player_collect_c::onCollectMirror(u8 i_item) {
    mMirror |= (u8)(1 << i_item);
}

/**
 * @brief Checks if a specific mirror has been collected
 * 
 * @param i_item The specific mirror item
 * 
 * @return TRUE if the mirror has been collected, FALSE otherwise
 */
BOOL dSv_player_collect_c::isCollectMirror(u8 i_item) const {
    return mMirror & (u8)(1 << i_item) ? TRUE : FALSE;
}

/**
 * @brief Initializes the player wolf data
 * 
 * @details Sets all wolf-related flags to 0
 */
void dSv_player_wolf_c::init() {
    for (int i = 0; i < 3; i++) {
        unk0[i] = 0;
    }

    unk3 = 0;
}

/**
 * @brief Initializes the light drop data
 * 
 * @details Sets all light drop numbers and flags to their initial states
 */
void dSv_light_drop_c::init() {
    for (int i = 0; i < 4; i++) {
        mLightDropNum[i] = 0;
    }

    mLightDropGetFlag = 0;

    for (int i = 0; i < 3; i++) {
        unk5[i] = 0;
    }
}

/**
 * @brief Sets the number of light drops for a specific level
 * 
 * @param i_nowLevel The current level
 * @param i_dropNum The number of light drops to set
 */
void dSv_light_drop_c::setLightDropNum(u8 i_nowLevel, u8 i_dropNum) {
    if (i_nowLevel < LIGHT_DROP_STAGE || i_nowLevel > 6) {
        mLightDropNum[i_nowLevel] = i_dropNum;
    }
}

/**
 * @brief Gets the number of light drops for a specific level
 * 
 * @param i_nowLevel The current level
 * 
 * @return The number of light drops for the specified level
 */
u8 dSv_light_drop_c::getLightDropNum(u8 i_nowLevel) const {
    if (i_nowLevel >= LIGHT_DROP_STAGE && i_nowLevel <= 6) {
        return 0;
    }
    return mLightDropNum[i_nowLevel];
}

/**
 * @brief Sets the flag indicating a light drop has been obtained for a specific level
 * 
 * @param i_nowLevel The current level
 */
void dSv_light_drop_c::onLightDropGetFlag(u8 i_nowLevel) {
    if (i_nowLevel < LIGHT_DROP_STAGE || i_nowLevel > 6) {
        mLightDropGetFlag |= (u8)(1 << i_nowLevel);
    }
}

/**
 * @brief Checks if a light drop has been obtained for a specific level
 * 
 * @param i_nowLevel The current level
 * 
 * @return TRUE if a light drop has been obtained for the specified level, FALSE otherwise
 */
BOOL dSv_light_drop_c::isLightDropGetFlag(u8 i_nowLevel) const {
    if (i_nowLevel >= LIGHT_DROP_STAGE && i_nowLevel <= 6) {
        return 0;
    }
    return mLightDropGetFlag & (u8)(1 << i_nowLevel) ? TRUE : FALSE;
}

/**
 * @brief Initializes the letter information
 * 
 * @details Sets all letter flags and counters to their initial states
 */
void dSv_letter_info_c::init() {
    for (int i = 0; i < 2; i++) {
        mLetterGetFlags[i] = 0;
        mLetterReadFlags[i] = 0;
    }

    for (int i = 0; i < LETTER_INFO_BIT; i++) {
        mGetNumber[i] = 0;
    }
}

/**
 * @brief Sets the flag indicating a letter has been obtained
 * 
 * @param i_no The letter number
 */
void dSv_letter_info_c::onLetterGetFlag(int i_no) {
    mLetterGetFlags[i_no >> 5] |= 1 << (i_no & 0x1F);
}

/**
 * @brief Checks if a specific letter has been obtained
 * 
 * @param i_no The letter number
 * 
 * @return TRUE if the letter has been obtained, FALSE otherwise
 */
BOOL dSv_letter_info_c::isLetterGetFlag(int i_no) const {
    return mLetterGetFlags[i_no >> 5] & (1 << (i_no & 0x1F)) ? TRUE : FALSE;
}

/**
 * @brief Sets the flag indicating a letter has been read
 * 
 * @param i_no The letter number
 */
void dSv_letter_info_c::onLetterReadFlag(int i_no) {
    mLetterReadFlags[i_no >> 5] |= 1 << (i_no & 0x1F);
}

/**
 * @brief Checks if a specific letter has been read
 * 
 * @param i_no The letter number
 * 
 * @return TRUE if the letter has been read, FALSE otherwise
 */
BOOL dSv_letter_info_c::isLetterReadFlag(int i_no) const {
    return mLetterReadFlags[i_no >> 5] & 1 << (i_no & 0x1F) ? TRUE : FALSE;
}

/**
 * @brief Initializes the fishing information
 * 
 * @details Sets all fish counts and maximum sizes to 0
 */
void dSv_fishing_info_c::init() {
    for (int i = 0; i < 16; i++) {
        mFishCount[i] = 0;
        mMaxSize[i] = 0;
    }
}

/**
 * @brief Increments the count for a specific fish type
 * 
 * @param i_fishIdx The index of the fish type
 */
void dSv_fishing_info_c::addFishCount(u8 i_fishIdx) {
    if (mFishCount[i_fishIdx] < 999) {
        mFishCount[i_fishIdx] += 1;
    }
}

/**
 * @brief Initializes the player information
 * 
 * @details Sets the player and horse names, and initializes various game statistics
 */
void dSv_player_info_c::init() {
    dMeter2Info_getString(0x382, mPlayerName, NULL);  // Link
    dMeter2Info_getString(0x383, mHorseName, NULL);   // Epona

    unk4 = 0;
    unk0 = 0;
    mTotalTime = 0;
    unk16 = 0;
    mDeathCount = 0;
    mClearCount = 0;

    for (int i = 0; i < 5; i++) {
        unk55[i] = 0;
    }
}

/**
 * @brief Initializes the player configuration
 * 
 * @details Sets up sound mode, attention type, vibration, and other game settings
 */
void dSv_player_config_c::init() {
    unk0 = 1;

    if (OSGetSoundMode() == OS_SOUND_MODE_MONO) {
        mSoundMode = OS_SOUND_MODE_MONO;
        Z2AudioMgr::mAudioMgrPtr->setOutputMode(OS_SOUND_MODE_MONO);
    } else {
        mSoundMode = OS_SOUND_MODE_STEREO;
        Z2AudioMgr::mAudioMgrPtr->setOutputMode(OS_SOUND_MODE_STEREO);
    }

    mAttentionType = 0;
    mVibration = 1;
    unk4 = 0;
    unk5 = 0;
    mShortCut = 0;
    mCalibrateDist = 350;
    mCalValue = 0;
    mCameraControl = 0;
    mPointer = 1;
}

/**
 * @brief Checks if vibration is supported and enabled
 * 
 * @return The current vibration status
 */
u32 dSv_player_config_c::checkVibration() const {
    return JUTGamePad::sRumbleSupported & 0x80000000 ? dComIfGp_getNowVibration() : 0;
}

/**
 * @brief Gets the current sound mode
 * 
 * @return The current sound mode
 */
u8 dSv_player_config_c::getSound() {
    return mSoundMode;
}

/**
 * @brief Sets the sound mode
 * 
 * @param i_mode The sound mode to set
 */
void dSv_player_config_c::setSound(u8 i_mode) {
    mSoundMode = i_mode;
}

/**
 * @brief Gets the current vibration setting
 * 
 * @return The current vibration setting
 */
u8 dSv_player_config_c::getVibration() {
    return mVibration;
}

/**
 * @brief Sets the vibration status
 * 
 * @param i_status The vibration status to set
 */
void dSv_player_config_c::setVibration(u8 i_status) {
    mVibration = i_status;
}

/**
 * @brief Initializes all components of the dSv_player_c object
 *
 * @details Calls the init() method on all member objects
 */
void dSv_player_c::init() {
    mPlayerStatusA.init();
    mPlayerStatusB.init();
    mHorsePlace.init();
    mPlayerReturnPlace.init();
    mPlayerFieldLastStayInfo.init();
    mPlayerLastMarkInfo.init();
    mItem.init();
    mGetItem.init();
    mItemRecord.init();
    mItemMax.init();
    mCollect.init();
    mWolf.init();
    mLightDrop.init();
    mLetterInfo.init();
    mFishingInfo.init();
    mPlayerInfo.init();
    mConfig.init();
}

/**
 * @brief Initializes the dSv_memBit_c object
 *
 * @details Resets all tbox, switch, item, key, and dungeon item values to 0
 */
void dSv_memBit_c::init() {
    for (int i = 0; i < 2; i++) {
        mTbox[i] = 0;
    }

    for (int i = 0; i < 4; i++) {
        mSwitch[i] = 0;
    }

    mItem[0] = 0;
    mKeyNum = 0;
    mDungeonItem = 0;
}

/**
 * @brief Turns on a specific tbox
 *
 * @param i_no The tbox number to turn on
 */
void dSv_memBit_c::onTbox(int i_no) {
    mTbox[i_no >> 5] |= 1 << (i_no & 0x1F);
}

/**
 * @brief Turns off a specific tbox
 *
 * @param i_no The tbox number to turn off
 */
void dSv_memBit_c::offTbox(int i_no) {
    mTbox[i_no >> 5] &= ~(1 << (i_no & 0x1F));
}

/**
 * @brief Checks if a specific tbox is on
 *
 * @param i_no The tbox number to check
 * 
 * @return TRUE if the tbox is on, FALSE otherwise
 */
BOOL dSv_memBit_c::isTbox(int i_no) const {
    return 1 << (i_no & 0x1f) & mTbox[i_no >> 5] ? TRUE : FALSE;
}

/**
 * @brief Turns on a specific switch
 *
 * @param i_no The switch number to turn on
 */
void dSv_memBit_c::onSwitch(int i_no) {
    mSwitch[i_no >> 5] |= 1 << (i_no & 0x1F);
}

/**
 * @brief Turns off a specific switch
 *
 * @param i_no The switch number to turn off
 */
void dSv_memBit_c::offSwitch(int i_no) {
    mSwitch[i_no >> 5] &= ~(1 << (i_no & 0x1F));
}

/**
 * @brief Checks if a specific switch is on
 *
 * @param i_no The switch number to check
 * 
 * @return TRUE if the switch is on, FALSE otherwise
 */
BOOL dSv_memBit_c::isSwitch(int i_no) const {
    return (mSwitch[i_no >> 5] & 1 << (i_no & 0x1F)) ? TRUE : FALSE;
}

/**
 * @brief Toggles a specific switch and returns its new state
 *
 * @param i_no The switch number to toggle
 * 
 * @return TRUE if the switch is now on, FALSE if it's now off
 */
BOOL dSv_memBit_c::revSwitch(int i_no) {
    u32 switchInd = i_no >> 5;
    u32 tmp = 1 << (i_no & 0x1F);
    mSwitch[switchInd] ^= tmp;
    return mSwitch[switchInd] & tmp ? TRUE : FALSE;
}

/**
 * @brief Turns on a specific item
 *
 * @param i_no The item number to turn on
 */
void dSv_memBit_c::onItem(int i_no) {
    mItem[i_no >> 5] |= 1 << (i_no & 0x1F);
}

/**
 * @brief Checks if a specific item is on
 *
 * @param i_no The item number to check
 * 
 * @return TRUE if the item is on, FALSE otherwise
 */
BOOL dSv_memBit_c::isItem(int i_no) const {
    return (mItem[i_no >> 5] & 1 << (i_no & 0x1F)) ? TRUE : FALSE;
}

/**
 * @brief Turns on a specific dungeon item
 *
 * @param i_no The dungeon item number to turn on
 */
void dSv_memBit_c::onDungeonItem(int i_no) {
    mDungeonItem |= (u8)(1 << i_no);
}

/**
 * @brief Checks if a specific dungeon item is on
 *
 * @param i_no The dungeon item number to check
 * 
 * @return TRUE if the dungeon item is on, FALSE otherwise
 */
s32 dSv_memBit_c::isDungeonItem(int i_no) const {
    return mDungeonItem & (u8)(1 << i_no) ? TRUE : FALSE;
}

/**
 * @brief Initializes the dSv_event_c object
 *
 * @details Resets all events to 0 and sets initial event bits
 */
void dSv_event_c::init() {
    for (int i = 0; i < MAX_EVENTS; i++) {
        mEvent[i] = 0;
    }
    setInitEventBit();
}

/**
 * @brief Turns on a specific event bit
 *
 * @param i_no The event bit number to turn on
 */
void dSv_event_c::onEventBit(u16 i_no) {
    mEvent[i_no >> 8] |= (u8)i_no;
}

/**
 * @brief Turns off a specific event bit
 *
 * @param i_no The event bit number to turn off
 */
void dSv_event_c::offEventBit(u16 i_no) {
    mEvent[i_no >> 8] &= ~(u8)i_no;
}

/**
 * @brief Checks if a specific event bit is on
 *
 * @param i_no The event bit number to check
 * 
 * @return TRUE if the event bit is on, FALSE otherwise
 */
BOOL dSv_event_c::isEventBit(u16 i_no) const {
    return mEvent[i_no >> 8] & (i_no & 0xFF) ? TRUE : FALSE;
}

/**
 * @brief Sets a specific event register to a given value
 *
 * @param i_reg The event register to set
 * @param i_no The value to set the register to
 */
void dSv_event_c::setEventReg(u16 i_reg, u8 i_no) {
    mEvent[i_reg >> 8] &= ~(u8)i_reg;
    mEvent[i_reg >> 8] |= i_no;
}

/**
 * @brief Gets the value of a specific event register
 *
 * @param i_reg The event register to get
 * 
 * @return The value of the event register
 */
u8 dSv_event_c::getEventReg(u16 i_reg) const {
    return (u8)i_reg & mEvent[i_reg >> 8];
}

/**
 * @brief Initializes the dSv_MiniGame_c object
 *
 * @details Resets all mini-game related values to their initial states
 */
void dSv_MiniGame_c::init() {
    unk0 = 0;
    for (int i = 0; i < 3; i++) {
        unk1[i] = 0;
    }
    mStarTime = 120000;
    mBalloonScore = 0;
    mRaceGameTime = 0;
    unk16 = 0;
    unk20 = 0;
}

/**
 * @brief Initializes the dSv_memory_c object
 *
 * @details Calls the init() method on the mBit member
 */
void dSv_memory_c::init() {
    mBit.init();
}

/**
 * @brief Initializes the dSv_memory2_c object
 *
 * @details Resets all visited room flags to 0
 */
void dSv_memory2_c::init() {
    for (int i = 0; i < 2; i++) {
        mVisitedRoom[i] = 0;
    }
}

/**
 * @brief Marks a specific room as visited
 *
 * @param i_no The room number to mark as visited
 */
void dSv_memory2_c::onVisitedRoom(int i_no) {
    mVisitedRoom[i_no >> 5] |= 1 << (i_no & 0x1F);
}

/**
 * @brief Marks a specific room as not visited
 *
 * @param i_no The room number to mark as not visited
 */
void dSv_memory2_c::offVisitedRoom(int i_no) {
    mVisitedRoom[i_no >> 5] &= ~(1 << (i_no & 0x1F));
}

/**
 * @brief Checks if a specific room has been visited
 *
 * @param i_no The room number to check
 * 
 * @return TRUE if the room has been visited, FALSE otherwise
 */
BOOL dSv_memory2_c::isVisitedRoom(int i_no) {
    return (1 << (i_no & 0x1F) & mVisitedRoom[i_no >> 5]) ? TRUE : FALSE;
}

/**
 * @brief Initializes the dSv_danBit_c object with a given stage number
 *
 * @details If the given stage number is different from the current stage number,
 *          it resets all switches and items, sets the new stage number, and clears
 *          some flags. If the stage number is the same, it sets a save flag.
 *
 * @param i_stageNo The stage number to initialize with
 * 
 * @return true if initialization occurred (new stage), false otherwise (same stage)
*/
bool dSv_danBit_c::init(s8 i_stageNo) {
    if (i_stageNo != mStageNo) {
        mSwitch[0] = 0;
        mSwitch[1] = 0;
        mItem[0] = 0;
        mItem[1] = 0;
        mItem[2] = 0;
        mItem[3] = 0;
        mStageNo = i_stageNo;
        unk1 = 0;

        for (int i = 0; i < 16; i++) {
            unk28[i] = 0xFFFF;
        }

        daObjCarry_c::clrSaveFlag();
        return true;

    } else {
        daObjCarry_c::setSaveFlag();
        return false;
    }
}

/**
 * @brief Turns on a specific switch
 *
 * @details Sets the bit corresponding to the given switch number in the mSwitch array
 *
 * @param i_no The switch number to turn on
*/
void dSv_danBit_c::onSwitch(int i_no) {
    mSwitch[i_no >> 5] |= 1 << (i_no & 0x1F);
}

/**
 * @brief Turns off a specific switch
 *
 * @details Clears the bit corresponding to the given switch number in the mSwitch array
 *
 * @param i_no The switch number to turn off
*/
void dSv_danBit_c::offSwitch(int i_no) {
    mSwitch[i_no >> 5] &= ~(1 << (i_no & 0x1F));
}

/**
 * @brief Checks if a specific switch is on
 *
 * @details Checks the bit corresponding to the given switch number in the mSwitch array
 *
 * @param i_no The switch number to check
 * 
 * @return TRUE if the switch is on, FALSE otherwise
*/
BOOL dSv_danBit_c::isSwitch(int i_no) const {
    return mSwitch[i_no >> 5] & (1 << (i_no & 0x1F)) ? TRUE : FALSE;
}

/**
 * @brief Toggles a specific switch and returns its new state
 *
 * @details Flips the bit corresponding to the given switch number in the mSwitch array
 *
 * @param i_no The switch number to toggle
 * 
 * @return TRUE if the switch is now on, FALSE if it's now off
*/
BOOL dSv_danBit_c::revSwitch(int i_no) {
    int uVar1 = 1 << (i_no & 0x1F);
    mSwitch[i_no >> 5] ^= uVar1;
    return mSwitch[i_no >> 5] & uVar1 ? TRUE : FALSE;
}

/**
 * @brief Turns on a specific item
 *
 * @details Sets the bit corresponding to the given item number in the mItem array
 *
 * @param i_no The item number to turn on
*/
void dSv_danBit_c::onItem(int i_no) {
    mItem[i_no >> 5] |= 1 << (i_no & 0x1F);
}

/**
 * @brief Checks if a specific item is on
 *
 * @details Checks the bit corresponding to the given item number in the mItem array
 *
 * @param i_no The item number to check
 * 
 * @return TRUE if the item is on, FALSE otherwise
*/
BOOL dSv_danBit_c::isItem(int i_no) const {
    return mItem[i_no >> 5] & 1 << (i_no & 0x1F) ? TRUE : FALSE;
}

/**
 * @brief Initializes the dSv_zoneBit_c object
 *
 * @details Resets all switches, items, room switches, and room items to 0
*/
void dSv_zoneBit_c::init() {
    for (int i = 0; i < 2; i++) {
        mSwitch[i] = 0;
    }

    for (int i = 0; i < 2; i++) {
        mItem[i] = 0;
    }

    mRoomSwitch = 0;
    mRoomItem = 0;
}

/**
 * @brief Clears all room switches
 *
 * @details Sets mRoomSwitch to 0
*/
void dSv_zoneBit_c::clearRoomSwitch() {
    mRoomSwitch = 0;
}

/**
 * @brief Clears all room items
 *
 * @details Sets mRoomItem to 0
*/
void dSv_zoneBit_c::clearRoomItem() {
    mRoomItem = 0;
}

/**
 * @brief Turns on a specific zone switch
 *
 * @details Sets the bit corresponding to the given switch number in the mSwitch array
 *
 * @param i_no The switch number to turn on
*/
void dSv_zoneBit_c::onSwitch(int i_no) {
    mSwitch[i_no >> 4] |= (u16)(1 << (i_no & 0xF));
}

/**
 * @brief Turns off a specific zone switch
 *
 * @details Clears the bit corresponding to the given switch number in the mSwitch array
 *
 * @param i_no The switch number to turn off
*/
void dSv_zoneBit_c::offSwitch(int i_no) {
    mSwitch[i_no >> 4] &= ~(1 << (i_no & 0xF));
}

/**
 * @brief Checks if a specific zone switch is on
 *
 * @details Checks the bit corresponding to the given switch number in the mSwitch array
 *
 * @param i_no The switch number to check
 * 
 * @return TRUE if the switch is on, FALSE otherwise
*/
BOOL dSv_zoneBit_c::isSwitch(int i_no) const {
    return mSwitch[i_no >> 4] & 1 << (i_no & 0xF) ? TRUE : FALSE;
}

/**
 * @brief Toggles a specific zone switch and returns its new state
 *
 * @details Flips the bit corresponding to the given switch number in the mSwitch array
 *
 * @param i_no The switch number to toggle
 * 
 * @return TRUE if the switch is now on, FALSE if it's now off
*/
BOOL dSv_zoneBit_c::revSwitch(int i_no) {
    u32 switchInd = i_no >> 4;
    int uVar1 = 1 << (i_no & 0xF);
    mSwitch[switchInd] ^= uVar1;
    return mSwitch[switchInd] & uVar1 ? TRUE : FALSE;
}

/**
 * @brief Turns on a specific room switch
 *
 * @details Sets the bit corresponding to the given switch number in mRoomSwitch
 *
 * @param i_no The switch number to turn on
*/
void dSv_zoneBit_c::onOneSwitch(int i_no) {
    mRoomSwitch |= (u16)(1 << i_no);
}

/**
 * @brief Turns off a specific room switch
 *
 * @details Clears the bit corresponding to the given switch number in mRoomSwitch
 *
 * @param i_no The switch number to turn off
*/
void dSv_zoneBit_c::offOneSwitch(int i_no) {
    mRoomSwitch &= ~(1 << i_no);
}

/**
 * @brief Checks if a specific room switch is on
 *
 * @details Checks the bit corresponding to the given switch number in mRoomSwitch
 *
 * @param i_no The switch number to check
 * 
 * @return TRUE if the switch is on, FALSE otherwise
*/
BOOL dSv_zoneBit_c::isOneSwitch(int i_no) const {
    return mRoomSwitch & 1 << i_no ? TRUE : FALSE;
}

/**
 * @brief Toggles a specific room switch and returns its new state
 *
 * @details Flips the bit corresponding to the given switch number in mRoomSwitch
 *
 * @param i_no The switch number to toggle
 * 
 * @return TRUE if the switch is now on, FALSE if it's now off
*/
BOOL dSv_zoneBit_c::revOneSwitch(int i_no) {
    int iVar1 = 1 << i_no;
    mRoomSwitch ^= iVar1;
    return mRoomSwitch & iVar1 ? TRUE : FALSE;
}

/**
 * @brief Activates an item in the zone bitset.
 * 
 * @details This function sets the bit corresponding to the given item number to activate it in the 
 * zone bitset.
 * 
 * @param i_no The item number to activate.
*/
void dSv_zoneBit_c::onItem(int i_no) {
    mItem[i_no >> 4] |= (u16)(1 << (i_no & 0xF));
}

/**
 * @brief Checks if an item is active in the zone bitset.
 * 
 * @details This function checks if the bit corresponding to the given item number is set in the 
 * zone bitset, indicating that the item is active.
 * 
 * @param i_no The item number to check.
 * 
 * @return BOOL TRUE if the item is active, FALSE otherwise.
*/
BOOL dSv_zoneBit_c::isItem(int i_no) const {
    return mItem[i_no >> 4] & 1 << (i_no & 0xF) ? TRUE : FALSE;
}

/**
 * @brief Activates a one-time item in the zone bitset.
 * 
 * @details This function sets the bit corresponding to the given one-time item number to activate it 
 * in the zone bitset.
 * 
 * @param i_no The one-time item number to activate.
*/
void dSv_zoneBit_c::onOneItem(int i_no) {
    mRoomItem |= (u16)(1 << i_no);
}

/**
 * @brief Checks if a one-time item is active in the zone bitset.
 * 
 * @details This function checks if the bit corresponding to the given one-time item number is set in 
 * the zone bitset, indicating that the item is active.
 * 
 * @param i_no The one-time item number to check.
 * 
 * @return BOOL TRUE if the one-time item is active, FALSE otherwise.
*/
BOOL dSv_zoneBit_c::isOneItem(int i_no) const {
    return mRoomItem & 1 << i_no ? TRUE : FALSE;
}

/**
 * @brief Initializes the zone actor flags.
 * 
 * @details This function initializes the zone actor flags by setting all of them to 0.
*/
void dSv_zoneActor_c::init() {
    for (int i = 0; i < 4; i++) {
        mActorFlags[i] = 0;
    }
}

/**
 * @brief Activates an actor in the zone actor flags.
 * 
 * @details This function sets the bit corresponding to the given actor ID to activate it in the 
 * zone actor flags.
 * 
 * @param i_id The actor ID to activate.
*/
void dSv_zoneActor_c::on(int i_id) {
    mActorFlags[i_id >> 5] |= 1 << (i_id & 0x1F);
}

/**
 * @brief Deactivates an actor in the zone actor flags.
 * 
 * @details This function clears the bit corresponding to the given actor ID to deactivate it in the 
 * zone actor flags.
 * 
 * @param i_id The actor ID to deactivate.
*/
void dSv_zoneActor_c::off(int i_id) {
    mActorFlags[i_id >> 5] &= ~(1 << (i_id & 0x1F));
}

/**
 * @brief Checks if an actor is active in the zone actor flags.
 * 
 * @details This function checks if the bit corresponding to the given actor ID is set in the 
 * zone actor flags, indicating that the actor is active.
 * 
 * @param i_id The actor ID to check.
 * 
 * @return BOOL TRUE if the actor is active, FALSE otherwise.
*/
BOOL dSv_zoneActor_c::is(int i_id) const {
    return mActorFlags[i_id >> 5] & 1 << (i_id & 0x1F) ? TRUE : FALSE;
}

/**
 * @brief Initializes the zone with a given room number.
 * 
 * @details This function initializes the zone with the specified room number. It initializes both 
 * the bitset and the actor flags for the zone.
 * 
 * @param i_roomNo The room number to assign to the zone.
 * 
 * @return void This function does not return a value.
*/
void dSv_zone_c::init(int i_roomNo) {
    mRoomNo = i_roomNo;
    mBit.init();
    mActor.init();
}

/**
 * @brief Sets the room parameters for restarting.
 * 
 * @details This function sets the room parameters, including the position, angle, and room number, 
 * for restarting in the specified room.
 * 
 * @param i_position The position in the room.
 * @param i_angleY The Y-axis angle for the restart.
 * @param i_roomNo The room number for the restart.
*/
void dSv_restart_c::setRoom(const cXyz& i_position, s16 i_angleY, s8 i_roomNo) {
    mRoomNo = i_roomNo;
    mRoomPos = i_position;
    mRoomAngleY = i_angleY;
}

/**
 * @brief Sets the turn restart parameters.
 * 
 * @details This function sets the turn restart parameters, including position, angle, room number, 
 * and an additional parameter.
 * 
 * @param i_position The position for the turn restart.
 * @param i_angleY The Y-axis angle for the turn restart.
 * @param param_3 An additional parameter.
 * @param i_param Another additional parameter.
*/
void dSv_turnRestart_c::set(const cXyz& i_position, s16 i_angleY, s8 param_3, u32 i_param) {
    mPosition = i_position;
    mAngleY = i_angleY;
    unk18 = param_3;
    mParam = i_param;
}

/**
 * @brief Initializes the save information.
 * 
 * @details This function initializes various components of the save information, including savedata, 
 * memory, dungeon, and zone components, as well as temporary data.
*/
void dSv_info_c::init() {
    mSavedata.init();
    mMemory.init();
    initDan(-1);
    initZone();
    mTmp.init();
}

/**
 * @brief Initializes the save data.
 * 
 * @details This function initializes the player data, save slots, event data, and mini-game data.
*/
void dSv_save_c::init() {
    mPlayer.init();
    for (int i = 0; i < STAGE_MAX; i++) {
        mSave[i].init();
    }

    for (int i = 0; i < STAGE2_MAX; i++) {
        mSave2[i].init();
    }

    mEvent.init();
    mMiniGame.init();
}

/**
 * @brief Retrieves a pointer to a secondary save slot.
 * 
 * @details This function returns a pointer to the secondary save slot specified by the stage number.
 * 
 * @param i_stage2No The index of the secondary save slot to retrieve.
 * 
 * @return dSv_memory2_c* A pointer to the specified secondary save slot.
*/
dSv_memory2_c* dSv_save_c::getSave2(int i_stage2No) {
    return &mSave2[i_stage2No];
}

/**
 * @brief Loads saved memory data for a specified stage.
 * 
 * @details This function sets the memory data to the saved data corresponding to the specified stage number.
 * 
 * @param i_stageNo The stage number to load the saved data from.
*/
void dSv_info_c::getSave(int i_stageNo) {
    mMemory = mSavedata.getSave(i_stageNo);
}

/**
 * @brief Saves current memory data for a specified stage.
 * 
 * @details This function saves the current memory data to the save slot corresponding to the specified stage number.
 * 
 * @param i_stageNo The stage number to save the data to.
*/
void dSv_info_c::putSave(int i_stageNo) {
    mSavedata.putSave(i_stageNo, mMemory);
}

/**
 * @brief Initializes all zones to an uninitialized state.
 * 
 * @details This function sets all zones to an uninitialized state by setting their values to -1.
*/
void dSv_info_c::initZone() {
    for (int i = 0; i < 0x20; i++) {
        mZone[i].init(-1);
    }
}

/**
 * @brief Creates a zone for a specified room.
 * 
 * @details This function initializes a zone for the given room number. It searches for an uninitialized zone 
 * (a zone with a room number less than 0) and initializes it with the given room number.
 * 
 * @param i_roomNo The room number to assign to the new zone.
 * 
 * @return u32 The index of the created zone, or -1 if no uninitialized zone was found.
*/
u32 dSv_info_c::createZone(int i_roomNo) {
    dSv_zone_c* zone = mZone;
    for (int i = 0; i < 0x20; zone++, i++) {
        if (zone->getRoomNo() < 0) {
            zone->init(i_roomNo);
            return i;
        }
    }
    return -1;
}

/**
 * @brief Activates a switch based on the given switch number and room number.
 * 
 * @details This function activates a switch by its number. It first checks if the switch number 
 * is -1 or 255, in which case it simply returns. If the switch number is less than MEMORY_SWITCH, 
 * it activates a memory switch. If the switch number is between MEMORY_SWITCH and (MEMORY_SWITCH + 
 * DAN_SWITCH), it activates a dungeon switch. Otherwise, it determines the zone based on the room 
 * number and activates a zone switch or a one-time zone switch depending on the switch number range.
 * 
 * @param i_no The switch number to be activated.
 * @param i_roomNo The room number to determine the zone for zone switches.
*/
void dSv_info_c::onSwitch(int i_no, int i_roomNo) {
    if (i_no == -1 || i_no == 255) {
        return;
    }

    if (i_no < MEMORY_SWITCH) {
        mMemory.getBit().onSwitch(i_no);
    } else if (i_no < (MEMORY_SWITCH + DAN_SWITCH)) {
        mDan.onSwitch(i_no - MEMORY_SWITCH);
    } else {
        int zoneId = dComIfGp_roomControl_getZoneNo(i_roomNo);
        if (i_no < (MEMORY_SWITCH + DAN_SWITCH + ZONE_SWITCH)) {
            mZone[zoneId].getBit().onSwitch(i_no - (MEMORY_SWITCH + DAN_SWITCH));
        } else {
            mZone[zoneId].getBit().onOneSwitch(i_no - (MEMORY_SWITCH + DAN_SWITCH + ZONE_SWITCH));
        }
    }
}

/**
 * @brief Turns off a switch based on the provided switch number and room number.
 * 
 * @details This function handles turning off different types of switches based on the switch number. 
 * If the switch number is out of a valid range (-1 or 255), the function immediately returns. 
 * It categorizes switches into memory, dungeon, and zone switches, and handles each category accordingly.
 * 
 * @param i_no The switch number to be turned off. Valid ranges are checked within the function.
 * @param i_roomNo The room number associated with the switch.
*/
void dSv_info_c::offSwitch(int i_no, int i_roomNo) {
    if (i_no == -1 || i_no == 255) {
        return;
    }

    if (i_no < MEMORY_SWITCH) {
        mMemory.getBit().offSwitch(i_no);
    } else if (i_no < (MEMORY_SWITCH + DAN_SWITCH)) {
        mDan.offSwitch(i_no - MEMORY_SWITCH);
    } else {
        int zoneId = dComIfGp_roomControl_getZoneNo(i_roomNo);
        if (i_no < (MEMORY_SWITCH + DAN_SWITCH + ZONE_SWITCH)) {
            mZone[zoneId].getBit().offSwitch(i_no - (MEMORY_SWITCH + DAN_SWITCH));
        } else {
            mZone[zoneId].getBit().offOneSwitch(i_no - (MEMORY_SWITCH + DAN_SWITCH + ZONE_SWITCH));
        }
    }
}

/**
 * @brief Determines if a specific switch is activated within the game's save data.
 * 
 * @details This function checks the state of a switch identified by its number and room number. 
 * It handles different types of switches, including memory switches, dungeon switches, and zone switches, 
 * by checking their respective states in the game's save data structures.
 * 
 * @param i_no The switch number to check. Special values -1 and 255 are treated as always deactivated.
 * @param i_roomNo The room number where the switch is located. Used for zone switches to determine the zone ID.
 * @return BOOL Returns TRUE if the switch is activated, FALSE otherwise.
*/
BOOL dSv_info_c::isSwitch(int i_no, int i_roomNo) const {
    if (i_no == -1 || i_no == 255) {
        return FALSE;
    }

    if (i_no < MEMORY_SWITCH) {
        return mMemory.getBit().isSwitch(i_no);
    } else if (i_no < (MEMORY_SWITCH + DAN_SWITCH)) {
        return mDan.isSwitch(i_no - MEMORY_SWITCH);
    } else {
        int zoneId = dComIfGp_roomControl_getZoneNo(i_roomNo);
        if (zoneId < 0 || zoneId >= ZONE_MAX) {
            return FALSE;
        } else {
            if (i_no < (MEMORY_SWITCH + DAN_SWITCH + ZONE_SWITCH)) {
                return mZone[zoneId].getBit().isSwitch(i_no - (MEMORY_SWITCH + DAN_SWITCH));
            } else {
                return mZone[zoneId].getBit().isOneSwitch(
                    i_no - (MEMORY_SWITCH + DAN_SWITCH + ZONE_SWITCH));
            }
        }
    }
}

/**
 * @brief Reverses the state of a switch based on the given switch number and room number.
 * 
 * @details This function reverses the state of a switch by its number. It first checks if the switch 
 * number is -1 or 255, in which case it returns FALSE. If the switch number is less than MEMORY_SWITCH, 
 * it reverses a memory switch. If the switch number is between MEMORY_SWITCH and (MEMORY_SWITCH + 
 * DAN_SWITCH), it reverses a dungeon switch. Otherwise, it determines the zone based on the room number 
 * and reverses a zone switch or a one-time zone switch depending on the switch number range.
 * 
 * @param i_no The switch number to be reversed.
 * @param i_roomNo The room number to determine the zone for zone switches.
 * 
 * @return BOOL TRUE if the switch state was reversed, FALSE otherwise.
*/
BOOL dSv_info_c::revSwitch(int i_no, int i_roomNo) {
    if (i_no == -1 || i_no == 255) {
        return FALSE;
    }

    if (i_no < MEMORY_SWITCH) {
        return mMemory.getBit().revSwitch(i_no);
    } else if (i_no < (MEMORY_SWITCH + DAN_SWITCH)) {
        return mDan.revSwitch(i_no - MEMORY_SWITCH);
    } else {
        int zoneNo = dComIfGp_roomControl_getZoneNo(i_roomNo);
        if (i_no < (MEMORY_SWITCH + DAN_SWITCH + ZONE_SWITCH)) {
            return mZone[zoneNo].getBit().revSwitch(i_no - (MEMORY_SWITCH + DAN_SWITCH));
        } else {
            return mZone[zoneNo].getBit().revOneSwitch(
                i_no - (MEMORY_SWITCH + DAN_SWITCH + ZONE_SWITCH));
        }
    }
}

/**
 * @brief Activates an item based on the given item number and room number.
 * 
 * @details This function activates an item by its number. It first checks if the item number 
 * is -1 or 255, in which case it simply returns. If the item number is less than MEMORY_ITEM, 
 * it activates a dungeon item. If the item number is between MEMORY_ITEM and (MEMORY_ITEM + DAN_ITEM), 
 * it activates a memory item. Otherwise, it determines the zone based on the room number and 
 * activates a zone item or a one-time zone item depending on the item number range.
 * 
 * @param i_no The item number to be activated.
 * @param i_roomNo The room number to determine the zone for zone items.
*/
void dSv_info_c::onItem(int i_no, int i_roomNo) {
    if (i_no == -1 || i_no == 255) {
        return;
    }

    if (i_no < MEMORY_ITEM) {
        mDan.onItem(i_no);
    } else if (i_no < (MEMORY_ITEM + DAN_ITEM)) {
        mMemory.getBit().onItem(i_no - MEMORY_ITEM);
    } else {
        int zoneNo = dComIfGp_roomControl_getZoneNo(i_roomNo);
        if (i_no < (MEMORY_ITEM + DAN_ITEM + ZONE_ITEM)) {
            mZone[zoneNo].getBit().onItem(i_no - (MEMORY_ITEM + DAN_ITEM));
        } else {
            mZone[zoneNo].getBit().onOneItem(i_no - (MEMORY_ITEM + DAN_ITEM + ZONE_ITEM));
        }
    }
}

/**
 * @brief Checks if an item is active based on the given item number and room number.
 * 
 * @details This function checks if an item is active by its number. It first checks if the item number 
 * is -1 or 255, in which case it returns FALSE. If the item number is less than MEMORY_ITEM, it checks 
 * if a dungeon item is active. If the item number is between MEMORY_ITEM and (MEMORY_ITEM + DAN_ITEM), 
 * it checks if a memory item is active. Otherwise, it determines the zone based on the room number and 
 * checks if a zone item or a one-time zone item is active depending on the item number range.
 * 
 * @param i_no The item number to check.
 * @param i_roomNo The room number to determine the zone for zone items.
 * 
 * @return BOOL TRUE if the item is active, FALSE otherwise.
*/
BOOL dSv_info_c::isItem(int i_no, int i_roomNo) const {
    if (i_no == -1 || i_no == 255) {
        return FALSE;
    }

    if (i_no < MEMORY_ITEM) {
        return mDan.isItem(i_no);
    } else if (i_no < (MEMORY_ITEM + DAN_ITEM)) {
        return mMemory.getBit().isItem(i_no - MEMORY_ITEM);
    } else {
        int zoneNo = dComIfGp_roomControl_getZoneNo(i_roomNo);
        if (i_no < (MEMORY_ITEM + DAN_ITEM + ZONE_ITEM)) {
            return mZone[zoneNo].getBit().isItem(i_no - (MEMORY_ITEM + DAN_ITEM));
        } else {
            return mZone[zoneNo].getBit().isOneItem(i_no - (MEMORY_ITEM + DAN_ITEM + ZONE_ITEM));
        }
    }
}

/**
 * @brief Activates an actor based on the given actor ID and room number.
 * 
 * @details This function activates an actor by its ID. It first checks if the actor ID is -1, 
 * equals ACTOR_MAX, or if the room number is -1, in which case it simply returns. It determines 
 * the zone based on the room number and activates the actor in that zone.
 * 
 * @param i_id The actor ID to be activated.
 * @param i_roomNo The room number to determine the zone for the actor.
*/
void dSv_info_c::onActor(int i_id, int i_roomNo) {
    if (i_id == -1 || i_id == dSv_zoneActor_c::ACTOR_MAX || i_roomNo == -1) {
        return;
    }

    int zoneNo = dComIfGp_roomControl_getZoneNo(i_roomNo);
    mZone[zoneNo].getActor().on(i_id);
}

/**
 * @brief Deactivates an actor based on the given actor ID and room number.
 * 
 * @details This function deactivates an actor by its ID. It first checks if the actor ID is -1, 
 * equals ACTOR_MAX, or if the room number is -1, in which case it simply returns. It determines 
 * the zone based on the room number and deactivates the actor in that zone.
 * 
 * @param i_id The actor ID to be deactivated.
 * @param i_roomNo The room number to determine the zone for the actor.
*/
void dSv_info_c::offActor(int i_id, int i_roomNo) {
    if (i_id == -1 || i_id == dSv_zoneActor_c::ACTOR_MAX || i_roomNo == -1) {
        return;
    }

    int zoneNo = dComIfGp_roomControl_getZoneNo(i_roomNo);
    mZone[zoneNo].getActor().off(i_id);
}

/**
 * @brief Checks if an actor is active based on the given actor ID and room number.
 * 
 * @details This function checks if an actor is active by its ID. It first checks if the actor ID 
 * is -1, equals ACTOR_MAX, or if the room number is -1, in which case it returns FALSE. It determines 
 * the zone based on the room number and checks if the actor is active in that zone.
 * 
 * @param i_id The actor ID to check.
 * @param i_roomNo The room number to determine the zone for the actor.
 * 
 * @return BOOL TRUE if the actor is active, FALSE otherwise.
*/
BOOL dSv_info_c::isActor(int i_id, int i_roomNo) const {
    if (i_id == -1 || i_id == dSv_zoneActor_c::ACTOR_MAX || i_roomNo == -1) {
        return FALSE;
    }

    int zoneNo = dComIfGp_roomControl_getZoneNo(i_roomNo);
    return mZone[zoneNo].getActor().is(i_id);
}

/* ############################################################################################## */
/* 80379234-80379234 005894 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8037925D = "Write size:%d\n";
SECTION_DEAD static char const* const stringBase_8037926C = "SAVE size:%d\n";
#pragma pop

/**
 * @brief Saves memory data to the memory card.
 * 
 * @details This function saves the current game state to the input card pointer data. It first handles specific 
 * game events, such as the state of the lantern, by temporarily updating or storing certain values 
 * before saving and then restoring them afterward. It calculates the total play time, updates the save 
 * date, and writes the save data to the memory card. After saving, it restores any temporarily modified 
 * events or items.
 * 
 * @param card_ptr Pointer to the memory card data.
 * @param dataNum The index of the data to be saved to the card pointer.
 * 
 * @return int Returns 0 on successful saving of data.
*/
// regalloc
#ifdef NONMATCHING
int dSv_info_c::memory_to_card(char* card_ptr, int dataNum) {
    BOOL lantern_stolen;
    BOOL lantern_dropped;

    OSTime start;
    OSTime time;
    OSTime play_time;
    
    bool lantern_not_recovered = false;
    bool tmp_lantern_check = false;
    u16 current_lantern_oil = 0;
    
    // If haven't gotten then lantern back from the monkey
    if (!dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[226])) {
        // Store whether or not it's stolen and dropped
        lantern_dropped = dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[224]);
        lantern_stolen = dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[225]);

        // Then turn those events off
        dComIfGs_offEventBit(dSv_event_flag_c::saveBitLabels[224]);
        dComIfGs_offEventBit(dSv_event_flag_c::saveBitLabels[225]);

        // Used to turn events back on later
        lantern_not_recovered = true;
    }

    // If have the lantern and Slot 1 in the item wheel is blank
    if (dComIfGs_isItemFirstBit(KANTERA) && dComIfGs_getItem(SLOT_1, 1) == NO_ITEM) {
        // Set Slot 1 to Lantern and fetch current oil
        dComIfGs_setItem(SLOT_1, KANTERA);
        current_lantern_oil = dComIfGs_getOil();

        // Set oil to oil gauge backup
        dComIfGs_setOil(dMeter2Info_getOilGaugeBackUp());

        // Used to set slot 1 back later
        tmp_lantern_check = true;
    }

    card_ptr += dataNum * QUEST_LOG_SIZE;
    dSv_save_c* savedata = dComIfGs_getSaveData();

    start = dComIfGs_getSaveStartTime();
    time = OSGetTime();

    play_time = (time - start) + dComIfGs_getSaveTotalTime();

    // 3599940 = 999:59 in seconds
    if (dComIfGs_getSaveTotalTime() / OS_TIMER_CLOCK < 3599940) {
        savedata->getPlayer().getPlayerInfo().setTotalTime(play_time);
    }

    savedata->getPlayer().getPlayerStatusB().setDateIpl(OSGetTime());

    memcpy(card_ptr, savedata, sizeof(dSv_save_c));
    printf("Write size:%d\n", sizeof(dSv_save_c));

    // Now that we've saved, reset events if needed
    if (lantern_not_recovered == true) {
        if (lantern_dropped) {
            dComIfGs_onEventBit(dSv_event_flag_c::saveBitLabels[224]);
        }
        if (lantern_stolen) {
            dComIfGs_onEventBit(dSv_event_flag_c::saveBitLabels[225]);
        }
    }

    // Now that we've saved, reset slot if needed
    if (tmp_lantern_check == true) {
        dComIfGs_setItem(SLOT_1, NO_ITEM);
        dComIfGs_setOil(current_lantern_oil);
    }

    printf("SAVE size:%d\n", sizeof(dSv_save_c));
    return 0;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int dSv_info_c::memory_to_card(char* card_ptr, int dataNum) {
    nofralloc
#include "asm/d/save/d_save/memory_to_card__10dSv_info_cFPci.s"
}
#pragma pop
#endif

/**
 * @brief Loads save data from the input card pointer into memory.
 * 
 * @details This function loads the game save data from the memory card pointed to by `i_cardPtr`. 
 * The data is copied to the save data structure. It then adjusts sound settings based on the saved 
 * configuration, ensures the player has a minimum of 12 life points, updates item slots for the 
 * hookshot, sets the number of keys, and updates the current stage name and vibration settings.
 * 
 * @param i_cardPtr Pointer to the memory card data.
 * @param i_dataNum The index of the data to be loaded from the memory card.
 * 
 * @return int Returns 0 on successful loading of data.
*/
int dSv_info_c::card_to_memory(char* i_cardPtr, int i_dataNum) {
    i_cardPtr = i_cardPtr + i_dataNum * QUEST_LOG_SIZE;
    memcpy(dComIfGs_getSaveData(), i_cardPtr, sizeof(dSv_save_c));

    if (OSGetSoundMode() == OS_SOUND_MODE_MONO) {
        g_dComIfG_gameInfo.info.getPlayer().getConfig().setSound(OS_SOUND_MODE_MONO);
        Z2AudioMgr::mAudioMgrPtr->setOutputMode(OS_SOUND_MODE_MONO);
    } else if (g_dComIfG_gameInfo.info.getPlayer().getConfig().getSound() == 2) {
        Z2AudioMgr::mAudioMgrPtr->setOutputMode(2);
    } else {
        g_dComIfG_gameInfo.info.getPlayer().getConfig().setSound(OS_SOUND_MODE_STEREO);
        Z2AudioMgr::mAudioMgrPtr->setOutputMode(OS_SOUND_MODE_STEREO);
    }

    dSv_save_c* savedata = dComIfGs_getSaveData();
    if (savedata->getPlayer().getPlayerStatusA().getLife() < 12) {
        savedata->getPlayer().getPlayerStatusA().setLife(12);
    }

    dComIfGs_setKeyNum(6, 0);

    if (dComIfGs_getItem(SLOT_9, true) == W_HOOKSHOT) {
        dComIfGs_setItem(SLOT_10, W_HOOKSHOT);
        dComIfGs_setItem(SLOT_9, NO_ITEM);
    }

    if (dComIfGs_getItem(SLOT_9, true) == HOOKSHOT && dComIfGs_getItem(SLOT_10, true) == W_HOOKSHOT) {
        dComIfGs_setItem(SLOT_9, NO_ITEM);
    }

    dComIfGs_setLineUpItem();

    u8 save_vibration = savedata->getPlayer().getConfig().getVibration();
    dComIfGp_setNowVibration(save_vibration);

    char* save_stage = g_dComIfG_gameInfo.info.getPlayer().getPlayerReturnPlace().getName();
    dMeter2Info_setSaveStageName(save_stage);

    printf("LOAD size:%d\n", sizeof(dSv_save_c));
    return 0;
}

/**
 * @brief Initializes save data and writes it to the input card pointer.
 * 
 * @details This function initializes the save data with default values and writes it to the memory 
 * card pointed to by `i_cardPtr`. It sets default player and horse names to empty strings before 
 * copying the initialized data to the memory card.
 * 
 * @param i_cardPtr Pointer to the memory card data.
 * @param i_dataNum The index of the data to be initialized on the memory card.
 * 
 * @return int Returns 0 on successful initialization and writing of data.
*/
int dSv_info_c::initdata_to_card(char* i_cardPtr, int i_dataNum) {
    i_cardPtr = i_cardPtr + (i_dataNum * QUEST_LOG_SIZE);
    dSv_save_c save;

    save.init();
    save.getPlayer().getPlayerInfo().setPlayerName("");
    save.getPlayer().getPlayerInfo().setHorseName("");
    memcpy(i_cardPtr, &save, sizeof(dSv_save_c));
    printf("INIT size:%d\n", sizeof(dSv_save_c));
    return 0;
}

/**
 * @brief Temp flag bit table.
 *
 * @details This array stores the temp flags used throughout the game.
 */
u16 const dSv_event_tmp_flag_c::tempBitLabels[185] = {
    UNUSED, UNUSED, T_0002, T_0003, T_0004, T_0005, T_0006, T_0007, T_0001, T_0008, T_0009, T_0010,
    T_0011, T_0012, T_0013, T_0014, T_0015, T_0016, T_0017, T_0018, T_0019, T_0020, T_0021, T_0022,
    T_0023, T_0024, T_0025, T_0026, T_0027, T_0028, T_0029, T_0030, T_0031, T_0032, TREG_000, 
    T_0033, T_0034, T_0035, T_0036, TEMP_0038,      TEMP_0040,      T_0041, T_0042, T_0043, T_0044,
    T_0045, T_0046, T_0047, T_0048, T_0049, T_0050, T_0051, T_0052, T_0053, T_0054, T_0055, T_0056, 
    T_0057, T_058, T_0059,  T_0060, T_0061, T_0062, T_0063, T_0064, T_0065, T_0066, T_0067, T_0068,
    T_0069, T_0070, T_0071, T_0072, T_0073, T_0074, T_0075, T_0076, T_0077, T_0078, T_0079, T_0080,
    T_0081, T_0082, T_0083, T_0084, T_0085, T_0086, T_0087, T_0088, T_0089, T_0090, T_0091, T_0092, 
    T_0093, T_0094, T_0095, T_0096, T_0097, T_0098, T_0099, T_0100, SHA_LOVEFORTUNE_00,     SHA_LOVEFORTUNE_01, 
    SHA_LOVEFORTUNE_02,     SHA_LOVEFORTUNE_03,     SHA_LOVEFORTUNE_04,     SHA_LOVEFORTUNE_05, 
    T_0107, T_0108, T_0109, T_0110, T_0111, T_0112, T_0113, PACHITUTORIAL_CNT,      PACHITUTORIAL_INF, 
    WXXTO,  MN09_02,        MN09_03,        T_0119, T_0120, T_0121, T_0122, T_0123, T_0124, YKM_ATTN, 
    YKM_TALK,       YKW_TALK,       YKW_ATTN,       T_0125,         DUNGEON_130,    DUNGEON_131,    
    DUNGEON_132,    DUNGEON_133,    DUNGEON_134,    DUNGEON_135,    DUNGEON_136,    DUNGEON_137,    
    DUNGEON_138,    DUNGEON_139,    DUNGEON_140,    DUNGEON_141,    DUNGEON_142,    DUNGEON_143,
    DUNGEON_144,    DUNGEON_145,    DUNGEON_146,    DUNGEON_147,    DUNGEON_148,    DUNGEON_149,
    DUNGEON_150,    CAT_1,   CAT_2, CAT_3,  CAT_4,  CAT_5,  CAT_6,  CAT_7,  CAT_8,  CAT_9,  CAT_10,
    CAT_11, CAT_12, CAT_13, CAT_14, CAT_15, CAT_16, CAT_17, CAT_18, CAT_19, CAT_20, GUARD_URI, 
    Hanch_CLIMBOUT_POND,    NODRAW_STAGE_NAME,      NO_TELOP,       T_0175, T_0176, T_0177, T_0178, 
    T_0179, T_0180, T_0181, T_0182, T_0183, SHA_DBG
};

