/**
 * d_save.cpp
 * Save File Manager
 */

#include "d/save/d_save.h"
#include "d/save/d_save_init.h"
#include "JSystem/JUtility/JUTGamePad.h"
#include "MSL_C/stdio.h"
#include "d/com/d_com_inf_game.h"
#include "d/meter/d_meter2_info.h"
#include "dol2asm.h"
#include "dolphin/os/OS.h"
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

/* 80032918-80032958 02D258 0040+00 4/4 0/0 0/0 .text            dSv_item_rename__FUc */
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

/* 80032958-80032A48 02D298 00F0+00 1/1 0/0 0/0 .text            init__21dSv_player_status_a_cFv */
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

/* 80032A48-80032A5C 02D388 0014+00 0/0 1/1 0/0 .text
 * setSelectItemIndex__21dSv_player_status_a_cFiUc              */
void dSv_player_status_a_c::setSelectItemIndex(int i_no, u8 i_slotNo) {
    if (i_no < MAX_SELECT_ITEM) {
        mSelectItem[i_no] = i_slotNo;
    }
}

/* 80032A5C-80032A78 02D39C 001C+00 7/7 20/20 0/0 .text
 * getSelectItemIndex__21dSv_player_status_a_cCFi               */
u8 dSv_player_status_a_c::getSelectItemIndex(int i_no) const {
    if (i_no < MAX_SELECT_ITEM) {
        return mSelectItem[i_no];
    }
    return 0;
}

/* 80032A78-80032A8C 02D3B8 0014+00 0/0 1/1 0/0 .text setMixItemIndex__21dSv_player_status_a_cFiUc
 */
void dSv_player_status_a_c::setMixItemIndex(int i_no, u8 i_slotNo) {
    if (i_no < MAX_SELECT_ITEM) {
        mMixItem[i_no] = i_slotNo;
    }
}

/* 80032A8C-80032AA8 02D3CC 001C+00 0/0 1/1 0/0 .text getMixItemIndex__21dSv_player_status_a_cCFi
 */
u8 dSv_player_status_a_c::getMixItemIndex(int i_no) const {
    if (i_no < MAX_SELECT_ITEM) {
        return mMixItem[i_no];
    }
    return 0;
}

