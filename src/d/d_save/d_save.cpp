#include "d/d_save/d_save/d_save.h"
#include "Z2AudioLib/Z2AudioMgr/Z2AudioMgr.h"
#include "d/d_com/d_com_inf_game/d_com_inf_game.h"
#include "d/d_meter2/d_meter2_info/d_meter2_info.h"
#include "d/d_save/d_save_init/d_save_init.h"
#include "msl_c/string.h"
#include "os/OS.h"

extern "C" {
int getZoneNo__20dStage_roomControl_cFi(int);
u32 getBombNum__21dSv_player_item_max_cCFUc(u8);
u8 dComIfGs_getBottleMax__Fv(void);
u8 dComIfGs_getMixItemIndex__Fi(int);
unsigned int getSelectItemIndex__21dSv_player_status_a_cCFi(int);
void __ct__12dSv_memory_cFv(void);
void __ct__13dSv_memory2_cFv(void);
void clrSaveFlag__12daObjCarry_cFv(void);
void setSaveFlag__12daObjCarry_cFv(void);
void dComIfGp_setSelectItem__Fi(int);
void dComIfGs_setKeyNum__FiUc(int, u8);
void dComIfGs_setMixItemIndex__FiUc(int, u8);
void dComIfGs_setSelectItemIndex__FiUc(int, u8);
void getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c(void);
void setHotSpringTimer__13dMeter2Info_cFUc(void);
void setSaveStageName__13dMeter2Info_cFPCc(void);
void dSv_item_rename__FUc(void);
void __construct_array(void);
void __div2i(void);
void printf(void);
void getItem__17dSv_player_item_cCFib(void);
void getSound__19dSv_player_config_cFv(void);
void getVibration__19dSv_player_config_cFv(void);
void init__10dSv_save_cFv(void);
void isEventBit__11dSv_event_cCFUs(void);
void isFirstBit__21dSv_player_get_item_cCFUc(void);
void offEventBit__11dSv_event_cFUs(void);
void onEventBit__11dSv_event_cFUs(void);
void setBombNum__24dSv_player_item_record_cFUcUc(void);
void setBottleItemIn__17dSv_player_item_cFUcUc(void);
void setItem__17dSv_player_item_cFiUc(void);
void setLineUpItem__17dSv_player_item_cFv(void);
void setNowVibration__14dComIfG_play_cFUc(u8);
void setSound__19dSv_player_config_cFUc(void);
}

extern f32 lbl_80451D58;
extern char lbl_80379234[0x64];
extern f32 lbl_80451D5C;
extern u8 i_item_lst[24];

struct unkEvent {  // figure out what this is later
    u16 unk0[0x11A];
    u8 unk565;
    u16 unk566;
    u8 unk567[0x439];
};
extern unkEvent lbl_803A7288;
extern u32 _sRumbleSupported;

inline int dComIfGs_isItemFirstBit(u8 i_no) {
    return g_dComIfG_gameInfo.getSaveFile().getPlayerGetItem().isFirstBit(i_no);
}

u8 dSv_item_rename(u8 item_id) {
    switch (item_id) {
    case OIL_BOTTLE_2:
        return OIL_BOTTLE;
    case RED_BOTTLE_2:
        return RED_BOTTLE;
    case OIL2:
        return OIL;
    default:
        return item_id;
    }
}

void dSv_player_status_a_c::init() {
    mMaxHealth = 15;
    mCurrentHealth = 12;
    mCurrentRupees = 0;
    mMaxLanternOil = 0;
    mCurrentLanternOil = 0;
    unk10 = 0;

    for (int i = 0; i < 4; i++) {
        mSelectItem[i] = NO_ITEM;
        mMixItem[i + 1] = NO_ITEM;
        dComIfGp_setSelectItem__Fi(i);
    }

    for (int i = 0; i < 6; i++) {
        mEquipment[i] = 0;
    }

    mEquipment[0] = WEARS_CASUAL;
    mEquipment[1] = NO_ITEM;
    mEquipment[2] = NO_ITEM;
    mEquipment[3] = NO_ITEM;
    mEquipment[4] = NO_ITEM;
    mCurrentWallet = WALLET;
    mMaxMagic = 0;
    mCurrentMagic = 0;
    mMagicFlag = 0;
    unk29 = 0;
    unk30 = 0;

    for (int i = 0; i < 3; i++) {
        unk31[i] = 0;
    }
}

void dSv_player_status_a_c::setSelectItemIndex(signed int i_no, u8 item_index) {
    if (i_no < ITEM_XY_MAX_DUMMY / 2) {
        mSelectItem[i_no] = item_index;
    }
}

u8 dSv_player_status_a_c::getSelectItemIndex(signed int i_no) const {
    if (i_no < ITEM_XY_MAX_DUMMY / 2) {
        return mSelectItem[i_no];
    }
    return 0;
}

void dSv_player_status_a_c::setMixItemIndex(signed int i_no, u8 item_index) {
    if (i_no < ITEM_XY_MAX_DUMMY / 2) {
        mMixItem[i_no + 1] = item_index;
    }
}

u8 dSv_player_status_a_c::getMixItemIndex(signed int i_no) const {
    if (i_no < ITEM_XY_MAX_DUMMY / 2) {
        return mMixItem[i_no + 1];
    }
    return 0;
}