/* 80032AA8-80032AF8 02D3E8 0050+00 0/0 4/4 0/0 .text getRupeeMax__21dSv_player_status_a_cCFv */
u16 dSv_player_status_a_c::getRupeeMax() const {
    if (mWalletSize < 3) {  // if you make this a default, it wont match. Compiler, pls.
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

/* 80032AF8-80032B50 02D438 0058+00 0/0 1/1 0/0 .text isMagicFlag__21dSv_player_status_a_cCFUc */
BOOL dSv_player_status_a_c::isMagicFlag(u8 i_magic) const {
    if (i_magic == 0) {
        return i_dComIfGs_isEventBit(dSv_event_flag_c::M_097);  // Magic Unlocked
    }

    return (mMagicFlag & (u8)(1 << i_magic)) ? TRUE : FALSE;
}

/* 80032B50-80032B94 02D490 0044+00 1/1 0/0 0/0 .text            init__21dSv_player_status_b_cFv */
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

/* 80032B94-80032BB0 02D4D4 001C+00 0/0 1/1 0/0 .text onDarkClearLV__21dSv_player_status_b_cFi */
void dSv_player_status_b_c::onDarkClearLV(int i_no) {
    mDarkClearLevelFlag |= (u8)(1 << i_no);
}

/* 80032BB0-80032BD0 02D4F0 0020+00 0/0 4/4 8/8 .text isDarkClearLV__21dSv_player_status_b_cCFi */
BOOL dSv_player_status_b_c::isDarkClearLV(int i_no) const {
    return mDarkClearLevelFlag & (u8)(1 << i_no) ? TRUE : FALSE;
}

/* 80032BD0-80032BEC 02D510 001C+00 0/0 1/1 0/0 .text onTransformLV__21dSv_player_status_b_cFi */
void dSv_player_status_b_c::onTransformLV(int i_no) {
    mTransformLevelFlag |= (u8)(1 << i_no);
}

/* 80032BEC-80032C0C 02D52C 0020+00 0/0 8/8 9/9 .text isTransformLV__21dSv_player_status_b_cCFi */
BOOL dSv_player_status_b_c::isTransformLV(int i_no) const {
    return mTransformLevelFlag & (u8)(1 << i_no) ? TRUE : FALSE;
}

/* 80032C0C-80032C64 02D54C 0058+00 1/1 0/0 0/0 .text            init__17dSv_horse_place_cFv */
void dSv_horse_place_c::init() {
    strcpy(mName, "");
    mPos.set(0.0f, 0.0f, 0.0f);
    mAngleY = 0;
    mSpawnId = 0;
    mRoomNo = 0;
}

/* 80032C64-80032CC8 02D5A4 0064+00 0/0 0/0 1/1 .text set__17dSv_horse_place_cFPCcRC4cXyzsSc */
void dSv_horse_place_c::set(const char* i_name, const cXyz& i_pos, s16 i_angle, s8 i_roomNo) {
    strcpy(mName, i_name);
    mPos = i_pos;
    mAngleY = i_angle;
    mRoomNo = i_roomNo;
}

/* 80032CC8-80032D1C 02D608 0054+00 1/1 0/0 0/0 .text            init__25dSv_player_return_place_cFv
 */
void dSv_player_return_place_c::init() {
    strcpy(mName, "F_SP108");
    mRoomNo = 1;
    mPlayerStatus = 0;
    unk10 = 21;
    unk11 = 0;
}

/* 80032D1C-80032D60 02D65C 0044+00 0/0 0/0 1/1 .text set__25dSv_player_return_place_cFPCcScUc */
void dSv_player_return_place_c::set(const char* i_name, s8 i_roomNo, u8 i_status) {
    strcpy(mName, i_name);
    mRoomNo = i_roomNo;
    mPlayerStatus = i_status;
}

/* 80032D60-80032DE0 02D6A0 0080+00 1/1 0/0 0/0 .text init__33dSv_player_field_last_stay_info_cFv
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

/* 80032DE0-80032E4C 02D720 006C+00 0/0 2/2 0/0 .text
 * set__33dSv_player_field_last_stay_info_cFPCcRC4cXyzsScUc     */
void dSv_player_field_last_stay_info_c::set(const char* i_name, const cXyz& i_pos, s16 i_angle,
                                            s8 i_spawn, u8 i_regionNo) {
    strcpy(mName, i_name);
    mPos = i_pos;
    mAngleY = i_angle;
    mLastSpawnId = i_spawn;
    mRegionNo = i_regionNo;
}

/* 80032E4C-80032E78 02D78C 002C+00 0/0 1/1 0/0 .text
 * onRegionBit__33dSv_player_field_last_stay_info_cFi           */
void dSv_player_field_last_stay_info_c::onRegionBit(int i_region) {
    if (i_region >= 0 && i_region < 8) {
        mRegion |= (u8)(1 << i_region);
    }
}

/* 80032E78-80032EB0 02D7B8 0038+00 0/0 2/2 0/0 .text
 * isRegionBit__33dSv_player_field_last_stay_info_cCFi          */
BOOL dSv_player_field_last_stay_info_c::isRegionBit(int i_region) const {
    if (i_region >= 0 && i_region < 8) {
        return (mRegion & (u8)(1 << i_region)) ? TRUE : FALSE;
    }
    return false;
}

/* 80032EB0-80032F2C 02D7F0 007C+00 1/1 0/0 0/0 .text init__27dSv_player_last_mark_info_cFv */
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

/* 80032F2C-80032F90 02D86C 0064+00 0/0 1/1 0/0 .text
 * setWarpItemData__27dSv_player_last_mark_info_cFPCcRC4cXyzsScUcUc */
void dSv_player_last_mark_info_c::setWarpItemData(const char* i_name, const cXyz& i_pos,
                                                  s16 i_angle, s8 i_roomNo, u8, u8) {
    strcpy(mName, i_name);
    mPos.set(i_pos);
    mAngleY = i_angle;
    mRoomNo = i_roomNo;
}

/* 80032F90-80032FB8 02D8D0 0028+00 1/1 0/0 0/0 .text            init__17dSv_player_item_cFv */
void dSv_player_item_c::init() {
    for (int i = 0; i < MAX_ITEM_SLOTS; i++) {
        mItems[i] = NO_ITEM;
        mItemSlots[i] = NO_ITEM;
    }
}

/* 80032FB8-80033030 02D8F8 0078+00 11/11 45/45 2/2 .text setItem__17dSv_player_item_cFiUc */
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

/* 80033030-800332F8 02D970 02C8+00 7/7 70/70 2/2 .text            getItem__17dSv_player_item_cCFib
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

/* 800332F8-80033354 02DC38 005C+00 2/2 0/0 0/0 .text setLineUpItem__17dSv_player_item_cFv */
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

/* 80033354-80033370 02DC94 001C+00 0/0 2/2 0/0 .text getLineUpItem__17dSv_player_item_cCFi */
u8 dSv_player_item_c::getLineUpItem(int i_slotNo) const {
    if (i_slotNo < MAX_ITEM_SLOTS) {
        return mItemSlots[i_slotNo];
    }

    return NO_ITEM;
}

/* 80033370-80033450 02DCB0 00E0+00 1/1 2/2 0/0 .text setBottleItemIn__17dSv_player_item_cFUcUc */
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

/* 80033450-80033494 02DD90 0044+00 0/0 26/26 0/0 .text
 * setEmptyBottleItemIn__17dSv_player_item_cFUc                 */
void dSv_player_item_c::setEmptyBottleItemIn(u8 i_itemNo) {
    i_itemNo = dSv_item_rename(i_itemNo);
    setBottleItemIn(EMPTY_BOTTLE, i_itemNo);
}

/* 80033494-80033514 02DDD4 0080+00 0/0 1/1 1/1 .text setEmptyBottle__17dSv_player_item_cFv */
void dSv_player_item_c::setEmptyBottle() {
    for (int i = 0; i < 4; i++) {
        if (dComIfGs_getItem((u8)(i + SLOT_11), true) == NO_ITEM) {
            dComIfGs_setItem((u8)(i + SLOT_11), EMPTY_BOTTLE);
            return;
        }
    }
}

/* 80033514-80033598 02DE54 0084+00 0/0 3/3 0/0 .text setEmptyBottle__17dSv_player_item_cFUc */
void dSv_player_item_c::setEmptyBottle(u8 i_itemNo) {
    for (int i = 0; i < 4; i++) {
        if (dComIfGs_getItem((u8)(i + SLOT_11), true) == NO_ITEM) {
            dComIfGs_setItem((u8)(i + SLOT_11), i_itemNo);
            return;
        }
    }
}

/* 80033598-800336BC 02DED8 0124+00 1/1 3/3 0/0 .text
 * setEquipBottleItemIn__17dSv_player_item_cFUcUc               */
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

/* 800336BC-800336E0 02DFFC 0024+00 0/0 4/4 0/0 .text
 * setEquipBottleItemEmpty__17dSv_player_item_cFUc              */
void dSv_player_item_c::setEquipBottleItemEmpty(u8 curItemIn) {
    setEquipBottleItemIn(curItemIn, EMPTY_BOTTLE);
}

/* 800336E0-80033754 02E020 0074+00 0/0 30/30 0/0 .text checkBottle__17dSv_player_item_cFUc */
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

/* ############################################################################################## */
/* 803A7288-803A78F8 0043A8 066C+04 2/2 45/45 148/148 .data saveBitLabels__16dSv_event_flag_c */
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

/* 80033754-800337EC 02E094 0098+00 0/0 1/1 0/0 .text checkInsectBottle__17dSv_player_item_cFv */
BOOL dSv_player_item_c::checkInsectBottle() {
    for (int i = 0; i < 24; i++) {
        if (i_dComIfGs_isItemFirstBit(M_BEETLE + i) &&
            !i_dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0x191 + i])) {
            return TRUE;
        }
    }
    return FALSE;
}

/* 800337EC-80033828 02E12C 003C+00 0/0 1/1 1/1 .text checkEmptyBottle__17dSv_player_item_cFv */
u8 dSv_player_item_c::checkEmptyBottle() {
    u8 bottleNum = 0;

    for (int i = 0; i < BOTTLE_MAX; i++) {
        if (mItems[i + SLOT_11] == EMPTY_BOTTLE) {
            bottleNum++;
        }
    }
    return bottleNum;
}

/* 80033828-80033910 02E168 00E8+00 1/1 0/0 0/0 .text setBombBagItemIn__17dSv_player_item_cFUcUcb
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

/* 80033910-80033A20 02E250 0110+00 1/1 0/0 0/0 .text
 * setBombBagItemIn__17dSv_player_item_cFUcUcUcb                */
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

/* 80033A20-80033A50 02E360 0030+00 0/0 2/2 0/0 .text
 * setEmptyBombBagItemIn__17dSv_player_item_cFUcb               */
void dSv_player_item_c::setEmptyBombBagItemIn(u8 i_newBomb, bool i_setNum) {
    setBombBagItemIn(BOMB_BAG_LV1, i_newBomb, i_setNum);
}

/* 80033A50-80033A88 02E390 0038+00 0/0 1/1 1/1 .text
 * setEmptyBombBagItemIn__17dSv_player_item_cFUcUcb             */
void dSv_player_item_c::setEmptyBombBagItemIn(u8 i_newBomb, u8 i_bombNum, bool i_setNum) {
    setBombBagItemIn(BOMB_BAG_LV1, i_newBomb, i_bombNum, i_setNum);
}

/* 80033A88-80033B08 02E3C8 0080+00 0/0 2/2 0/0 .text setEmptyBombBag__17dSv_player_item_cFv */
void dSv_player_item_c::setEmptyBombBag() {
    for (int i = 0; i < 3; i++) {
        if (dComIfGs_getItem((u8)(i + SLOT_15), true) == NO_ITEM) {
            dComIfGs_setItem((u8)(i + SLOT_15), BOMB_BAG_LV1);
            return;
        }
    }
}

/* 80033B08-80033BEC 02E448 00E4+00 0/0 3/3 0/0 .text setEmptyBombBag__17dSv_player_item_cFUcUc */
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

/* 80033BEC-80033C2C 02E52C 0040+00 0/0 1/1 0/0 .text checkBombBag__17dSv_player_item_cFUc */
u8 dSv_player_item_c::checkBombBag(u8 i_itemNo) {
    u8 bombBags = 0;

    for (int i = 0; i < BOMB_BAG_MAX; i++) {
        if (i_itemNo == mItems[i + SLOT_15]) {
            bombBags++;
        }
    }
    return bombBags;
}

/* 80033C2C-80033CBC 02E56C 0090+00 0/0 2/2 1/1 .text setWarashibeItem__17dSv_player_item_cFUc */
void dSv_player_item_c::setWarashibeItem(u8 i_itemNo) {
    dComIfGs_setItem(SLOT_21, i_itemNo);
    dComIfGp_setItem(SLOT_21, i_itemNo);

    for (int i = 0; i < 4; i++) {
        if (dComIfGs_getSelectItemIndex((u8)i) == SLOT_21) {
            dComIfGp_setSelectItem((u8)i);
        }
    }
}

/* 80033CBC-80033D40 02E5FC 0084+00 0/0 1/1 0/0 .text setRodTypeLevelUp__17dSv_player_item_cFv */
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

/* 80033D40-80033E40 02E680 0100+00 0/0 2/2 0/0 .text            setBaitItem__17dSv_player_item_cFUc
 */
void dSv_player_item_c::setBaitItem(u8 i_itemNo) {
    switch (i_itemNo) {
    case BEE_CHILD: {
        i_dComIfGs_isItemFirstBit(ZORAS_JEWEL) ? mItems[SLOT_20] = JEWEL_BEE_ROD :
                                                 mItems[SLOT_20] = BEE_ROD;
        break;
    }
    case WORM: {
        i_dComIfGs_isItemFirstBit(ZORAS_JEWEL) ? mItems[SLOT_20] = JEWEL_WORM_ROD :
                                                 mItems[SLOT_20] = WORM_ROD;
        break;
    }
    case NO_ITEM: {
        i_dComIfGs_isItemFirstBit(ZORAS_JEWEL) ? mItems[SLOT_20] = JEWEL_ROD :
                                                 mItems[SLOT_20] = FISHING_ROD_1;
        break;
    }
    }

    for (int i = 0; i < 4; i++) {
        dComIfGp_setSelectItem(i);
    }
}

/* 80033E40-80033E60 02E780 0020+00 1/1 0/0 0/0 .text            init__21dSv_player_get_item_cFv */
void dSv_player_get_item_c::init() {
    for (int i = 0; i < 8; i++) {
        mItemFlags[i] = 0;
    }
}

/* 80033E60-80033E94 02E7A0 0034+00 0/0 3/3 1/1 .text onFirstBit__21dSv_player_get_item_cFUc */
void dSv_player_get_item_c::onFirstBit(u8 i_itemNo) {
    mItemFlags[i_itemNo / 32] |= (1 << (i_itemNo % 32));
}

/* 80033E94-80033EC8 02E7D4 0034+00 0/0 7/7 1/1 .text offFirstBit__21dSv_player_get_item_cFUc */
void dSv_player_get_item_c::offFirstBit(u8 i_itemNo) {
    mItemFlags[i_itemNo / 32] &= ~(1 << (i_itemNo % 32));
}

/* 80033EC8-80033F00 02E808 0038+00 4/4 87/87 2/2 .text isFirstBit__21dSv_player_get_item_cCFUc */
int dSv_player_get_item_c::isFirstBit(u8 i_itemNo) const {
    return mItemFlags[i_itemNo / 32] & (1 << (i_itemNo % 32)) ? TRUE : FALSE;
}

/* 80033F00-80033F6C 02E840 006C+00 1/1 0/0 0/0 .text            init__24dSv_player_item_record_cFv
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

/* 80033F6C-80033F7C 02E8AC 0010+00 3/3 5/5 0/0 .text setBombNum__24dSv_player_item_record_cFUcUc
 */
void dSv_player_item_record_c::setBombNum(u8 i_bagIdx, u8 i_bombNum) {
    mBombNum[i_bagIdx] = i_bombNum;
}

/* 80033F7C-80033F8C 02E8BC 0010+00 0/0 13/13 2/2 .text getBombNum__24dSv_player_item_record_cCFUc
 */
u8 dSv_player_item_record_c::getBombNum(u8 i_bagIdx) const {
    return mBombNum[i_bagIdx];
}

/* 80033F8C-80033F9C 02E8CC 0010+00 0/0 2/2 0/0 .text
 * setBottleNum__24dSv_player_item_record_cFUcUc                */
void dSv_player_item_record_c::setBottleNum(u8 i_bottleIdx, u8 i_bottleNum) {
    mBottleNum[i_bottleIdx] = i_bottleNum;
}

/* 80033F9C-80034030 02E8DC 0094+00 0/0 1/1 0/0 .text addBottleNum__24dSv_player_item_record_cFUcs
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

/* 80034030-80034040 02E970 0010+00 0/0 4/4 0/0 .text getBottleNum__24dSv_player_item_record_cCFUc
 */
u8 dSv_player_item_record_c::getBottleNum(u8 i_bottleIdx) const {
    return mBottleNum[i_bottleIdx];
}

/* 80034040-800340B8 02E980 0078+00 1/1 0/0 0/0 .text            init__21dSv_player_item_max_cFv */
void dSv_player_item_max_c::init() {
    for (int i = 0; i < 7; i++) {
        mItemMax[i] = 30;
    }
    setBombNum(NORMAL_BOMB, 30);
    setBombNum(WATER_BOMB, 15);
    setBombNum(POKE_BOMB, 10);
    mItemMax[7] = 0;
}

/* 800340B8-800340F8 02E9F8 0040+00 1/1 0/0 0/0 .text setBombNum__21dSv_player_item_max_cFUcUc */
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