u16 dSv_player_status_a_c::getRupeeMax(void) const {
    if (mCurrentWallet < 3) {  // if you make this a default, it wont match. Compiler, pls.
        switch (mCurrentWallet) {
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

asm BOOL dSv_player_status_a_c::isMagicFlag(u8 i_magic) const {
    nofralloc
#include "d/d_save/d_save/asm/func_80032AF8.s"
    // if (i_magic == 0) {
    //     return dComIfGs_isEventBit__FUs(0x2304);
    // }
    // return (mMagicFlag & (u8)(1 << i_magic)) ? TRUE : FALSE;
}

void dSv_player_status_b_c::init() {
    unk4 = 0;
    unk0 = 0;
    mTransformLevelFlag = 0;
    mDarkClearLevelFlag = 0;
    unk10 = 0;
    mTimeOfDay = lbl_80451D58;
    unk16 = 0;

    for (int i = 0; i < 3; i++) {
        unk18[i] = 0;
    }
}

void dSv_player_status_b_c::onDarkClearLV(int flagOnOff) {
    mDarkClearLevelFlag |= (u8)(1 << flagOnOff);
}

BOOL dSv_player_status_b_c::isDarkClearLV(int unk) const {
    return mDarkClearLevelFlag & (u8)(1 << unk) ? TRUE : FALSE;
}

void dSv_player_status_b_c::onTransformLV(int flagOnOff) {
    mTransformLevelFlag |= (u8)(1 << flagOnOff);
}

BOOL dSv_player_status_b_c::isTransformLV(int unk) const {
    return mTransformLevelFlag & (u8)(1 << unk) ? TRUE : FALSE;
}

void dSv_horse_place_c::init(void) {
    f32 position_val;
    char* default_stage;

    default_stage = strcpy(mCurrentStage, (char*)lbl_80379234);
    position_val = lbl_80451D5C;
    mPosition.x = lbl_80451D5C;
    mPosition.y = position_val;
    mPosition.z = position_val;
    mXRotation = 0;
    mSpawnId = 0;
    mRoomId = 0;
}

void dSv_horse_place_c::set(const char* i_name, const cXyz& i_position, s16 i_x_rot,
                            signed char i_room_id) {
    strcpy(mCurrentStage, i_name);
    mPosition.x = i_position.x;
    mPosition.y = i_position.y;
    mPosition.z = i_position.z;
    mXRotation = i_x_rot;
    mRoomId = i_room_id;
}

void dSv_player_return_place_c::init(void) {
    strcpy(mCurrentStage, (char*)lbl_80379234 + 1);
    mRoomId = 1;
    mSpawnId = 0;
    unk10 = 21;
    unk11 = 0;
}

void dSv_player_return_place_c::set(const char* i_name, s8 i_room_id, u8 i_spawn_id) {
    strcpy(mCurrentStage, i_name);
    mRoomId = i_room_id;
    mSpawnId = i_spawn_id;
}

void dSv_player_field_last_stay_info_c::init() {
    f32 position_val;

    strcpy(mLastStage, (char*)lbl_80379234);
    position_val = lbl_80451D5C;

    mLastPosition.x = lbl_80451D5C;
    mLastPosition.y = position_val;
    mLastPosition.z = position_val;
    mLastAngle = 0;
    mLastSpawnId = 0;
    mLastRoomId = 1;
    unk24 = 0;
    mLastRegion = 0;

    for (int i = 0; i < 2; i++) {
        unk26[i] = 0;
    }
}

void dSv_player_field_last_stay_info_c::set(const char* i_name, const cXyz& i_last_position,
                                            s16 i_last_angle, signed char i_last_spawn_id,
                                            u8 i_last_room_id) {
    strcpy(mLastStage, i_name);

    mLastPosition = i_last_position;
    mLastAngle = i_last_angle;
    mLastSpawnId = i_last_spawn_id;
    mLastRoomId = i_last_room_id;
}

void dSv_player_field_last_stay_info_c::onRegionBit(int i_region_bit) {
    if (i_region_bit < 0) {
        return;
    }
    if (8 <= i_region_bit) {
        return;
    }
    mLastRegion |= (u8)(1 << i_region_bit);
}

BOOL dSv_player_field_last_stay_info_c::isRegionBit(int param_1) const {
    if ((param_1 >= 0) && (param_1 < 8)) {
        return (mLastRegion & (u8)(1 << param_1)) ? TRUE : FALSE;
    }
    return false;
}

void dSv_player_last_mark_info_c::init(void) {
    f32 position;

    strcpy(mOoccooStage, (char*)lbl_80379234);
    position = lbl_80451D5C;
    mOoccooPosition.x = lbl_80451D5C;
    mOoccooPosition.y = position;
    mOoccooPosition.z = position;
    mOoccooXRotation = 0;
    mOoccooRoomId = 0;
    mOoccooSpawnId = 0;
    mWarpAcceptStage = -1;

    for (int i = 0; i < 3; i++) {
        unk25[i] = 0;
    }
}

void dSv_player_last_mark_info_c::setWarpItemData(const char* i_ooccoo_stage,
                                                  const cXyz& i_ooccoo_position, s16 i_ooccoo_angle,
                                                  s8 i_ooccoo_room_id, u8 unk1, u8 unk2) {
    strcpy(mOoccooStage, i_ooccoo_stage);
    mOoccooPosition = i_ooccoo_position;
    mOoccooXRotation = i_ooccoo_angle;
    mOoccooRoomId = i_ooccoo_room_id;
}

void dSv_player_item_c::init(void) {
    for (int i = 0; i < 24; i++) {
        mItems[i] = NO_ITEM;
        mItemSlots[i] = NO_ITEM;
    }
}

void dSv_player_item_c::setItem(int item_slot, u8 item_id) {
    if (item_slot < MAX_ITEM_SLOTS) {
        mItems[item_slot] = item_id;
        setLineUpItem();
    }

    int select_item_index = DEFAULT_SELECT_ITEM_INDEX;

    do {
        if (item_slot == dComIfGs_getSelectItemIndex(select_item_index)) {
            dComIfGp_setSelectItem__Fi(select_item_index);
        }
        select_item_index++;
    } while (select_item_index < MAX_SELECT_ITEM);
}

#ifdef NONMATCHING
u8 dSv_player_item_c::getItem(int item_idx, bool isComboItem) const {
    if (item_idx < MAX_ITEM_SLOTS) {
        if (isComboItem) {
            for (int i = 0; i < 2; i++) {
                if ((dComIfGs_getSelectItemIndex(i) == item_idx ||
                     item_idx == dComIfGs_getMixItemIndex__Fi(i)) &&
                    dComIfGs_getMixItemIndex__Fi(i) != NO_ITEM) {
                    u8 item_id_2 = mItems[dComIfGs_getSelectItemIndex(i)];
                    u8 item_id_1 = mItems[dComIfGs_getMixItemIndex(i)];

                    // Get Bomb arrow check: Bow + Normal Bombs
                    if ((item_id_2 == BOW && item_id_1 == NORMAL_BOMB) ||
                        (item_id_1 == BOW && item_id_2 == NORMAL_BOMB)) {
                        return BOMB_ARROW;
                    }

                    // Get Bomb arrow check: Bow + Water Bombs
                    if ((item_id_2 == BOW && item_id_1 == WATER_BOMB) ||
                        (item_id_1 == BOW && item_id_2 == WATER_BOMB)) {
                        return BOMB_ARROW;
                    }

                    // Get Bomb arrow check: Bow + Bomblings
                    if ((item_id_2 == BOW && item_id_1 == POKE_BOMB) ||
                        (item_id_1 == BOW && item_id_2 == POKE_BOMB)) {
                        return BOMB_ARROW;
                    }

                    // Get Hawkeye check
                    if ((item_id_2 == BOW && item_id_1 == HAWK_EYE) ||
                        (item_id_1 == BOW && item_id_2 == HAWK_EYE)) {
                        return HAWK_ARROW;
                    }

                    // Get Rod w/ bee larva
                    if ((item_id_2 == FISHING_ROD_1 && item_id_1 == BEE_CHILD) ||
                        (item_id_1 == FISHING_ROD_1 && item_id_2 == BEE_CHILD)) {
                        return BEE_ROD;
                    }

                    // Get Rod w/ coral earring
                    if ((item_id_2 == FISHING_ROD_1 && item_id_1 == ZORAS_JEWEL) ||
                        (item_id_1 == FISHING_ROD_1 && item_id_2 == ZORAS_JEWEL)) {
                        return JEWEL_ROD;
                    }

                    // Get Rod w/ worm
                    if ((item_id_2 == FISHING_ROD_1 && item_id_1 == WORM) ||
                        (item_id_1 == FISHING_ROD_1 && item_id_2 == WORM)) {
                        return WORM_ROD;
                    }

                    if (i == 3) {
                        if (dComIfGs_getSelectItemIndex(i) == 0 &&
                            dComIfGs_getMixItemIndex__Fi(i) == 0) {
                            dComIfGs_setSelectItemIndex__FiUc(i, 0xFF);
                            dComIfGs_setMixItemIndex__FiUc(i, 0xFF);
                            return 0xFF;
                        }
                    }
                    // 插擣アイテム不定撈撈撈揆%d, %d\n
                    // Uncertain combination item撈撈撈揆%d, %d\n
                    OSReport_Error(lbl_80379234 + 9, item_id_2, item_id_1);
                }
            }
        }
        return mItems[item_idx];
    } else {
        return NO_ITEM;
    }
}
#else
asm u8 dSv_player_item_c::getItem(int param_1, bool param_2) const {
    nofralloc
#include "d/d_save/d_save/asm/func_80033030.s"
}
#endif

// this is close
#ifdef NONMATCHING
void dSv_player_item_c::setLineUpItem(void) {
    for (int i = 0; i < 24; i++) {
        mItemSlots[i] = NO_ITEM;
    }

    for (int i = 0; i < 23; i++) {
        for (int j = 0; j < 24; j++) {
            if (mItems[i_item_lst[j]] != NO_ITEM) {
                mItemSlots[i] = i_item_lst[j];
            }
        }
    }
}
#else
asm void dSv_player_item_c::setLineUpItem(void) {
    nofralloc
#include "d/d_save/d_save/asm/func_800332F8.s"
}
#endif

u8 dSv_player_item_c::getLineUpItem(int slot_number) const {
    if (slot_number < MAX_ITEM_SLOTS) {
        return mItemSlots[slot_number];
    }
    return NO_ITEM;
}

#ifdef NONMATCHING
void dSv_player_item_c::setBottleItemIn(u8 i_item_id_1, u8 i_item_id_2) {
    u8 current_item_index;
    u8 new_item_index;

    current_item_index = dSv_item_rename(i_item_id_1);
    new_item_index = dSv_item_rename(i_item_id_2);

    for (int i = 0; i < 4; i++) {
        // sanitize input to make sure it's only a bottle
        if (current_item_index == items[i + 11]) {
            setItem(i + 11, new_item_index);
            // if hotsprings water, turn on the timer
            if (new_item_index == 107) {
                setHotSpringTimer(i + 11);
            }
            for (int j = 0; j < 4; j++) {
                j = getSelectItemIndex(i);
                if (i + 11 == j) {
                    dComIfGp_setSelectItem__Fi(j);
                }
            }
        }
    }
}
#else
asm void dSv_player_item_c::setBottleItemIn(u8 i_item_id_1, u8 i_item_id_2) {
    nofralloc
#include "d/d_save/d_save/asm/func_80033370.s"
}
#endif

// this is 1 instruction off
#ifdef NONMATCHING
void dSv_player_item_c::setEmptyBottleItemIn(u8 i_item_id) {
    setBottleItemIn(EMPTY_BOTTLE, dSv_item_rename(i_item_id));
    return;
}
#else
asm void dSv_player_item_c::setEmptyBottleItemIn(u8 i_item_id) {
    nofralloc
#include "d/d_save/d_save/asm/func_80033450.s"
}
#endif

void dSv_player_item_c::setEmptyBottle(void) {
    for (int i = 0; i < 4; i++) {
        if (dComIfGs_getItem((u8)(i + 11), true) == NO_ITEM) {
            dComIfGs_setItem((u8)(i + 11), EMPTY_BOTTLE);
            return;
        }
    }
}

void dSv_player_item_c::setEmptyBottle(u8 item_id) {
    for (int i = 0; i < 4; i++) {
        if (dComIfGs_getItem((u8)(i + 11), true) == NO_ITEM) {
            dComIfGs_setItem((u8)(i + 11), item_id);
            return;
        }
    }
}

asm void dSv_player_item_c::setEquipBottleItemIn(u8, u8) {
    nofralloc
#include "d/d_save/d_save/asm/func_80033598.s"
}

void dSv_player_item_c::setEquipBottleItemEmpty(u8 selected_index) {
    setEquipBottleItemIn(selected_index, EMPTY_BOTTLE);
}

u8 dSv_player_item_c::checkBottle(u8 i_item_id) {
    u8 item_id;
    u8 num_bottles = 0;

    item_id = dSv_item_rename(i_item_id);
    for (int i = 0; i < BOTTLE_MAX; i++) {
        if (item_id == mItems[i + SLOT_11]) {
            num_bottles++;
        }
    }
    return num_bottles;
}

asm int dSv_player_item_c::checkInsectBottle(void){
    nofralloc
#include "d/d_save/d_save/asm/func_80033754.s"
    // int i = 0;
    // int j = 0;
    // for (; i < 0x18; i++) {
    //     if (dComIfGs_isItemFirstBit(192 + i) &&
    //         !dComIfGs_isEventBit(lbl_803A7288.unk0[0x191 + j])) {
    //         return 1;
    //     }
    //     j += 1;
    // }
    // return 0;
}

u8 dSv_player_item_c::checkEmptyBottle(void) {
    u8 num = 0;

    for (int i = 0; i < BOTTLE_MAX; i++) {
        // Loop through the bottle slots (11 - 14) and increment counter for every empty bottle
        if (mItems[i + SLOT_11] == EMPTY_BOTTLE) {
            num++;
        }
    }
    return num;
}

asm void dSv_player_item_c::setBombBagItemIn(u8, u8, bool) {
    nofralloc
#include "d/d_save/d_save/asm/func_80033828.s"
}

asm void dSv_player_item_c::setBombBagItemIn(u8, u8, u8, bool) {
    nofralloc
#include "d/d_save/d_save/asm/func_80033910.s"
}

void dSv_player_item_c::setEmptyBombBagItemIn(u8 param_1, bool param_2) {
    setBombBagItemIn(BOMB_BAG_LV1, param_1, param_2);
}

void dSv_player_item_c::setEmptyBombBagItemIn(u8 param_1, u8 param_2, bool param_3) {
    setBombBagItemIn(BOMB_BAG_LV1, param_1, param_2, param_3);
}

// this is a few instructions off
#ifdef NONMATCHING
void dSv_player_item_c::setEmptyBombBag(void) {
    int current_item_index;
    u8 uVar1;

    for (int i = 0; i < 3; i++) {
        current_item_index = (u8)(i + 15);
        uVar1 = getItem(current_item_index, true);

        if (uVar1 == 0xff) {
            setItem(current_item_index, 80);
            return;
        }
    }
}
#else
asm void dSv_player_item_c::setEmptyBombBag(void) {
    nofralloc
#include "d/d_save/d_save/asm/func_80033A88.s"
}
#endif

#ifdef NONMATCHING
void dSv_player_item_c::setEmptyBombBag(u8, u8) {}
#else
asm void dSv_player_item_c::setEmptyBombBag(u8, u8) {
    nofralloc
#include "d/d_save/d_save/asm/func_80033B08.s"
}
#endif

u8 dSv_player_item_c::checkBombBag(u8 param_1) {
    u8 counter = 0;

    for (int i = 0; i < BOMB_BAG_MAX; i++) {
        // Loop through the bomb bag slots (15 - 17) and increment counter for every match
        if (param_1 == mItems[i + SLOT_15]) {
            counter++;
        }
    }
    return counter;
}

void dSv_player_item_c::setWarashibeItem(u8 i_item_id) {
    u32 select_item_index;

    dComIfGs_setItem(SLOT_21, i_item_id);
    // inline should be used, but it wrongly swaps instruction order ??
    // dComIfGp_setItem(SLOT_21, i_item_id);
    g_dComIfG_gameInfo.setPlayUnkWarashibe1(SLOT_21);
    g_dComIfG_gameInfo.setPlayUnkWarashibe2(i_item_id);

    for (int i = 0; i < 4; i++) {
        select_item_index = dComIfGs_getSelectItemIndex((u8)i);
        if (select_item_index == SLOT_21) {
            dComIfGp_setSelectItem__Fi((u8)i);
        }
    }
}

void dSv_player_item_c::setRodTypeLevelUp(void) {
    int current_fishing_rod_item_id = mItems[SLOT_20];

    switch (current_fishing_rod_item_id) {
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
        dComIfGp_setSelectItem__Fi(i);
    }
}

void dSv_player_item_c::setBaitItem(u8 param_1) {
    switch (param_1) {
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
        dComIfGp_setSelectItem__Fi(i);
    }
}

void dSv_player_get_item_c::init(void) {
    for (int i = 0; i < 8; i++) {
        mPauseMenuBitFields[i] = 0;
    }
}

// this is a few instructions off
#ifdef NONMATCHING
void dSv_player_get_item_c::onFirstBit(u8 i_itemno) {
    int tmp = (int)i_itemno;
    int tmp2 = (i_itemno >> 3) & 0xE0;
    // int uVar1 = ;
    mPauseMenuBitFields[tmp2] |= 1 << (tmp & 0x1F);
}
#else
asm void dSv_player_get_item_c::onFirstBit(u8) {
    nofralloc
#include "d/d_save/d_save/asm/func_80033E60.s"
}
#endif

asm void dSv_player_get_item_c::offFirstBit(u8) {
    nofralloc
#include "d/d_save/d_save/asm/func_80033E94.s"
}

asm BOOL dSv_player_get_item_c::isFirstBit(u8) const {
    nofralloc
#include "d/d_save/d_save/asm/func_80033EC8.s"
}

void dSv_player_item_record_c::init(void) {
    mBow = 0;

    for (int i = 0; i < 3; i++) {
        mBombBags[i] = 0;
    }

    for (int i = 0; i < 4; i++) {
        mBottles[i] = 0;
    }

    mSlingshot = 0;

    for (int i = 0; i < 3; i++) {
        unk5[i] = 0;
    }
}

void dSv_player_item_record_c::setBombNum(u8 i_bagIdx, u8 bag_id) {
    mBombBags[i_bagIdx] = bag_id;
}

u8 dSv_player_item_record_c::getBombNum(u8 i_bagIdx) const {
    return mBombBags[i_bagIdx];
}

void dSv_player_item_record_c::setBottleNum(u8 i_bottleIdx, u8 bottle_num) {
    mBottles[i_bottleIdx] = bottle_num;
}

u8 dSv_player_item_record_c::addBottleNum(u8 i_bottleIdx, s16 param_2) {
    int iVar3 = mBottles[i_bottleIdx] + param_2;

    dComIfGs_getItem((u8)(i_bottleIdx + 0xB), true);

    if (iVar3 < 0) {
        mBottles[i_bottleIdx] = 0;
    } else if (iVar3 > dComIfGs_getBottleMax__Fv()) {
        mBottles[i_bottleIdx] = dComIfGs_getBottleMax__Fv();
    } else {
        mBottles[i_bottleIdx] = iVar3;
    }
    return mBottles[i_bottleIdx];
}

u8 dSv_player_item_record_c::getBottleNum(u8 i_bottleIdx) const {
    return mBottles[i_bottleIdx];
}

void dSv_player_item_max_c::init(void) {
    for (int i = 0; i < 7; i++) {
        mItemCapacities[i] = 30;
    }
    setBombNum(NORMAL_BOMB, 30);
    setBombNum(WATER_BOMB, 15);
    setBombNum(POKE_BOMB, 10);
    mItemCapacities[7] = 0;
}

void dSv_player_item_max_c::setBombNum(u8 bomb_id, u8 bomb_max) {
    switch (bomb_id) {
    case NORMAL_BOMB:
        mItemCapacities[1] = bomb_max;
        return;
    case WATER_BOMB:
        mItemCapacities[2] = bomb_max;
        return;
    case POKE_BOMB:
        mItemCapacities[6] = bomb_max;
        return;
    }
}

u8 dSv_player_item_max_c::getBombNum(u8 param_1) const {
    u8 iVar3;

    iVar3 = 0x1;
    if (dComIfGs_isItemFirstBit(BOMB_BAG_LV2)) {
        iVar3 = 0x2;
    }

    switch (param_1) {
    case NORMAL_BOMB:
        return (u8)(mItemCapacities[0x1] * iVar3);
    case WATER_BOMB:
        return (u8)(mItemCapacities[0x2] * iVar3);
    case POKE_BOMB:
        return (u8)(mItemCapacities[0x6] * iVar3);
    default:
        return 0;
    }
}

void dSv_player_collect_c::init(void) {
    for (int i = 0; i < 8; i++) {
        unk0[i] = 0;
    }

    unk8 = 0;
    mCrystal = 0;
    mMirror = 0;
    unk11 = 0xFF;
    mPoeCount = 0;
}

void dSv_player_collect_c::setCollect(int param_1, u8 i_item) {
    unk0[param_1] |= (u8)(1 << i_item);
}

BOOL dSv_player_collect_c::isCollect(int param_1, u8 i_item) const {
    return unk0[param_1] & (u8)(1 << i_item) ? TRUE : FALSE;
}

void dSv_player_collect_c::onCollectCrystal(u8 i_item) {
    mCrystal |= (u8)(1 << i_item);
}

BOOL dSv_player_collect_c::isCollectCrystal(u8 i_item) const {
    return mCrystal & (u8)(1 << i_item) ? TRUE : FALSE;
}

void dSv_player_collect_c::onCollectMirror(u8 i_item) {
    mMirror |= (u8)(1 << i_item);
}

BOOL dSv_player_collect_c::isCollectMirror(u8 i_item) const {
    return mMirror & (u8)(1 << i_item) ? TRUE : FALSE;
}

void dSv_player_wolf_c::init(void) {
    for (int i = 0; i < 3; i++) {
        unk0[i] = 0;
    }

    unk3 = 0;
}

void dSv_light_drop_c::init(void) {
    for (int i = 0; i < 4; i++) {
        mLightDropCounts[i] = 0;
    }

    mLightDropGetFlag = 0;

    for (int i = 0; i < 3; i++) {
        unk5[i] = 0;
    }
}

void dSv_light_drop_c::setLightDropNum(u8 i_nowLevel, u8 param_2) {
    if ((i_nowLevel < LIGHT_DROP_STAGE) || (i_nowLevel > 6)) {
        mLightDropCounts[i_nowLevel] = param_2;
    }
}

u8 dSv_light_drop_c::getLightDropNum(u8 i_nowLevel) const {
    if ((i_nowLevel >= LIGHT_DROP_STAGE) && (i_nowLevel <= 6)) {
        return 0;
    }
    return mLightDropCounts[i_nowLevel];
}

void dSv_light_drop_c::onLightDropGetFlag(u8 i_nowLevel) {
    if ((i_nowLevel < LIGHT_DROP_STAGE) || (i_nowLevel > 6)) {
        mLightDropGetFlag |= (u8)(1 << i_nowLevel);
    }
}

BOOL dSv_light_drop_c::isLightDropGetFlag(u8 i_nowLevel) const {
    if ((i_nowLevel >= LIGHT_DROP_STAGE) && (i_nowLevel <= 6)) {
        return 0;
    }
    return mLightDropGetFlag & (u8)(1 << i_nowLevel) ? TRUE : FALSE;
}

void dSv_letter_info_c::init(void) {
    for (int i = 0; i < 2; i++) {
        mLetterGetBitfields[i] = 0;
        mLetterReadBitfields[i] = 0;
    }

    for (int i = 0; i < LETTER_INFO_BIT; i++) {
        unk16[i] = 0;
    }
}

void dSv_letter_info_c::onLetterGetFlag(int i_no) {
    mLetterGetBitfields[i_no >> 0x5] |= 0x1 << (i_no & 0x1F);
}

BOOL dSv_letter_info_c::isLetterGetFlag(int i_no) const {
    return mLetterGetBitfields[i_no >> 0x5] & (1 << (i_no & 0x1F)) ? TRUE : FALSE;
}

void dSv_letter_info_c::onLetterReadFlag(int i_no) {
    mLetterReadBitfields[i_no >> 0x5] |= 0x1 << (i_no & 0x1F);
}

BOOL dSv_letter_info_c::isLetterReadFlag(int i_no) const {
    return mLetterReadBitfields[i_no >> 5] & 1 << (i_no & 0x1F) ? TRUE : FALSE;
}

void dSv_fishing_info_c::init(void) {
    for (int i = 0; i < 16; i++) {
        mFishCount[i] = 0;
        unk32[i] = 0;
    }
}

void dSv_fishing_info_c::addFishCount(u8 fish_index) {
    if (mFishCount[fish_index] < 999) {
        mFishCount[fish_index] += 1;
    }
}

// a few instructions off
#ifdef NONMATCHING
void dSv_player_info_c::init(void) {
    unsigned long a = 0x382;
    unsigned long b = 0x383;

    JMSMesgEntry_c* c = 0;
    JMSMesgEntry_c* d = 0;

    d_meter2_info::dMeter2Info_c ok;

    ok.getString(a, (char*)link_name, c);
    ok.getString(b, (char*)epona_name, d);

    unk4 = 0;
    unk0 = 0;
    unk12 = 0;
    unk8 = 0;
    unk16 = 0;
    unk18 = 0;
    unk54 = 0;

    for (int i = 0; i < 5; i++) {
        unk55[i] = 0;
    }
}
#else
asm void dSv_player_info_c::init(void) {
    nofralloc
#include "d/d_save/d_save/asm/func_80034518.s"
}
#endif

void dSv_player_config_c::init(void) {
    u32 os_mSoundMode;

    unk0 = 1;
    os_mSoundMode = OSGetSoundMode();
    if (os_mSoundMode == SOUND_MODE_MONO) {
        mSoundMode = SOUND_MODE_MONO;
        lbl_80451368->setOutputMode(SOUND_MODE_MONO);
    } else {
        mSoundMode = SOUND_MODE_STEREO;
        lbl_80451368->setOutputMode(SOUND_MODE_STEREO);
    }

    unk2 = 0;
    mVibrationStatus = 1;
    unk4 = 0;
    unk5 = 0;
    unk9 = 0;
    unk6 = 0x15e;
    unk8 = 0;
    unk10 = 0;
    unk11 = 1;
}

u32 dSv_player_config_c::checkVibration(void) const {
    return _sRumbleSupported & 0x80000000 ? dComIfGp_getNowVibration() : 0;
}

u8 dSv_player_config_c::getSound(void) {
    return mSoundMode;
}

void dSv_player_config_c::setSound(u8 i_mSoundMode) {
    mSoundMode = i_mSoundMode;
}

u8 dSv_player_config_c::getVibration(void) {
    return mVibrationStatus;
}

void dSv_player_config_c::setVibration(u8 i_mVibrationStatus) {
    mVibrationStatus = i_mVibrationStatus;
}

void dSv_player_c::init(void) {
    player_status_a.init();
    player_status_b.init();
    horse_place.init();
    player_return.init();
    player_last_field.init();
    player_last_mark.init();
    player_item.init();
    player_get_item.init();
    player_item_record.init();
    player_item_max.init();
    player_collect.init();
    player_wolf.init();
    light_drop.init();
    letter_info.init();
    fishing_info.init();
    mPlayerInfo.init();
    player_config.init();
}

void dSv_memBit_c::init(void) {
    for (int i = 0; i < 2; i++) {
        area_flags_bitfields1[i] = 0;
    }

    for (int i = 0; i < 4; i++) {
        area_flags_bitfields2[i] = 0;
    }

    rupee_flags_bitfields = 0;
    small_key_flags = 0;
    dungeons_flags = 0;
}

void dSv_memBit_c::onTbox(int i_no) {
    area_flags_bitfields1[i_no >> 5] |= 1 << (i_no & 0x1F);
}

void dSv_memBit_c::offTbox(int i_no) {
    area_flags_bitfields1[i_no >> 5] &= ~(1 << (i_no & 0x1F));
}

BOOL dSv_memBit_c::isTbox(int i_no) const {
    return 1 << (i_no & 0x1f) & area_flags_bitfields1[i_no >> 0x5] ? TRUE : FALSE;
}

void dSv_memBit_c::onSwitch(int i_no) {
    (area_flags_bitfields1 + (i_no >> 0x5))[0x2] |= 0x1 << (i_no & 0x1F);
}
void dSv_memBit_c::offSwitch(int i_no) {
    (area_flags_bitfields1 + (i_no >> 0x5))[0x2] &= ~(0x1 << (i_no & 0x1F));
}

BOOL dSv_memBit_c::isSwitch(int i_no) const {
    return (area_flags_bitfields2[i_no >> 0x5] & 0x1 << (i_no & 0x1F)) ? TRUE : FALSE;
}

// instruction in wrong place
#ifdef NONMATCHING
BOOL dSv_memBit_c::revSwitch(int i_no) {
    unsigned int tmp = 1 << (i_no & 0x1F);
    (area_flags_bitfields1 + (i_no >> 0x5))[0x2] ^= tmp;
    return (area_flags_bitfields1 + (i_no >> 0x5))[0x2] & tmp ? TRUE : FALSE;
}
#else
asm BOOL dSv_memBit_c::revSwitch(int) {
    nofralloc
#include "d/d_save/d_save/asm/func_8003488C.s"
}
#endif

void dSv_memBit_c::onItem(int i_no) {
    (area_flags_bitfields1 + (i_no >> 0x5))[0x6] |= 0x1 << (i_no & 0x1F);
}

BOOL dSv_memBit_c::isItem(int i_no) const {
    return (&rupee_flags_bitfields)[i_no >> 0x5] & 0x1 << (i_no & 0x1F) ? TRUE : FALSE;
}

void dSv_memBit_c::onDungeonItem(int i_no) {
    dungeons_flags |= (u8)(1 << i_no);
}

bool dSv_memBit_c::isDungeonItem(int i_no) const {
    return dungeons_flags & (u8)(1 << i_no) ? true : false;
}

void dSv_event_c::init(void) {
    for (int i = 0; i < MAX_EVENTS; i++) {
        events[i] = 0;
    }
    setInitEventBit__Fv();
}

void dSv_event_c::onEventBit(u16 i_no) {
    events[(i_no >> 8)] |= (u8)i_no;
}

void dSv_event_c::offEventBit(u16 i_no) {
    events[(i_no >> 8)] &= ~(u8)i_no;
}

BOOL dSv_event_c::isEventBit(u16 i_no) const {
    return events[(i_no >> 8)] & (i_no & 0xFF) ? TRUE : FALSE;
}

void dSv_event_c::setEventReg(u16 param_1, u8 param_2) {
    u8 uVar1 = (param_1 >> 8);
    events[uVar1] &= ~(u8)param_1;
    events[uVar1] |= param_2;
}

u8 dSv_event_c::getEventReg(u16 param_1) const {
    return (u8)param_1 & events[param_1 >> 8];
}

void dSv_MiniGame_c::init(void) {
    unk0 = 0;
    for (int i = 0; i < 3; i++) {
        unk1[i] = 0;
    }
    unk4 = 120000;
    unk8 = 0;
    unk12 = 0;
    unk16 = 0;
    unk20 = 0;
}

void dSv_memory_c::init(void) {
    temp_flags.init();
}

void dSv_memory2_c::init(void) {
    for (int i = 0; i < 2; i++) {
        unk0[i] = 0;
    }
}

void dSv_memory2_c::onVisitedRoom(int i_no) {
    unk0[i_no >> 5] |= 1 << (i_no & 0x1F);
}

void dSv_memory2_c::offVisitedRoom(int i_no) {
    unk0[i_no >> 5] &= ~(1 << (i_no & 0x1F));
}

BOOL dSv_memory2_c::isVisitedRoom(int param_1) {
    return (1 << (param_1 & 0x1F) & unk0[param_1 >> 5]) ? TRUE : FALSE;
}

bool dSv_danBit_c::init(s8 i_stage) {
    if (i_stage != mStageNum) {
        switch_bitfield[0] = 0;
        switch_bitfield[1] = 0;
        item_bitfield[0] = 0;
        item_bitfield[1] = 0;
        item_bitfield[2] = 0;
        item_bitfield[3] = 0;
        mStageNum = i_stage;
        unk1 = 0;

        for (int i = 0; i < 16; i++) {
            unk28[i] = 0xFFFF;
        }

        clrSaveFlag__12daObjCarry_cFv();
        return true;

    } else {
        setSaveFlag__12daObjCarry_cFv();
        return false;
    }
}

void dSv_danBit_c::onSwitch(int i_no) {
    switch_bitfield[i_no >> 5] |= 1 << (i_no & 0x1F);
}

void dSv_danBit_c::offSwitch(int i_no) {
    switch_bitfield[i_no >> 5] &= ~(1 << (i_no & 0x1F));
}

BOOL dSv_danBit_c::isSwitch(int i_no) const {
    return switch_bitfield[i_no >> 0x5] & (0x1 << (i_no & 0x1F)) ? TRUE : FALSE;
}

BOOL dSv_danBit_c::revSwitch(int i_no) {
    int uVar1 = 1 << (i_no & 0x1F);
    switch_bitfield[i_no >> 5] ^= uVar1;
    return switch_bitfield[i_no >> 5] & uVar1 ? TRUE : FALSE;
}

void dSv_danBit_c::onItem(int i_no) {
    item_bitfield[i_no >> 5] |= 1 << (i_no & 0x1F);
}

BOOL dSv_danBit_c::isItem(int i_no) const {
    return item_bitfield[i_no >> 5] & 1 << (i_no & 0x1F) ? TRUE : FALSE;
}

void dSv_zoneBit_c::init(void) {
    for (int i = 0; i < 2; i++) {
        switch_bitfield[i] = 0;
    }

    for (int i = 0; i < 2; i++) {
        item_bitfield[i] = 0;
    }

    room_switch = 0;
    room_item = 0;
}

void dSv_zoneBit_c::clearRoomSwitch(void) {
    room_switch = 0;
}

void dSv_zoneBit_c::clearRoomItem(void) {
    room_item = 0;
}

void dSv_zoneBit_c::onSwitch(int i_no) {
    switch_bitfield[i_no >> 4] |= (u16)(1 << (i_no & 0xF));
}

void dSv_zoneBit_c::offSwitch(int i_no) {
    switch_bitfield[i_no >> 4] &= ~(1 << (i_no & 0xF));
}

BOOL dSv_zoneBit_c::isSwitch(int i_no) const {
    return switch_bitfield[i_no >> 4] & 1 << (i_no & 0xF) ? TRUE : FALSE;
}

// instruction in wrong place
#ifdef NONMATCHING
BOOL dSv_zoneBit_c::revSwitch(int i_no) {
    int uVar1 = 1 << (i_no & 0xF);
    switch_bitfield[i_no >> 4] ^= uVar1;
    return switch_bitfield[i_no >> 4] & uVar1 ? TRUE : FALSE;
}
#else
asm BOOL dSv_zoneBit_c::revSwitch(int i_no) {
    nofralloc
#include "d/d_save/d_save/asm/func_80034D78.s"
}
#endif

void dSv_zoneBit_c::onOneSwitch(int i_no) {
    room_switch |= (u16)(1 << i_no);
}

void dSv_zoneBit_c::offOneSwitch(int i_no) {
    room_switch &= ~(1 << i_no);
}

BOOL dSv_zoneBit_c::isOneSwitch(int i_no) const {
    return room_switch & 1 << i_no ? TRUE : FALSE;
}

BOOL dSv_zoneBit_c::revOneSwitch(int i_no) {
    int iVar1 = 1 << i_no;
    room_switch ^= iVar1;
    return room_switch & iVar1 ? TRUE : FALSE;
}

void dSv_zoneBit_c::onItem(int i_no) {
    item_bitfield[i_no >> 4] |= (u16)(1 << (i_no & 0xF));
}

BOOL dSv_zoneBit_c::isItem(int i_no) const {
    return item_bitfield[i_no >> 4] & 1 << (i_no & 0xF) ? TRUE : FALSE;
}

void dSv_zoneBit_c::onOneItem(int i_no) {
    room_item |= (u16)(1 << i_no);
}

BOOL dSv_zoneBit_c::isOneItem(int i_no) const {
    return room_item & 1 << i_no ? TRUE : FALSE;
}

void dSv_zoneActor_c::init(void) {
    for (int i = 0; i < 4; i++) {
        actor_bitfield[i] = 0;
    }
}

void dSv_zoneActor_c::on(int i_id) {
    actor_bitfield[i_id >> 5] |= 1 << (i_id & 0x1F);
}

void dSv_zoneActor_c::off(int i_id) {
    actor_bitfield[i_id >> 5] &= ~(1 << (i_id & 0x1F));
}

BOOL dSv_zoneActor_c::is(int i_id) const {
    return actor_bitfield[i_id >> 5] & 1 << (i_id & 0x1F) ? TRUE : FALSE;
}

void dSv_zone_c::init(int param_1) {
    unk0 = param_1;
    zone_bit.init();
    zone_actor.init();
}

void dSv_restart_c::setRoom(const cXyz& i_position, s16 i_x_rotation, s8 param_3) {
    unk0 = param_3;
    mPosition = i_position;
    mXRotation = i_x_rotation;
}

void dSv_turnRestart_c::set(const cXyz& i_position, s16 i_x_rotation, s8 param_3, u32 param_4) {
    mPosition = i_position;
    mXRotation = i_x_rotation;
    unk18 = param_3;
    unk12 = param_4;
}

void dSv_info_c::init(void) {
    save_file.init();
    memory.init();
    dungeon_bit.init(-1);
    initZone();
    events.init();
}

void dSv_save_c::init(void) {
    player.init();
    for (int i = 0; i < 0x20; i++) {
        area_flags[i].init();
    }

    for (int i = 0; i < 0x40; i++) {
        unk_flags[i].init();
    }

    event_flags.init();
    minigame_flags.init();
}

dSv_memory2_c* dSv_save_c::getSave2(int i_stage2No) {
    return unk_flags + i_stage2No;
}

#ifdef NONMATCHING
void dSv_info_c::getSave(int i_stageNo) {
    for (int i = 0; i < dSv_save_c::STAGE_MAX; i++) {
    }
}
#else
asm void dSv_info_c::getSave(int i_stageNo) {
    nofralloc
#include "d/d_save/d_save/asm/func_800350BC.s"
}
#endif

#ifdef NONMATCHING
void dSv_info_c::getSave(int i_stageNo) {
    for (int i = 0; i < dSv_save_c::STAGE_MAX; i++) {
    }

    for (int i = 0; i < dSv_save_c::STAGE_MAX; i++) {
    }
}
#else
asm void dSv_info_c::putSave(int i_stageNo) {
    nofralloc
#include "d/d_save/d_save/asm/func_800350F0.s"
}
#endif

void dSv_info_c::initZone(void) {
    for (int i = 0; i < 0x20; i++) {
        zones[i].init(-1);
    }
}

u32 dSv_info_c::createZone(int param_1) {
    dSv_zone_c* zone = zones;
    for (int i = 0; i < 0x20; zone++, i++) {
        if (zone->getUnk0() < 0) {
            zone->init(param_1);
            return i;
        }
    }
    return -1;
}

void dSv_info_c::onSwitch(int i_no, int i_roomNo) {
    if ((i_no == -1) || (i_no == 0xFF)) {
        return;
    }

    if (i_no < 0x80) {
        memory.getTempFlags().onSwitch(i_no);
    } else if (i_no < 0xc0) {
        dungeon_bit.onSwitch(i_no - 0x80);
    } else {
        int zoneId = getZoneNo__20dStage_roomControl_cFi(i_roomNo);
        if (i_no < 0xE0) {
            zones[zoneId].getZoneBit().onSwitch(i_no - 0xC0);
        } else {
            zones[zoneId].getZoneBit().onOneSwitch(i_no - 0xE0);
        }
    }
}

void dSv_info_c::offSwitch(int i_no, int i_roomNo) {
    if ((i_no == -1) || (i_no == 0xFF)) {
        return;
    }

    if (i_no < 0x80) {
        memory.getTempFlags().offSwitch(i_no);
    } else if (i_no < 0xc0) {
        dungeon_bit.offSwitch(i_no - 0x80);
    } else {
        int zoneId = getZoneNo__20dStage_roomControl_cFi(i_roomNo);
        if (i_no < 0xE0) {
            zones[zoneId].getZoneBit().offSwitch(i_no - 0xC0);
        } else {
            zones[zoneId].getZoneBit().offOneSwitch(i_no - 0xE0);
        }
    }
}

BOOL dSv_info_c::isSwitch(int i_no, int i_roomNo) const {
    int value;
    if ((i_no == -1) || (i_no == 0xFF)) {
        return FALSE;
    }

    if (i_no < 0x80) {
        value = memory.getTempFlagsConst().isSwitch(i_no);
    } else if (i_no < 0xc0) {
        value = dungeon_bit.isSwitch(i_no - 0x80);
    } else {
        int zoneId = getZoneNo__20dStage_roomControl_cFi(i_roomNo);
        if ((zoneId < 0) || (zoneId >= 0x20)) {
            value = FALSE;
        } else {
            if (i_no < 0xE0) {
                value = zones[zoneId].getZoneBitConst().isSwitch(i_no - 0xC0);
            } else {
                value = zones[zoneId].getZoneBitConst().isOneSwitch(i_no - 0xE0);
            }
        }
    }
    return value;
}

BOOL dSv_info_c::revSwitch(int i_no, int i_roomNo) {
    int value;
    if ((i_no == -1) || (i_no == 0xFF)) {
        return FALSE;
    }

    if (i_no < 0x80) {
        value = memory.getTempFlags().revSwitch(i_no);
    } else if (i_no < 0xC0) {
        value = dungeon_bit.revSwitch(i_no - 0x80);
    } else {
        int zoneNo = getZoneNo__20dStage_roomControl_cFi(i_roomNo);
        if (i_no < 0xE0) {
            value = zones[zoneNo].getZoneBit().revSwitch(i_no - 0xC0);
        } else {
            value = zones[zoneNo].getZoneBit().revOneSwitch(i_no - 0xE0);
        }
    }

    return value;
}

void dSv_info_c::onItem(int i_no, int i_roomNo) {
    if ((i_no == -1) || (i_no == 0xFF)) {
        return;
    }

    if (i_no < 0x80) {
        dungeon_bit.onItem(i_no);
    } else if (i_no < 0xA0) {
        memory.getTempFlags().onItem(i_no - 0x80);
    } else {
        int zoneNo = getZoneNo__20dStage_roomControl_cFi(i_roomNo);
        if (i_no < 0xC0) {
            zones[zoneNo].getZoneBit().onItem(i_no - 0xA0);
        } else {
            zones[zoneNo].getZoneBit().onOneItem(i_no - 0xC0);
        }
    }
}

BOOL dSv_info_c::isItem(int i_no, int i_roomNo) const {
    int value;
    if ((i_no == -1) || (i_no == 0xFF)) {
        return FALSE;
    }

    if (i_no < 0x80) {
        value = dungeon_bit.isItem(i_no);
    } else if (i_no < 0xA0) {
        value = memory.getTempFlagsConst().isItem(i_no - 0x80);
    } else {
        int zoneNo = getZoneNo__20dStage_roomControl_cFi(i_roomNo);
        if (i_no < 0xC0) {
            value = zones[zoneNo].getZoneBitConst().isItem(i_no - 0xA0);
        } else {
            value = zones[zoneNo].getZoneBitConst().isOneItem(i_no - 0xC0);
        }
    }

    return value;
}

void dSv_info_c::onActor(int i_id, int i_roomNo) {
    if (i_id == -1 || i_id == dSv_zoneActor_c::ACTOR_MAX || i_roomNo == -1) {
        return;
    }

    int zoneNo = getZoneNo__20dStage_roomControl_cFi(i_roomNo);
    zones[zoneNo].getZoneActor().on(i_id);
}

void dSv_info_c::offActor(int i_id, int i_roomNo) {
    if (i_id == -1 || i_id == dSv_zoneActor_c::ACTOR_MAX || i_roomNo == -1) {
        return;
    }

    int zoneNo = getZoneNo__20dStage_roomControl_cFi(i_roomNo);
    zones[zoneNo].getZoneActor().off(i_id);
}

BOOL dSv_info_c::isActor(int i_id, int i_roomNo) const {
    if (i_id == -1 || i_id == dSv_zoneActor_c::ACTOR_MAX || i_roomNo == -1) {
        return FALSE;
    }

    int ActorZoneNo = getZoneNo__20dStage_roomControl_cFi(i_roomNo);
    return zones[ActorZoneNo].getZoneActorConst().is(i_id);
}

#ifdef NONMATCHING
extern u8 lbl_803F6094[0x10100];
void dSv_info_c::memory_to_card(char* param_1, int param_2) {
    BOOL bVar1 = FALSE;
    int uVar12 = 0;
    BOOL bVar6 = dComIfGs_isEventBit__FUs(0x1B08);
    if (!tmp) {
        BOOL bVar7 = dComIfGs_isEventBit__FUs(0x1B20);
        BOOL tmp = bVar7;
        bVar7 = dComIfGs_isEventBit__FUs(0x1B10);
        BOOL tmp2 = bVar7;
        dComIfGs_offEventBit(0x1B20);
        dComIfGs_offEventBit(0x1B10);
    }

    BOOL iVar4 = dComIfGs_isItemFirstBit(KANTERA);

    if (iVar4) {
        dComIfGs_setItem(SLOT_1, KANTERA);
        u16 current_lantern_oil = dComIfGs_getOil();
        u8 oil_gauge_backup = dMeter2Info_getOilGaugeBackUp();
        dComIfGs_setOil(oil_gauge_backup & 0xFFFF);
        bVar1 = TRUE;
    }

    int uVar3 = g_dComIfG_gameInfo + 0xF2C;
    int iVar2 = g_dComIfG_gameInfo + 0xF28;

    u32* ptr = lbl_803F6094 + 0x9f6c;
    OSTime time = OSGetTime();

    OSTime newTime = time >> 0x20;
    int newTime2 = newTime - uVar3;

    int newTime3 = newTime2 + g_dComIfG_gameInfo +
                   0xF30

                   int newTime4 = g_dComIfG_gameInfo + 0xF78

                                  s64 sVar13 = __div2i((int)((ulonglong)uVar8 >> 0x20), (int)uVar8,
                                                       0x0, _DAT_800000f8 >> 0x2);

    BOOL bVar7 =
}
#else
asm void dSv_info_c::memory_to_card(char*, int) {
    nofralloc
#include "d/d_save/d_save/asm/func_80035798.s"
}
#endif

asm void dSv_info_c::card_to_memory(char*, int) {
    nofralloc
#include "d/d_save/d_save/asm/func_80035A04.s"
}

asm void dSv_info_c::initdata_to_card(char*, int) {
    nofralloc
#include "d/d_save/d_save/asm/func_80035BD0.s"
}