/* 800340F8-800341AC 02EA38 00B4+00 3/3 14/14 2/2 .text getBombNum__21dSv_player_item_max_cCFUc */
u8 dSv_player_item_max_c::getBombNum(u8 i_bombType) const {
    u8 lv_multiplier = 1;
    if (i_dComIfGs_isItemFirstBit(BOMB_BAG_LV2)) {
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

/* 800341AC-800341E8 02EAEC 003C+00 1/1 0/0 0/0 .text            init__20dSv_player_collect_cFv */
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

/* 800341E8-80034208 02EB28 0020+00 0/0 8/8 0/0 .text setCollect__20dSv_player_collect_cFiUc */
void dSv_player_collect_c::setCollect(int i_item_type, u8 i_item) {
    mItem[i_item_type] |= (u8)(1 << i_item);
}

/* 80034208-8003422C 02EB48 0024+00 0/0 4/4 4/4 .text isCollect__20dSv_player_collect_cCFiUc */
BOOL dSv_player_collect_c::isCollect(int i_item_type, u8 i_item) const {
    return mItem[i_item_type] & (u8)(1 << i_item) ? TRUE : FALSE;
}

/* 8003422C-8003424C 02EB6C 0020+00 0/0 1/1 1/1 .text onCollectCrystal__20dSv_player_collect_cFUc
 */
void dSv_player_collect_c::onCollectCrystal(u8 i_item) {
    mCrystal |= (u8)(1 << i_item);
}

/* 8003424C-80034270 02EB8C 0024+00 0/0 4/4 0/0 .text isCollectCrystal__20dSv_player_collect_cCFUc
 */
BOOL dSv_player_collect_c::isCollectCrystal(u8 i_item) const {
    return mCrystal & (u8)(1 << i_item) ? TRUE : FALSE;
}

/* 80034270-80034290 02EBB0 0020+00 0/0 1/1 1/1 .text onCollectMirror__20dSv_player_collect_cFUc
 */
void dSv_player_collect_c::onCollectMirror(u8 i_item) {
    mMirror |= (u8)(1 << i_item);
}

/* 80034290-800342B4 02EBD0 0024+00 0/0 4/4 0/0 .text isCollectMirror__20dSv_player_collect_cCFUc
 */
BOOL dSv_player_collect_c::isCollectMirror(u8 i_item) const {
    return mMirror & (u8)(1 << i_item) ? TRUE : FALSE;
}

/* 800342B4-800342DC 02EBF4 0028+00 1/1 0/0 0/0 .text            init__17dSv_player_wolf_cFv */
void dSv_player_wolf_c::init() {
    for (int i = 0; i < 3; i++) {
        unk0[i] = 0;
    }

    unk3 = 0;
}

/* 800342DC-80034320 02EC1C 0044+00 1/1 0/0 0/0 .text            init__16dSv_light_drop_cFv */
void dSv_light_drop_c::init() {
    for (int i = 0; i < 4; i++) {
        mLightDropNum[i] = 0;
    }

    mLightDropGetFlag = 0;

    for (int i = 0; i < 3; i++) {
        unk5[i] = 0;
    }
}

/* 80034320-80034340 02EC60 0020+00 0/0 0/0 1/1 .text setLightDropNum__16dSv_light_drop_cFUcUc */
void dSv_light_drop_c::setLightDropNum(u8 i_nowLevel, u8 i_dropNum) {
    if (i_nowLevel < LIGHT_DROP_STAGE || i_nowLevel > 6) {
        mLightDropNum[i_nowLevel] = i_dropNum;
    }
}

/* 80034340-80034368 02EC80 0028+00 0/0 11/11 4/4 .text getLightDropNum__16dSv_light_drop_cCFUc */
u8 dSv_light_drop_c::getLightDropNum(u8 i_nowLevel) const {
    if (i_nowLevel >= LIGHT_DROP_STAGE && i_nowLevel <= 6) {
        return 0;
    }
    return mLightDropNum[i_nowLevel];
}

/* 80034368-8003439C 02ECA8 0034+00 0/0 4/4 0/0 .text onLightDropGetFlag__16dSv_light_drop_cFUc */
void dSv_light_drop_c::onLightDropGetFlag(u8 i_nowLevel) {
    if (i_nowLevel < LIGHT_DROP_STAGE || i_nowLevel > 6) {
        mLightDropGetFlag |= (u8)(1 << i_nowLevel);
    }
}

/* 8003439C-800343DC 02ECDC 0040+00 0/0 8/8 2/2 .text isLightDropGetFlag__16dSv_light_drop_cCFUc
 */
BOOL dSv_light_drop_c::isLightDropGetFlag(u8 i_nowLevel) const {
    if (i_nowLevel >= LIGHT_DROP_STAGE && i_nowLevel <= 6) {
        return 0;
    }
    return mLightDropGetFlag & (u8)(1 << i_nowLevel) ? TRUE : FALSE;
}

/* 800343DC-80034428 02ED1C 004C+00 1/1 0/0 0/0 .text            init__17dSv_letter_info_cFv */
void dSv_letter_info_c::init() {
    for (int i = 0; i < 2; i++) {
        mLetterGetFlags[i] = 0;
        mLetterReadFlags[i] = 0;
    }

    for (int i = 0; i < LETTER_INFO_BIT; i++) {
        mGetNumber[i] = 0;
    }
}

/* 80034428-8003444C 02ED68 0024+00 0/0 2/2 0/0 .text onLetterGetFlag__17dSv_letter_info_cFi */
void dSv_letter_info_c::onLetterGetFlag(int i_no) {
    mLetterGetFlags[i_no >> 5] |= 1 << (i_no & 0x1F);
}

/* 8003444C-80034474 02ED8C 0028+00 0/0 4/4 0/0 .text isLetterGetFlag__17dSv_letter_info_cCFi */
BOOL dSv_letter_info_c::isLetterGetFlag(int i_no) const {
    return mLetterGetFlags[i_no >> 5] & (1 << (i_no & 0x1F)) ? TRUE : FALSE;
}

/* 80034474-8003449C 02EDB4 0028+00 0/0 1/1 0/0 .text onLetterReadFlag__17dSv_letter_info_cFi */
void dSv_letter_info_c::onLetterReadFlag(int i_no) {
    mLetterReadFlags[i_no >> 5] |= 1 << (i_no & 0x1F);
}

/* 8003449C-800344C8 02EDDC 002C+00 0/0 3/3 0/0 .text isLetterReadFlag__17dSv_letter_info_cCFi */
BOOL dSv_letter_info_c::isLetterReadFlag(int i_no) const {
    return mLetterReadFlags[i_no >> 5] & 1 << (i_no & 0x1F) ? TRUE : FALSE;
}

/* 800344C8-800344FC 02EE08 0034+00 1/1 0/0 0/0 .text            init__18dSv_fishing_info_cFv */
void dSv_fishing_info_c::init() {
    for (int i = 0; i < 16; i++) {
        mFishCount[i] = 0;
        mMaxSize[i] = 0;
    }
}

/* 800344FC-80034518 02EE3C 001C+00 0/0 0/0 1/1 .text addFishCount__18dSv_fishing_info_cFUc */
void dSv_fishing_info_c::addFishCount(u8 i_fishIdx) {
    if (mFishCount[i_fishIdx] < 999) {
        mFishCount[i_fishIdx] += 1;
    }
}

/* 80034518-800345AC 02EE58 0094+00 1/1 0/0 0/0 .text            init__17dSv_player_info_cFv */
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

/* 800345AC-80034644 02EEEC 0098+00 1/1 0/0 0/0 .text            init__19dSv_player_config_cFv */
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

/* 80034644-80034684 02EF84 0040+00 0/0 4/4 0/0 .text checkVibration__19dSv_player_config_cCFv */
u32 dSv_player_config_c::checkVibration() const {
    return JUTGamePad::sRumbleSupported & 0x80000000 ? dComIfGp_getNowVibration() : 0;
}

/* 80034684-8003468C 02EFC4 0008+00 1/1 2/2 0/0 .text            getSound__19dSv_player_config_cFv
 */
u8 dSv_player_config_c::getSound() {
    return mSoundMode;
}

/* 8003468C-80034694 -00001 0008+00 0/0 0/0 0/0 .text            setSound__19dSv_player_config_cFUc
 */
void dSv_player_config_c::setSound(u8 i_mode) {
    mSoundMode = i_mode;
}

/* 80034694-8003469C 02EFD4 0008+00 1/1 1/1 0/0 .text getVibration__19dSv_player_config_cFv */
u8 dSv_player_config_c::getVibration() {
    return mVibration;
}

/* 8003469C-800346A4 -00001 0008+00 0/0 0/0 0/0 .text setVibration__19dSv_player_config_cFUc */
void dSv_player_config_c::setVibration(u8 i_status) {
    mVibration = i_status;
}

/* 800346A4-80034750 02EFE4 00AC+00 1/1 0/0 0/0 .text            init__12dSv_player_cFv */
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

/* 80034750-800347A0 02F090 0050+00 1/1 0/0 0/0 .text            init__12dSv_memBit_cFv */
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

/* 800347A0-800347C4 02F0E0 0024+00 0/0 0/0 15/15 .text            onTbox__12dSv_memBit_cFi */
void dSv_memBit_c::onTbox(int i_no) {
    mTbox[i_no >> 5] |= 1 << (i_no & 0x1F);
}

/* 800347C4-800347E8 02F104 0024+00 0/0 0/0 5/5 .text            offTbox__12dSv_memBit_cFi */
void dSv_memBit_c::offTbox(int i_no) {
    mTbox[i_no >> 5] &= ~(1 << (i_no & 0x1F));
}

/* 800347E8-80034810 02F128 0028+00 0/0 6/6 7/7 .text            isTbox__12dSv_memBit_cCFi */
BOOL dSv_memBit_c::isTbox(int i_no) const {
    return 1 << (i_no & 0x1f) & mTbox[i_no >> 5] ? TRUE : FALSE;
}

/* 80034810-80034838 02F150 0028+00 1/1 5/5 18/18 .text            onSwitch__12dSv_memBit_cFi */
void dSv_memBit_c::onSwitch(int i_no) {
    mSwitch[i_no >> 5] |= 1 << (i_no & 0x1F);
}

/* 80034838-80034860 02F178 0028+00 1/1 3/3 3/3 .text            offSwitch__12dSv_memBit_cFi */
void dSv_memBit_c::offSwitch(int i_no) {
    mSwitch[i_no >> 5] &= ~(1 << (i_no & 0x1F));
}

/* 80034860-8003488C 02F1A0 002C+00 1/1 11/11 23/23 .text            isSwitch__12dSv_memBit_cCFi */
BOOL dSv_memBit_c::isSwitch(int i_no) const {
    return (mSwitch[i_no >> 5] & 1 << (i_no & 0x1F)) ? TRUE : FALSE;
}

/* 8003488C-800348C4 02F1CC 0038+00 1/1 0/0 0/0 .text            revSwitch__12dSv_memBit_cFi */
BOOL dSv_memBit_c::revSwitch(int i_no) {
    u32 switchInd = i_no >> 5;
    u32 tmp = 1 << (i_no & 0x1F);
    mSwitch[switchInd] ^= tmp;
    return mSwitch[switchInd] & tmp ? TRUE : FALSE;
}

/* 800348C4-800348EC 02F204 0028+00 1/1 0/0 0/0 .text            onItem__12dSv_memBit_cFi */
void dSv_memBit_c::onItem(int i_no) {
    mItem[i_no >> 5] |= 1 << (i_no & 0x1F);
}

/* 800348EC-80034918 02F22C 002C+00 1/1 2/2 1/1 .text            isItem__12dSv_memBit_cCFi */
BOOL dSv_memBit_c::isItem(int i_no) const {
    return (mItem[i_no >> 5] & 1 << (i_no & 0x1F)) ? TRUE : FALSE;
}

/* 80034918-80034934 02F258 001C+00 0/0 8/8 18/18 .text            onDungeonItem__12dSv_memBit_cFi
 */
void dSv_memBit_c::onDungeonItem(int i_no) {
    mDungeonItem |= (u8)(1 << i_no);
}

/* 80034934-80034954 02F274 0020+00 0/0 27/27 47/47 .text isDungeonItem__12dSv_memBit_cCFi */
s32 dSv_memBit_c::isDungeonItem(int i_no) const {
    return mDungeonItem & (u8)(1 << i_no) ? TRUE : FALSE;
}

/* 80034954-8003498C 02F294 0038+00 2/2 0/0 0/0 .text            init__11dSv_event_cFv */
void dSv_event_c::init() {
    for (int i = 0; i < MAX_EVENTS; i++) {
        mEvent[i] = 0;
    }
    setInitEventBit();
}

/* 8003498C-800349A4 02F2CC 0018+00 1/1 27/27 58/58 .text            onEventBit__11dSv_event_cFUs */
void dSv_event_c::onEventBit(u16 i_no) {
    mEvent[i_no >> 8] |= (u8)i_no;
}

/* 800349A4-800349BC 02F2E4 0018+00 1/1 14/14 23/23 .text            offEventBit__11dSv_event_cFUs
 */
void dSv_event_c::offEventBit(u16 i_no) {
    mEvent[i_no >> 8] &= ~(u8)i_no;
}

/* 800349BC-800349E0 02F2FC 0024+00 3/3 77/77 153/153 .text            isEventBit__11dSv_event_cCFUs
 */
BOOL dSv_event_c::isEventBit(u16 i_no) const {
    return mEvent[i_no >> 8] & (i_no & 0xFF) ? TRUE : FALSE;
}

/* 800349E0-80034A04 02F320 0024+00 0/0 12/12 17/17 .text            setEventReg__11dSv_event_cFUsUc
 */
void dSv_event_c::setEventReg(u16 i_reg, u8 i_no) {
    mEvent[i_reg >> 8] &= ~(u8)i_reg;
    mEvent[i_reg >> 8] |= i_no;
}

/* 80034A04-80034A1C 02F344 0018+00 0/0 19/19 20/20 .text            getEventReg__11dSv_event_cCFUs
 */
u8 dSv_event_c::getEventReg(u16 i_reg) const {
    return (u8)i_reg & mEvent[i_reg >> 8];
}

/* 80034A1C-80034A64 02F35C 0048+00 1/1 0/0 0/0 .text            init__14dSv_MiniGame_cFv */
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

/* 80034A64-80034A84 02F3A4 0020+00 2/2 2/2 0/0 .text            init__12dSv_memory_cFv */
void dSv_memory_c::init() {
    mBit.init();
}

/* 80034A84-80034AA4 02F3C4 0020+00 1/1 1/1 0/0 .text            init__13dSv_memory2_cFv */
void dSv_memory2_c::init() {
    for (int i = 0; i < 2; i++) {
        mVisitedRoom[i] = 0;
    }
}

/* 80034AA4-80034AC8 02F3E4 0024+00 0/0 1/1 1/1 .text            onVisitedRoom__13dSv_memory2_cFi */
void dSv_memory2_c::onVisitedRoom(int i_no) {
    mVisitedRoom[i_no >> 5] |= 1 << (i_no & 0x1F);
}

/* 80034AC8-80034AEC 02F408 0024+00 0/0 1/1 1/1 .text            offVisitedRoom__13dSv_memory2_cFi
 */
void dSv_memory2_c::offVisitedRoom(int i_no) {
    mVisitedRoom[i_no >> 5] &= ~(1 << (i_no & 0x1F));
}

/* 80034AEC-80034B14 02F42C 0028+00 0/0 4/4 0/0 .text            isVisitedRoom__13dSv_memory2_cFi */
BOOL dSv_memory2_c::isVisitedRoom(int i_no) {
    return (1 << (i_no & 0x1F) & mVisitedRoom[i_no >> 5]) ? TRUE : FALSE;
}

/* 80034B14-80034B98 02F454 0084+00 1/1 1/1 0/0 .text            init__12dSv_danBit_cFSc */
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

/* 80034B98-80034BC0 02F4D8 0028+00 1/1 2/2 26/26 .text            onSwitch__12dSv_danBit_cFi */
void dSv_danBit_c::onSwitch(int i_no) {
    mSwitch[i_no >> 5] |= 1 << (i_no & 0x1F);
}

/* 80034BC0-80034BE8 02F500 0028+00 1/1 1/1 10/10 .text            offSwitch__12dSv_danBit_cFi */
void dSv_danBit_c::offSwitch(int i_no) {
    mSwitch[i_no >> 5] &= ~(1 << (i_no & 0x1F));
}

/* 80034BE8-80034C14 02F528 002C+00 1/1 6/6 14/14 .text            isSwitch__12dSv_danBit_cCFi */
BOOL dSv_danBit_c::isSwitch(int i_no) const {
    return mSwitch[i_no >> 5] & (1 << (i_no & 0x1F)) ? TRUE : FALSE;
}

/* 80034C14-80034C4C 02F554 0038+00 1/1 0/0 0/0 .text            revSwitch__12dSv_danBit_cFi */
BOOL dSv_danBit_c::revSwitch(int i_no) {
    int uVar1 = 1 << (i_no & 0x1F);
    mSwitch[i_no >> 5] ^= uVar1;
    return mSwitch[i_no >> 5] & uVar1 ? TRUE : FALSE;
}

/* 80034C4C-80034C74 02F58C 0028+00 1/1 0/0 0/0 .text            onItem__12dSv_danBit_cFi */
void dSv_danBit_c::onItem(int i_no) {
    mItem[i_no >> 5] |= 1 << (i_no & 0x1F);
}

/* 80034C74-80034CA0 02F5B4 002C+00 1/1 2/2 0/0 .text            isItem__12dSv_danBit_cCFi */
BOOL dSv_danBit_c::isItem(int i_no) const {
    return mItem[i_no >> 5] & 1 << (i_no & 0x1F) ? TRUE : FALSE;
}

/* 80034CA0-80034CEC 02F5E0 004C+00 1/1 0/0 0/0 .text            init__13dSv_zoneBit_cFv */
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

/* 80034CEC-80034CF8 02F62C 000C+00 0/0 3/3 0/0 .text            clearRoomSwitch__13dSv_zoneBit_cFv
 */
void dSv_zoneBit_c::clearRoomSwitch() {
    mRoomSwitch = 0;
}

/* 80034CF8-80034D04 02F638 000C+00 0/0 3/3 0/0 .text            clearRoomItem__13dSv_zoneBit_cFv */
void dSv_zoneBit_c::clearRoomItem() {
    mRoomItem = 0;
}

/* 80034D04-80034D2C 02F644 0028+00 1/1 1/1 0/0 .text            onSwitch__13dSv_zoneBit_cFi */
void dSv_zoneBit_c::onSwitch(int i_no) {
    mSwitch[i_no >> 4] |= (u16)(1 << (i_no & 0xF));
}

/* 80034D2C-80034D50 02F66C 0024+00 1/1 1/1 0/0 .text            offSwitch__13dSv_zoneBit_cFi */
void dSv_zoneBit_c::offSwitch(int i_no) {
    mSwitch[i_no >> 4] &= ~(1 << (i_no & 0xF));
}

/* 80034D50-80034D78 02F690 0028+00 1/1 1/1 0/0 .text            isSwitch__13dSv_zoneBit_cCFi */
BOOL dSv_zoneBit_c::isSwitch(int i_no) const {
    return mSwitch[i_no >> 4] & 1 << (i_no & 0xF) ? TRUE : FALSE;
}

/* 80034D78-80034DAC 02F6B8 0034+00 1/1 0/0 0/0 .text            revSwitch__13dSv_zoneBit_cFi */
BOOL dSv_zoneBit_c::revSwitch(int i_no) {
    u32 switchInd = i_no >> 4;
    int uVar1 = 1 << (i_no & 0xF);
    mSwitch[switchInd] ^= uVar1;
    return mSwitch[switchInd] & uVar1 ? TRUE : FALSE;
}

/* 80034DAC-80034DC8 02F6EC 001C+00 1/1 1/1 0/0 .text            onOneSwitch__13dSv_zoneBit_cFi */
void dSv_zoneBit_c::onOneSwitch(int i_no) {
    mRoomSwitch |= (u16)(1 << i_no);
}

/* 80034DC8-80034DE0 02F708 0018+00 1/1 1/1 0/0 .text            offOneSwitch__13dSv_zoneBit_cFi */
void dSv_zoneBit_c::offOneSwitch(int i_no) {
    mRoomSwitch &= ~(1 << i_no);
}

/* 80034DE0-80034DFC 02F720 001C+00 1/1 1/1 0/0 .text            isOneSwitch__13dSv_zoneBit_cCFi */
BOOL dSv_zoneBit_c::isOneSwitch(int i_no) const {
    return mRoomSwitch & 1 << i_no ? TRUE : FALSE;
}

/* 80034DFC-80034E24 02F73C 0028+00 1/1 0/0 0/0 .text            revOneSwitch__13dSv_zoneBit_cFi */
BOOL dSv_zoneBit_c::revOneSwitch(int i_no) {
    int iVar1 = 1 << i_no;
    mRoomSwitch ^= iVar1;
    return mRoomSwitch & iVar1 ? TRUE : FALSE;
}

/* 80034E24-80034E50 02F764 002C+00 1/1 0/0 0/0 .text            onItem__13dSv_zoneBit_cFi */
void dSv_zoneBit_c::onItem(int i_no) {
    mItem[i_no >> 4] |= (u16)(1 << (i_no & 0xF));
}

/* 80034E50-80034E7C 02F790 002C+00 1/1 1/1 0/0 .text            isItem__13dSv_zoneBit_cCFi */
BOOL dSv_zoneBit_c::isItem(int i_no) const {
    return mItem[i_no >> 4] & 1 << (i_no & 0xF) ? TRUE : FALSE;
}

/* 80034E7C-80034E98 02F7BC 001C+00 1/1 0/0 0/0 .text            onOneItem__13dSv_zoneBit_cFi */
void dSv_zoneBit_c::onOneItem(int i_no) {
    mRoomItem |= (u16)(1 << i_no);
}

/* 80034E98-80034EB4 02F7D8 001C+00 1/1 1/1 0/0 .text            isOneItem__13dSv_zoneBit_cCFi */
BOOL dSv_zoneBit_c::isOneItem(int i_no) const {
    return mRoomItem & 1 << i_no ? TRUE : FALSE;
}

/* 80034EB4-80034ED4 02F7F4 0020+00 1/1 0/0 0/0 .text            init__15dSv_zoneActor_cFv */
void dSv_zoneActor_c::init() {
    for (int i = 0; i < 4; i++) {
        mActorFlags[i] = 0;
    }
}

/* 80034ED4-80034EF8 02F814 0024+00 1/1 0/0 0/0 .text            on__15dSv_zoneActor_cFi */
void dSv_zoneActor_c::on(int i_id) {
    mActorFlags[i_id >> 5] |= 1 << (i_id & 0x1F);
}

/* 80034EF8-80034F1C 02F838 0024+00 1/1 0/0 0/0 .text            off__15dSv_zoneActor_cFi */
void dSv_zoneActor_c::off(int i_id) {
    mActorFlags[i_id >> 5] &= ~(1 << (i_id & 0x1F));
}

/* 80034F1C-80034F44 02F85C 0028+00 1/1 0/0 0/0 .text            is__15dSv_zoneActor_cCFi */
BOOL dSv_zoneActor_c::is(int i_id) const {
    return mActorFlags[i_id >> 5] & 1 << (i_id & 0x1F) ? TRUE : FALSE;
}

/* 80034F44-80034F80 02F884 003C+00 2/2 0/0 0/0 .text            init__10dSv_zone_cFi */
void dSv_zone_c::init(int i_roomNo) {
    mRoomNo = i_roomNo;
    mBit.init();
    mActor.init();
}

/* 80034F80-80034FA4 02F8C0 0024+00 0/0 3/3 14/14 .text setRoom__13dSv_restart_cFRC4cXyzsSc */
void dSv_restart_c::setRoom(const cXyz& i_position, s16 i_angleY, s8 i_roomNo) {
    mRoomNo = i_roomNo;
    mRoomPos = i_position;
    mRoomAngleY = i_angleY;
}

/* 80034FA4-80034FCC 02F8E4 0028+00 0/0 2/2 0/0 .text set__17dSv_turnRestart_cFRC4cXyzsScUl */
void dSv_turnRestart_c::set(const cXyz& i_position, s16 i_angleY, s8 param_3, u32 i_param) {
    mPosition = i_position;
    mAngleY = i_angleY;
    unk18 = param_3;
    mParam = i_param;
}

/* 80034FCC-8003501C 02F90C 0050+00 0/0 2/2 0/0 .text            init__10dSv_info_cFv */
void dSv_info_c::init() {
    mSavedata.init();
    mMemory.init();
    initDan(-1);
    initZone();
    mTmp.init();
}

/* 8003501C-800350A8 02F95C 008C+00 2/2 0/0 0/0 .text            init__10dSv_save_cFv */
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

/* 800350A8-800350BC 02F9E8 0014+00 0/0 6/6 1/1 .text            getSave2__10dSv_save_cFi */
dSv_memory2_c* dSv_save_c::getSave2(int i_stage2No) {
    return &mSave2[i_stage2No];
}

/* 800350BC-800350F0 02F9FC 0034+00 0/0 1/1 0/0 .text            getSave__10dSv_info_cFi */
void dSv_info_c::getSave(int i_stageNo) {
    mMemory = mSavedata.getSave(i_stageNo);
}

/* 800350F0-8003514C 02FA30 005C+00 0/0 2/2 0/0 .text            putSave__10dSv_info_cFi */
void dSv_info_c::putSave(int i_stageNo) {
    mSavedata.putSave(i_stageNo, mMemory);
}

/* 8003514C-800351A4 02FA8C 0058+00 1/1 1/1 0/0 .text            initZone__10dSv_info_cFv */
void dSv_info_c::initZone() {
    for (int i = 0; i < 0x20; i++) {
        mZone[i].init(-1);
    }
}

/* 800351A4-80035200 02FAE4 005C+00 0/0 1/1 0/0 .text            createZone__10dSv_info_cFi */
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

/* 80035200-800352B0 02FB40 00B0+00 0/0 8/8 352/352 .text            onSwitch__10dSv_info_cFii */
void dSv_info_c::onSwitch(int i_no, int i_roomNo) {
    if (i_no == -1 || i_no == 255) {
        return;
    }

    if (i_no < MEMORY_SWITCH) {
        mMemory.getBit().onSwitch(i_no);
    } else if (i_no < (MEMORY_SWITCH + DAN_SWITCH)) {
        mDan.onSwitch(i_no - MEMORY_SWITCH);
    } else {
        int zoneId = dStage_roomControl_c::getZoneNo(i_roomNo);
        if (i_no < (MEMORY_SWITCH + DAN_SWITCH + ZONE_SWITCH)) {
            mZone[zoneId].getZoneBit().onSwitch(i_no - (MEMORY_SWITCH + DAN_SWITCH));
        } else {
            mZone[zoneId].getZoneBit().onOneSwitch(i_no -
                                                   (MEMORY_SWITCH + DAN_SWITCH + ZONE_SWITCH));
        }
    }
}

/* 800352B0-80035360 02FBF0 00B0+00 0/0 2/2 93/93 .text            offSwitch__10dSv_info_cFii */
void dSv_info_c::offSwitch(int i_no, int i_roomNo) {
    if (i_no == -1 || i_no == 255) {
        return;
    }

    if (i_no < MEMORY_SWITCH) {
        mMemory.getBit().offSwitch(i_no);
    } else if (i_no < (MEMORY_SWITCH + DAN_SWITCH)) {
        mDan.offSwitch(i_no - MEMORY_SWITCH);
    } else {
        int zoneId = dStage_roomControl_c::getZoneNo(i_roomNo);
        if (i_no < (MEMORY_SWITCH + DAN_SWITCH + ZONE_SWITCH)) {
            mZone[zoneId].getZoneBit().offSwitch(i_no - (MEMORY_SWITCH + DAN_SWITCH));
        } else {
            mZone[zoneId].getZoneBit().offOneSwitch(i_no -
                                                    (MEMORY_SWITCH + DAN_SWITCH + ZONE_SWITCH));
        }
    }
}

/* 80035360-8003542C 02FCA0 00CC+00 0/0 27/27 734/734 .text            isSwitch__10dSv_info_cCFii */
BOOL dSv_info_c::isSwitch(int i_no, int i_roomNo) const {
    if (i_no == -1 || i_no == 255) {
        return FALSE;
    }

    if (i_no < MEMORY_SWITCH) {
        return mMemory.getBit().isSwitch(i_no);
    } else if (i_no < (MEMORY_SWITCH + DAN_SWITCH)) {
        return mDan.isSwitch(i_no - MEMORY_SWITCH);
    } else {
        int zoneId = dStage_roomControl_c::getZoneNo(i_roomNo);
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

/* 8003542C-800354E0 02FD6C 00B4+00 0/0 0/0 2/2 .text            revSwitch__10dSv_info_cFii */
BOOL dSv_info_c::revSwitch(int i_no, int i_roomNo) {
    if (i_no == -1 || i_no == 255) {
        return FALSE;
    }

    if (i_no < MEMORY_SWITCH) {
        return mMemory.getBit().revSwitch(i_no);
    } else if (i_no < (MEMORY_SWITCH + DAN_SWITCH)) {
        return mDan.revSwitch(i_no - MEMORY_SWITCH);
    } else {
        int zoneNo = dStage_roomControl_c::getZoneNo(i_roomNo);
        if (i_no < (MEMORY_SWITCH + DAN_SWITCH + ZONE_SWITCH)) {
            return mZone[zoneNo].getZoneBit().revSwitch(i_no - (MEMORY_SWITCH + DAN_SWITCH));
        } else {
            return mZone[zoneNo].getZoneBit().revOneSwitch(
                i_no - (MEMORY_SWITCH + DAN_SWITCH + ZONE_SWITCH));
        }
    }
}

/* 800354E0-80035590 02FE20 00B0+00 0/0 1/1 3/3 .text            onItem__10dSv_info_cFii */
void dSv_info_c::onItem(int i_no, int i_roomNo) {
    if (i_no == -1 || i_no == 255) {
        return;
    }

    if (i_no < MEMORY_ITEM) {
        mDan.onItem(i_no);
    } else if (i_no < (MEMORY_ITEM + DAN_ITEM)) {
        mMemory.getBit().onItem(i_no - MEMORY_ITEM);
    } else {
        int zoneNo = dStage_roomControl_c::getZoneNo(i_roomNo);
        if (i_no < (MEMORY_ITEM + DAN_ITEM + ZONE_ITEM)) {
            mZone[zoneNo].getZoneBit().onItem(i_no - (MEMORY_ITEM + DAN_ITEM));
        } else {
            mZone[zoneNo].getZoneBit().onOneItem(i_no - (MEMORY_ITEM + DAN_ITEM + ZONE_ITEM));
        }
    }
}

/* 80035590-80035644 02FED0 00B4+00 0/0 1/1 3/3 .text            isItem__10dSv_info_cCFii */
BOOL dSv_info_c::isItem(int i_no, int i_roomNo) const {
    if (i_no == -1 || i_no == 255) {
        return FALSE;
    }

    if (i_no < MEMORY_ITEM) {
        return mDan.isItem(i_no);
    } else if (i_no < (MEMORY_ITEM + DAN_ITEM)) {
        return mMemory.getBit().isItem(i_no - MEMORY_ITEM);
    } else {
        int zoneNo = dStage_roomControl_c::getZoneNo(i_roomNo);
        if (i_no < (MEMORY_ITEM + DAN_ITEM + ZONE_ITEM)) {
            return mZone[zoneNo].getBit().isItem(i_no - (MEMORY_ITEM + DAN_ITEM));
        } else {
            return mZone[zoneNo].getBit().isOneItem(i_no - (MEMORY_ITEM + DAN_ITEM + ZONE_ITEM));
        }
    }
}

/* 80035644-800356B4 02FF84 0070+00 0/0 1/1 4/4 .text            onActor__10dSv_info_cFii */
void dSv_info_c::onActor(int i_id, int i_roomNo) {
    if (i_id == -1 || i_id == dSv_zoneActor_c::ACTOR_MAX || i_roomNo == -1) {
        return;
    }

    int zoneNo = dStage_roomControl_c::getZoneNo(i_roomNo);
    mZone[zoneNo].getActor().on(i_id);
}

/* 800356B4-80035724 02FFF4 0070+00 0/0 0/0 2/2 .text            offActor__10dSv_info_cFii */
void dSv_info_c::offActor(int i_id, int i_roomNo) {
    if (i_id == -1 || i_id == dSv_zoneActor_c::ACTOR_MAX || i_roomNo == -1) {
        return;
    }

    int zoneNo = dStage_roomControl_c::getZoneNo(i_roomNo);
    mZone[zoneNo].getActor().off(i_id);
}

/* 80035724-80035798 030064 0074+00 0/0 3/3 0/0 .text            isActor__10dSv_info_cCFii */
BOOL dSv_info_c::isActor(int i_id, int i_roomNo) const {
    if (i_id == -1 || i_id == dSv_zoneActor_c::ACTOR_MAX || i_roomNo == -1) {
        return FALSE;
    }

    int zoneNo = dStage_roomControl_c::getZoneNo(i_roomNo);
    return mZone[zoneNo].getActor().is(i_id);
}

/* ############################################################################################## */
/* 80379234-80379234 005894 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8037925D = "Write size:%d\n";
SECTION_DEAD static char const* const stringBase_8037926C = "SAVE size:%d\n";
#pragma pop

/* 80035798-80035A04 0300D8 026C+00 0/0 1/1 0/0 .text            memory_to_card__10dSv_info_cFPci */
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
    if (!i_dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[226])) {
        // Store whether or not it's stolen and dropped
        lantern_dropped = i_dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[224]);
        lantern_stolen = i_dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[225]);

        // Then turn those events off
        dComIfGs_offEventBit(dSv_event_flag_c::saveBitLabels[224]);
        dComIfGs_offEventBit(dSv_event_flag_c::saveBitLabels[225]);

        // Used to turn events back on later
        lantern_not_recovered = true;
    }

    // If have the lantern and Slot 1 in the item wheel is blank
    if (i_dComIfGs_isItemFirstBit(KANTERA) && dComIfGs_getItem(SLOT_1, 1) == NO_ITEM) {
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

/* 80035A04-80035BD0 030344 01CC+00 0/0 2/2 0/0 .text            card_to_memory__10dSv_info_cFPci */
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

/* 80035BD0-80035C88 030510 00B8+00 0/0 3/3 0/0 .text            initdata_to_card__10dSv_info_cFPci
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

/* ############################################################################################## */
/* 803790C0-80379234 005720 0172+02 0/0 17/17 7/7 .rodata tempBitLabels__20dSv_event_tmp_flag_c */
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

