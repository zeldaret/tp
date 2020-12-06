#include "d/d_save/d_save/d_save.h"
#include "d/d_com/d_com_inf_game/d_com_inf_game.h"
#include "global.h"

u8 dSv_item_rename(u8 item_id) {
    switch (item_id) {
        case OIL_BOTTLE_2: return OIL_BOTTLE;
        case RED_BOTTLE_2: return RED_BOTTLE;
        case OIL2: return OIL;
        default: return item_id;
    }
}

void dSv_player_status_a_c::init() {
    this->max_health = 15;
    this->current_health = 12;
    this->current_rupees = 0;
    this->max_lantern_oil = 0;
    this->current_lantern_oil = 0;
    this->unk10 = 0;

    for (int i = 0; i < 4; i++) {
        this->select_item[i] = NO_ITEM;
        this->mix_item[i + 1] =  NO_ITEM;
        dComIfGp_setSelectItem(i);
    }

    for (int i = 0; i < 6; i++) {
        this->equipment[i] = 0;
    }

    this->equipment[0] = WEARS_CASUAL;
    this->equipment[1] = NO_ITEM;
    this->equipment[2] = NO_ITEM;
    this->equipment[3] = NO_ITEM;
    this->equipment[4] = NO_ITEM;
    this->current_wallet = WALLET;
    this->unk26 = 0;
    this->unk27 = 0;
    this->magic_flag = 0;
    this->unk29 = 0;
    this->unk30 = 0;

    for (int i = 0; i < 3; i++) {
        this->unk31[i] = 0;
    }
}

void dSv_player_status_a_c::setSelectItemIndex(signed int i_no, u8 item_index) {
    if (i_no < ITEM_XY_MAX_DUMMY / 2) {
        this->select_item[i_no] = item_index;
    }
}

u8 dSv_player_status_a_c::getSelectItemIndex(signed int i_no) const {
  if (i_no < ITEM_XY_MAX_DUMMY / 2) {
    return this->select_item[i_no];
  }
  return 0;
}

void dSv_player_status_a_c::setMixItemIndex(signed int i_no, u8 item_index) {
    if (i_no < ITEM_XY_MAX_DUMMY / 2) {
        this->mix_item[i_no + 1] = item_index;
    }
}

u8 dSv_player_status_a_c::getMixItemIndex(signed int i_no) const {
  if (i_no < ITEM_XY_MAX_DUMMY / 2) {
    return this->mix_item[i_no + 1];
  }
  return 0;
}

u16 dSv_player_status_a_c::getRupeeMax(void) const {
    if (current_wallet < 3) { // if you make this a default, it wont match. Compiler, pls.
        switch(current_wallet) {
            case WALLET: return 300;
            case BIG_WALLET: return 600;
            case GIANT_WALLET: return 1000;
        }
    }
    return 0;
}

int dSv_player_status_a_c::isMagicFlag(u8 i_magic) const {
    if (i_magic == 0) {
        return g_dComIfG_gameInfo.save_file.getEventFlags().isEventBit(0x2304);
    }
    return (this->magic_flag & (u8)(1 << i_magic)) ? 1 : 0;
}

void dSv_player_status_b_c::init() {
  
  this->unk4 = 0;
  this->unk0 = 0;
  this->transform_level_flag = 0;
  this->dark_clear_level_flag = 0;
  this->unk10 = 0;
  this->time_of_day = lbl_80451D58;
  this->unk16 = 0;

  for (int i = 0; i < 3; i++) {
      this->unk18[i] = 0;
  }
}

void dSv_player_status_b_c::onDarkClearLV(int flagOnOff) {
  this->dark_clear_level_flag |= (u8)(1 << flagOnOff);
}

bool dSv_player_status_b_c::isDarkClearLV(int unk) const {
    return this->dark_clear_level_flag & (u8)(1 << unk) ? true : false;
}

void dSv_player_status_b_c::onTransformLV(int flagOnOff) {
    this->transform_level_flag |= (u8)(1 << flagOnOff);
}

bool dSv_player_status_b_c::isTransformLV(int unk) const {
    return this->transform_level_flag & (u8)(1 << unk) ? true : false;
}
//extern u8 lbl_80379234[16];
void dSv_horse_place_c::init(void) {
    float position_val;
    char* default_stage;

    default_stage = strcpy((char*)current_stage, (char*)lbl_80379234);
    position_val = lbl_80451D5C;
    this->position.x = lbl_80451D5C;
    this->position.y = position_val;
    this->position.z = position_val;
    this->angle = 0;
    this->spawn_id = 0;
    this->room_id = 0;
}

void dSv_horse_place_c::set(const char* i_name, const cXyz& i_position, short i_angle, signed char i_room_id) {
  strcpy((char*)current_stage, i_name);
  this->position.x = i_position.x;
  this->position.y = i_position.y;
  this->position.z = i_position.z;
  this->angle = i_angle;
  this->room_id = i_room_id;
}

void dSv_player_return_place_c::init(void) {
    strcpy((char*)current_stage,(char*)lbl_80379234+1);
    this->room_id = 1;
    this->spawn_id = 0;
    this->unk10 = 21;
    this->unk11 = 0;
}

void dSv_player_return_place_c::set(const char* i_name, s8 i_room_id, u8 i_spawn_id) {
    strcpy((char*)current_stage, i_name);
    this->room_id = i_room_id;
    this->spawn_id = i_spawn_id;
}

void dSv_player_field_last_stay_info_c::init() {
    float position_val;

    strcpy((char*)last_stage, (char*)lbl_80379234);
    position_val = lbl_80451D5C;

    this->last_position.x = lbl_80451D5C;
    this->last_position.y = position_val;
    this->last_position.z = position_val;
    this->last_angle = 0;
    this->last_spawn_id = 0;
    this->last_room_id = 1;
    this->unk24 = 0;
    this->last_region = 0;

    for (int i = 0; i < 2; i++) {
        this->unk26[i] = 0;
    }
}

void dSv_player_field_last_stay_info_c::set(const char* i_name, const cXyz& i_last_position, short i_last_angle, signed char i_last_spawn_id, u8 i_last_room_id) {
    strcpy((char*)last_stage, i_name);

    this->last_position.x = i_last_position.x;
    this->last_position.y = i_last_position.y;
    this->last_position.z = i_last_position.z;
    this->last_angle = i_last_angle;
    this->last_spawn_id = i_last_spawn_id;
    this->last_room_id = i_last_room_id;
}

void dSv_player_field_last_stay_info_c::onRegionBit(int i_region_bit) {
    if (i_region_bit < 0) {
        return;
    }
    if (8 <= i_region_bit) {
        return;
    }
    this->last_region |= (u8)(1 << i_region_bit);
}

bool dSv_player_field_last_stay_info_c::isRegionBit(int param_1) const {
  if ((param_1 >= 0) && (param_1 < 8)) {
      return (last_region & (u8)(1 << param_1)) ? true : false;
  }
  return false;
}

void dSv_player_last_mark_info_c::init(void) {
  float position;
  
  strcpy((char*)ooccoo_stage,(char*)lbl_80379234);
  position = lbl_80451D5C;
  this->ooccoo_position.x = lbl_80451D5C;
  this->ooccoo_position.y = position;
  this->ooccoo_position.z = position;
  this->ooccoo_angle = 0;
  this->ooccoo_room_id = 0;
  this->ooccoo_spawn_id = 0;
  this->unk24 = -1;
 
  for (int i = 0; i < 3; i++) {
    this->unk25[i] = 0;
  }
}

void dSv_player_last_mark_info_c::setWarpItemData(const char* i_ooccoo_stage, const cXyz& i_ooccoo_position, short i_ooccoo_angle, s8 i_ooccoo_room_id, u8 unk1, u8 unk2) {
  strcpy((char*)ooccoo_stage,i_ooccoo_stage);
  this->ooccoo_position.x = i_ooccoo_position.x;
  this->ooccoo_position.y = i_ooccoo_position.y;
  this->ooccoo_position.z = i_ooccoo_position.z;
  this->ooccoo_angle = i_ooccoo_angle;
  this->ooccoo_room_id = i_ooccoo_room_id;
}

void dSv_player_item_c::init(void) {
  for (int i = 0; i < 24; i++) {
    this->items[i] = NO_ITEM;
    this->item_slots[i] = NO_ITEM;
  }
}

void dSv_player_item_c::setItem(int current_items_index, u8 new_items_index) {

    if (current_items_index < MAX_ITEM_SLOTS) {
        this->items[current_items_index] = new_items_index;
        this->setLineUpItem();
    }

    int select_item_index = DEFAULT_SELECT_ITEM_INDEX;

    do {
        if (current_items_index == g_dComIfG_gameInfo.save_file.getPlayerStatusA().getSelectItemIndex(select_item_index)) {
            dComIfGp_setSelectItem(select_item_index);
        }
        select_item_index++;
    } while (select_item_index < MAX_SELECT_ITEM);
}

#ifdef NONMATCHING
u8 dSv_player_item_c::getItem(int param_1, bool param_2) const {
    int IVar1;
    int IVar2;
    u8 current_select_item_index;

    if (param_1 < 0x18) {
        if (param_2 != false) {
            for (int select_item_index = 0; select_item_index < 2; select_item_index++) {
                current_select_item_index = getSelectItemIndex(select_item_index);
                if (((param_1 == (current_select_item_index)) ||
                    (current_select_item_index = dComIfGs_getMixItemIndex(select_item_index), param_1 == (current_select_item_index))) &&
                    (current_select_item_index = dComIfGs_getMixItemIndex(select_item_index), (current_select_item_index) != NO_ITEM)) {
                    current_select_item_index = getSelectItemIndex(select_item_index);
                    IVar1 = items[current_select_item_index];
                    current_select_item_index = dComIfGs_getMixItemIndex(select_item_index);
                    IVar2 = items[current_select_item_index];
                    if (((IVar1 == BOW) && (IVar2 == NORMAL_BOMB)) ||
                        ((IVar2 == BOW && (IVar1 == NORMAL_BOMB)))) {
                        return 0x59;
                    }
                    if (((IVar1 == BOW) && (IVar2 == WATER_BOMB)) ||
                        ((IVar2 == BOW && (IVar1 == WATER_BOMB)))) {
                        return 0x59;
                    }
                    if (((IVar1 == BOW) && (IVar2 == POKE_BOMB)) ||
                        ((IVar2 == BOW && (IVar1 == POKE_BOMB)))) {
                        return 0x59;
                    }
                    if (((IVar1 == BOW) && (IVar2 == HAWK_EYE)) ||
                        ((IVar2 == BOW && (IVar1 == HAWK_EYE)))) {
                        return 0x5a;
                    }
                    if (((IVar1 == FISHING_ROD_1) && (IVar2 == BEE_CHILD)) ||
                        ((IVar2 == FISHING_ROD_1 && (IVar1 == BEE_CHILD)))) {
                        return 0x5b;
                    }
                    if (((IVar1 == FISHING_ROD_1) && (IVar2 == ZORAS_JEWEL)) ||
                        ((IVar2 == FISHING_ROD_1 && (IVar1 == ZORAS_JEWEL)))) {
                        return 0x5c;
                    }
                    if (((IVar1 == FISHING_ROD_1) && (IVar2 == WORM)) ||
                        ((IVar2 == FISHING_ROD_1 && (IVar1 == WORM)))) {
                        return 0x5d;
                    }
                    if (((select_item_index == 0x3) &&
                         (current_select_item_index = getSelectItemIndex(0x3),
                          (current_select_item_index & 0xff) == 0x0)) &&
                        (current_select_item_index = dComIfGs_getMixItemIndex(0x3), (current_select_item_index & 0xff) == 0x0)) {
                        dComIfGs_setSelectItemIndex(0x3, -0x1);
                        dComIfGs_setMixItemIndex(0x3, -0x1);
                        return 0xff;
                    }
                    OSReport_Error(lbl_8037923d, (unsigned int)IVar1, (unsigned int)IVar2);
                }
            }
        }
        current_select_item_index = (unsigned int)items[param_1];
    } else {
        current_select_item_index = NO_ITEM;
    }
    return current_select_item_index;
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
    u8* i_item_lst;

    for (int i = 0; i < 24; i++) {
        item_slots[i] = 0xFF;
    }

    i_item_lst = lbl_803A7270;

    for (int i = 0; i < 23; i++) {
        if (items[*i_item_lst] != 0xFF) {
            item_slots[i] = *i_item_lst;
        }
        i_item_lst++;
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
        return this->item_slots[slot_number];
    }
    return NO_ITEM;
}

#ifdef NONMATCHING
void dSv_player_item_c::setBottleItemIn(u8 i_item_id_1, u8 i_item_id_2){
    u8 current_item_index;
    u8 new_item_index;

    current_item_index = dSv_item_rename(i_item_id_1);
    new_item_index = dSv_item_rename(i_item_id_2);
    
    for (int i = 0; i < 4; i++) {
        // sanitize input to make sure it's only a bottle
        if (current_item_index == items[i+11]) {
            setItem(i+11,new_item_index);
            // if hotsprings water, turn on the timer
            if (new_item_index == 107) {
                setHotSpringTimer(i+11);
            }
            for (int j = 0; j < 4; j++) {
                j = getSelectItemIndex(i);
                if (i+11 == j) {
                    dComIfGp_setSelectItem(j);
                }
            }
        }
    }
}
#else
asm void dSv_player_item_c::setBottleItemIn(u8 i_item_id_1, u8 i_item_id_2){
    nofralloc 
    #include "d/d_save/d_save/asm/func_80033370.s"
}
#endif

// this is 1 instruction off
#ifdef NONMATCHING
void dSv_player_item_c::setEmptyBottleItemIn(u8 i_item_id){
    u8 item_id = (dSv_item_rename(i_item_id));
    setBottleItemIn(96,item_id);
}
#else
asm void dSv_player_item_c::setEmptyBottleItemIn(u8 i_item_id){
    nofralloc
    #include "d/d_save/d_save/asm/func_80033450.s"
}
#endif

asm void dSv_player_item_c::setEmptyBottle(void) {
    nofralloc 
    #include "d/d_save/d_save/asm/func_80033494.s"
}

asm void dSv_player_item_c::setEmptyBottle(u8){
    nofralloc
    #include "d/d_save/d_save/asm/func_80033514.s" 
}

asm void dSv_player_item_c::setEquipBottleItemIn(u8, u8) {
    nofralloc
    #include "d/d_save/d_save/asm/func_80033598.s"
}

void dSv_player_item_c::setEquipBottleItemEmpty(u8 selected_index) {
    setEquipBottleItemIn(selected_index,EMPTY_BOTTLE);
}

u8 dSv_player_item_c::checkBottle(u8 i_item_id){
    u8 item_id;
    u8 num_bottles = 0;

    item_id = dSv_item_rename(i_item_id);
    for (int i = 0; i < BOTTLE_MAX; i++) {
        if (item_id == items[i+0xb]) {
            num_bottles++;
        }
    }
    return num_bottles;
}

asm u8 dSv_player_item_c::checkInsectBottle(void){
    nofralloc
    #include "d/d_save/d_save/asm/func_80033754.s"
}

u8 dSv_player_item_c::checkEmptyBottle(void) {
    u8 num = 0;

    for(int i = 0; i < BOTTLE_MAX; i++) {
        if(items[i+0xb] == EMPTY_BOTTLE) {
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

void dSv_player_item_c::setEmptyBombBagItemIn(u8 param_1,bool param_2) {
    setBombBagItemIn(BOMB_BAG_LV1,param_1,param_2);
}

void dSv_player_item_c::setEmptyBombBagItemIn(u8 param_1,u8 param_2, bool param_3) {
    setBombBagItemIn(BOMB_BAG_LV1,param_1,param_2,param_3);
}

// this is a few instructions off
#ifdef NONMATCHING
void dSv_player_item_c::setEmptyBombBag(void) {

  int current_item_index;
  u8 uVar1;
  
  for (int i = 0; i < 3; i++) {
    current_item_index = (u8)(i + 15);
    uVar1 = getItem(current_item_index,true);

    if (uVar1 == 0xff) {
      setItem(current_item_index,80);
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

asm void dSv_player_item_c::setEmptyBombBag(u8, u8) {
    nofralloc
    #include "d/d_save/d_save/asm/func_80033B08.s"
}

u8 dSv_player_item_c::checkBombBag(u8 param_1) {
    u8 ok = 0;

    for (int i = 0; i < 3; i++) {
        if (param_1 == this->items[i + 15]) {
            ok++;
        }
    }
    return ok;
}

asm void dSv_player_item_c::setWarashibeItem(u8) {
    nofralloc
    #include "d/d_save/d_save/asm/func_80033C2C.s"
}

void dSv_player_item_c::setRodTypeLevelUp(void) {
    int current_fishing_rod_item_id = this->items[0x14];

    switch (current_fishing_rod_item_id) {
        case BEE_ROD: {
            this->items[0x14] = JEWEL_BEE_ROD;
            break;
        }
        case WORM_ROD: {
            this->items[0x14] = JEWEL_WORM_ROD; 
            break;
        }
        case FISHING_ROD_1: {
            this->items[0x14] = JEWEL_ROD;
            break;
        }
    }

    for (int i = 0; i < 4; i++) {
        dComIfGp_setSelectItem(i);
    }
}

// this is a few instructions off
#ifdef NONMATCHING
void dSv_player_item_c::setBaitItem(u8 param_1) {
    switch (param_1) {
        case BEE_CHILD: {
            isFirstBit(61) ? this->items[0x14] = JEWEL_BEE_ROD : this->items[0x14] = BEE_ROD;
            break;
        }
        case WORM: {
            isFirstBit(61) ? this->items[0x14] = JEWEL_WORM_ROD : this->items[0x14] = WORM_ROD;
            break;
        }
        case NO_ITEM: {
            isFirstBit(61) ? this->items[0x14] = JEWEL_ROD : this->items[0x14] = FISHING_ROD_1;
            break;
        }
    }

    for (int i = 0; i < 4; i++) {
        dComIfGp_setSelectItem(i);
    }
}
#else
asm void dSv_player_item_c::setBaitItem(u8 param_1) {
    nofralloc
    #include "d/d_save/d_save/asm/func_80033D40.s"
}
#endif

void dSv_player_get_item_c::init(void) {
    for (int i = 0; i < 8; i++) {
        this->pause_menu_bit_fields[i] = 0;
    }
}

// this is a few instructions off
#ifdef NONMATCHING
void dSv_player_get_item_c::onFirstBit(u8 i_itemno) {
    int uVar1 = ((int)i_itemno & 0xe0) >> 0x3;
    this->pause_menu_bit_fields[uVar1] |= (u32)(1 << (i_itemno & 0x1F));
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

asm bool dSv_player_get_item_c::isFirstBit(u8) const {
    nofralloc
    #include "d/d_save/d_save/asm/func_80033EC8.s"
}

void dSv_player_item_record_c::init(void) {
    this->bow = 0;
    
    for (int i = 0; i < 3; i++) {
        this->bomb_bags[i] = 0;
    }

    for (int i = 0; i < 4; i++) {
        this->bottles[i] = 0;
    }

    this->slingshot = 0;

    for (int i = 0; i < 3; i++) {
        this->unk5[i] = 0;
    }
}

void dSv_player_item_record_c::setBombNum(u8 i_bagIdx, u8 bag_id) {
    this->bomb_bags[i_bagIdx] = bag_id;
}

u8 dSv_player_item_record_c::getBombNum(u8 i_bagIdx) const {
    return this->bomb_bags[i_bagIdx];
}

void dSv_player_item_record_c::setBottleNum(u8 i_bottleIdx, u8 bottle_num) {
    this->bottles[i_bottleIdx] = bottle_num;
}

#ifdef NONMATCHING
u8 dSv_player_item_record_c::addBottleNum(u8 i_bottleIdx, short param_2) {
    int iVar3 = this->bottles[i_bottleIdx] + param_2;

    dSv_player_item_c ok;

    ok.getItem((u8)(i_bottleIdx + 0xB),true);

    if (iVar3 < 0) {
        this->bottles[i_bottleIdx] = 0;
    } else if (iVar3 > dComIfGs_getBottleMax()) {
            this->bottles[i_bottleIdx] = dComIfGs_getBottleMax();
    } else {
            this->bottles[i_bottleIdx] = iVar3;
    }
    return this->bottles[i_bottleIdx];
}
#else
asm u8 dSv_player_item_record_c::addBottleNum(u8 i_bottleIdx, short param_2) {
    nofralloc
    #include "d/d_save/d_save/asm/func_80033F9C.s"
}
#endif

u8 dSv_player_item_record_c::getBottleNum(u8 i_bottleIdx) const {
    return this->bottles[i_bottleIdx];
}

void dSv_player_item_max_c::init(void) {

    for (int i = 0; i < 7; i++) {
        this->item_capacities[i] = 30;
    }
    setBombNum(NORMAL_BOMB,30);
    setBombNum(WATER_BOMB,15);
    setBombNum(POKE_BOMB,10);
    this->item_capacities[7] = 0;
}

void dSv_player_item_max_c::setBombNum(u8 bomb_id,u8 bomb_max) {
    switch (bomb_id) {
        case NORMAL_BOMB: this->item_capacities[1] = bomb_max; return;
        case WATER_BOMB: this->item_capacities[2] = bomb_max; return;
        case POKE_BOMB: this->item_capacities[6] = bomb_max; return;
    }
}

// this is close, the isFirstBit keeps screwing everything up :(
#ifdef NONMATCHING
u8 dSv_player_item_max_c::getBombNum(u8 param_1) const {
    u8 iVar3;
    
    iVar3 = 0x1;
    if (isFirstBit(79)) {
        iVar3 = 0x2;
    }

    switch (param_1) {
        case WATER_BOMB: return (u8)(this->bomb_bags_ammo_max[0x1] * iVar3);
        case NORMAL_BOMB: return (u8)(this->bomb_bags_ammo_max[0x1] * iVar3);
        case POKE_BOMB: return (u8)(this->unk_ammo_max[0x2] * iVar3);
        default: return 0;
    }
}
#else
asm u8 dSv_player_item_max_c::getBombNum(u8 param_1) const {
    nofralloc
    #include "d/d_save/d_save/asm/func_800340F8.s"
}
#endif

void dSv_player_collect_c::init(void) {

    for (int i = 0; i < 8; i++) {
        this->unk0[i] = 0;
    }
    
    this->unk8 = 0;
    this->crystal = 0;
    this->mirror = 0;
    this->unk11 = 0xFF;
    this->poe_count = 0;
}

void dSv_player_collect_c::setCollect(int param_1, u8 i_item) {
    this->unk0[param_1] |= (u8)(1 << i_item);
}

bool dSv_player_collect_c::isCollect(int param_1, u8 i_item) const {
   return this->unk0[param_1] & (u8)(1 << i_item) ? true : false;
}

void dSv_player_collect_c::onCollectCrystal(u8 i_item) {
    this->crystal |= (u8)(1 << i_item);  
}

bool dSv_player_collect_c::isCollectCrystal(u8 i_item) const {
    return this->crystal & (u8)(1 << i_item) ? true : false;
}

void dSv_player_collect_c::onCollectMirror(u8 i_item) {
    this->mirror |= (u8)(1 << i_item);  
}

bool dSv_player_collect_c::isCollectMirror(u8 i_item) const {
    return this->mirror & (u8)(1 << i_item) ? true : false;
}

void dSv_player_wolf_c::init(void) {
    for (int i = 0; i < 3; i++) {
        this->unk0[i] = 0;
    }

    this->unk3 = 0;
}

void dSv_light_drop_c::init(void) {
    for (int i = 0; i < 4; i++) {
        this->light_drop_counts[i] = 0;
    }

    this->light_drop_get_flag = 0;

    for (int i = 0; i < 3; i++) {
        this->unk5[i] = 0;
    }
}

void dSv_light_drop_c::setLightDropNum(u8 i_nowLevel,u8 param_2) {
    if ((i_nowLevel < LIGHT_DROP_STAGE) || (i_nowLevel > 6)) {
        this->light_drop_counts[i_nowLevel] = param_2;
    }
}

u8 dSv_light_drop_c::getLightDropNum(u8 i_nowLevel) const {
    if ((i_nowLevel >= LIGHT_DROP_STAGE) && (i_nowLevel <= 6)) {
        return 0;
    }
    return this->light_drop_counts[i_nowLevel];
}

void dSv_light_drop_c::onLightDropGetFlag(u8 i_nowLevel) {
    if ((i_nowLevel < LIGHT_DROP_STAGE) || (i_nowLevel > 6)) {
        this->light_drop_get_flag |= (u8)(1 << i_nowLevel);
    }
}

bool dSv_light_drop_c::isLightDropGetFlag(u8 i_nowLevel) const {
    if ((i_nowLevel >= LIGHT_DROP_STAGE) && (i_nowLevel <= 6)) {
        return 0;
    }
    return this->light_drop_get_flag & (u8)(1 << i_nowLevel) ? true : false;
}

void dSv_letter_info_c::init(void) {
    for (int i = 0; i < 2; i++) {
        this->letter_read_flags[i] = 0;
        this->letter_read_flags[i + 2] = 0;
    }

    for (int i = 0; i < LETTER_INFO_BIT; i++) {
        this->unk16[i] = 0;
    }
}

void dSv_letter_info_c::onLetterGetFlag(int i_no) {
    this->letter_read_flags[i_no >> 0x5] |= 0x1 << (i_no & 0x1F);
}

bool dSv_letter_info_c::isLetterGetFlag(int i_no) const {
    return this->letter_read_flags[i_no >> 0x5] & (1 << (i_no & 0x1F)) ? true : false;
}

void dSv_letter_info_c::onLetterReadFlag(int i_no) {
    (this->letter_read_flags + (i_no >> 0x5))[0x2] |= 0x1 << (i_no & 0x1F);
}

#ifdef NONMATCHING
bool dSv_letter_info_c::isLetterReadFlag(int i_no) const {
    u32 tmp = this->letter_read_flags[(i_no >> 5) + 2];
    int tmp2 = (1 << (i_no & 0x1F));
    return  tmp2 & tmp ? true : false;
}
#else
asm bool dSv_letter_info_c::isLetterReadFlag(int) const {
    nofralloc
    #include "d/d_save/d_save/asm/func_8003449C.s"
}
#endif

void dSv_fishing_info_c::init(void) {
    for (int i = 0; i < 16; i++) {
        this->fish_count[i] = 0;
        this->unk32[i] = 0;
    }
}

void dSv_fishing_info_c::addFishCount(u8 fish_index) {
    if (this->fish_count[fish_index] < 999) {
        this->fish_count[fish_index] += 1;
    }
}

// a few instructions off
#ifdef NONMATCHING
namespace d_meter2_info {
    class dMeter2Info_c {
        public:
        void getString(unsigned long, char*, JMSMesgEntry_c *);
    };
}

void dSv_player_info_c::init(void) {
    unsigned long a = 0x382;
    unsigned long b = 0x383;

    JMSMesgEntry_c* c = 0;
    JMSMesgEntry_c* d = 0;

    d_meter2_info::dMeter2Info_c ok;

    ok.getString(a,(char*)this->link_name,c);
    ok.getString(b,(char*)this->epona_name,d);

    this->unk4 = 0;
    this->unk0 = 0;
    this->unk12 = 0;
    this->unk8 = 0;
    this->unk16 = 0;
    this->unk18 = 0;
    this->unk54 = 0;

    for (int i = 0; i < 5; i++) {
        this->unk55[i] = 0;
    }
}
#else
asm void dSv_player_info_c::init(void) {
    nofralloc
    #include "d/d_save/d_save/asm/func_80034518.s"
}
#endif

void dSv_player_config_c::init(void) {
    OSSoundMode os_sound_mode;

    this->unk0 = 1;
    os_sound_mode = OSGetSoundMode();
    if (os_sound_mode == SOUND_MODE_MONO) {
        this->sound_mode = 0;
        Z2AudioMgr_NS_setOutputMode(lbl_80451368,0);
    } else {
        this->sound_mode = 1;
        Z2AudioMgr_NS_setOutputMode(lbl_80451368,1);
    }

    this->unk2 = 0;
    this->vibration_status = 1;
    this->unk4 = 0;
    this->unk5 = 0;
    this->unk9 = 0;
    this->unk6 = 0x15e;
    this->unk8 = 0;
    this->unk10 = 0;
    this->unk11 = 1;
}

// a few instructions off
#ifdef NONMATCHING
u32 dSv_player_config_c::checkVibration(void) const {
   return _sRumbleSupported & 0x80000000 ? getNowVibration() : 0;
}
#else
asm u32 dSv_player_config_c::checkVibration(void) const {
    nofralloc
    #include "d/d_save/d_save/asm/func_80034644.s"
}
#endif

u8 dSv_player_config_c::getSound(void) {
    return this->sound_mode;
}

void dSv_player_config_c::setSound(u8 i_sound_mode) {
    this->sound_mode = i_sound_mode;
}

u8 dSv_player_config_c::getVibration(void) {
    return this->vibration_status;
}

void dSv_player_config_c::setVibration(u8 i_vibration_status) {
    this->vibration_status = i_vibration_status;
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
    player_info.init();
    player_config.init();
}

void dSv_memBit_c::init(void) {
    for (int i = 0; i < 2; i++) {
        this->area_flags_bitfields1[i] = 0;
    }

    for (int i = 0; i < 4; i++) {
        this->area_flags_bitfields2[i] = 0;
    }

    this->rupee_flags_bitfields = 0;
    this->small_key_flags = 0;
    this->dungeons_flags = 0;
}

void dSv_memBit_c::onTbox(int i_no) {
    this->area_flags_bitfields1[i_no >> 5] |= 1 << (i_no  & 0x1F);
}

void dSv_memBit_c::offTbox(int i_no) {
    this->area_flags_bitfields1[i_no >> 5] &= ~(1 << (i_no  & 0x1F));
}

bool dSv_memBit_c::isTbox(int i_no) const {
     return 1 << (i_no & 0x1f) & this->area_flags_bitfields1[i_no >> 0x5] ?  true : false;
}

void dSv_memBit_c::onSwitch(int i_no) {
      (this->area_flags_bitfields1 + (i_no >> 0x5))[0x2] |= 0x1 << (i_no & 0x1F);
}
void dSv_memBit_c::offSwitch(int i_no) {
      (this->area_flags_bitfields1 + (i_no >> 0x5))[0x2] &= ~(0x1 << (i_no & 0x1F));
}

bool dSv_memBit_c::isSwitch(int i_no) const {
    return (this->area_flags_bitfields2[i_no >> 0x5] & 0x1 << (i_no & 0x1F)) ? true : false;
}

// instruction in wrong place
#ifdef NONMATCHING
bool dSv_memBit_c::revSwitch(int i_no) {
    int uVar2 = 0x1 << (i_no & 0x1F);
    u32* puVar1 = (i_no >> 0x5) + this->area_flags_bitfields1;
    puVar1[0x2] ^= uVar2;
    return puVar1[0x2] & uVar2 ? true : false;
}
#else
asm u8 dSv_memBit_c::revSwitch(int){
    nofralloc
    #include "d/d_save/d_save/asm/func_8003488C.s"
}
#endif

void dSv_memBit_c::onItem(int i_no) {
     (this->area_flags_bitfields1 + (i_no >> 0x5))[0x6] |= 0x1 << (i_no & 0x1F);
}

bool dSv_memBit_c::isItem(int i_no) const {
     return (&this->rupee_flags_bitfields)[i_no >> 0x5] & 0x1 << (i_no & 0x1F) ? true : false;
}

void dSv_memBit_c::onDungeonItem(int i_no) {
    this->dungeons_flags |= (u8)(1 << i_no);
}

bool dSv_memBit_c::isDungeonItem(int i_no) const {
    return this->dungeons_flags & (u8)(1 << i_no) ?  true : false;
}

void dSv_event_c::init(void) {
    for (int i = 0; i < 256; i++) {
        this->events[i] = 0;
    }
    setInitEventBit();
}

void dSv_event_c::onEventBit(u16 i_no) {
    this->events[(i_no >> 8)] |= (u8)i_no;
}

void dSv_event_c::offEventBit(u16 i_no) {
    this->events[(i_no >> 8)] &= ~(u8)i_no;
}

// (u8) cast doesn't work here, thank u metrowerks
int dSv_event_c::isEventBit(u16 i_no) const {
    return this->events[(i_no >> 8)] & (i_no & 0xFF) ? 1 : 0;
}

void dSv_event_c::setEventReg(u16 param_1, u8 param_2) {
    u8 uVar1 = (param_1 >> 8);
    this->events[uVar1] &= ~(u8)param_1;
    this->events[uVar1] |= param_2;
}

u8 dSv_event_c::getEventReg(u16 param_1) const {
    return (u8)param_1 & this->events[param_1 >> 8];
}

void dSv_MiniGame_c::init(void) {
    this->unk0 = 0;
    for (int i = 0; i < 3; i++) {
        this->unk1[i] = 0;
    }
    this->unk4 = 120000;
    this->unk8 = 0;
    this->unk12 = 0;
    this->unk16 = 0;
    this->unk20 = 0;
}

void dSv_memory_c::init(void) {
    temp_flags.init();
}

void dSv_memory2_c::init(void) {
    for (int i = 0; i < 2; i++) {
        this->unk0[i] = 0;
    }
}

void dSv_memory2_c::onVisitedRoom(int i_no) {
    this->unk0[i_no >> 5] |= 1 << (i_no & 0x1F); 
}

void dSv_memory2_c::offVisitedRoom(int i_no) {
    this->unk0[i_no >> 5] &= ~(1 << (i_no & 0x1F)); 
}

bool dSv_memory2_c::isVisitedRoom(int param_1) {
    return (1 << (param_1 & 0x1F) & this->unk0[param_1 >> 5]) ? true : false;
}

bool dSv_danBit_c::init(s8 i_stage) {
    if (i_stage != this->mStageNum) {
        this->switch_bitfield[0] = 0;
        this->switch_bitfield[1] = 0;
        this->item_bitfield[0] = 0;
        this->item_bitfield[1] = 0;
        this->item_bitfield[2] = 0;
        this->item_bitfield[3] = 0;
        this->mStageNum = i_stage;
        this->unk1 = 0;

        for (int i = 0; i < 16; i++) {
            this->unk28[i] = 0xFFFF;
        }

        daObjCarry_c_NS_clrSaveFlag();
        return true;

    } else {
        daObjCarry_c_NS_setSaveFlag();
        return false;
    }
}

void dSv_danBit_c::onSwitch(int i_no) {
    this->switch_bitfield[i_no >> 5] |= 1 << (i_no & 0x1F);
}

void dSv_danBit_c::offSwitch(int i_no) {
    this->switch_bitfield[i_no >> 5] &= ~(1 << (i_no & 0x1F));
}

bool dSv_danBit_c::isSwitch(int i_no) const {
    return this->switch_bitfield[i_no >> 0x5] & (0x1 << (i_no & 0x1F)) ? true : false;
}

bool dSv_danBit_c::revSwitch(int i_no) {
    int uVar1 = 1 << (i_no & 0x1F);
    this->switch_bitfield[i_no >> 5] ^= uVar1;
    return this->switch_bitfield[i_no >> 5] & uVar1 ? true : false;
}

void dSv_danBit_c::onItem(int i_no) {
    this->item_bitfield[i_no >> 5] |= 1 << (i_no & 0x1F);
}

bool dSv_danBit_c::isItem(int i_no) const {
    return this->item_bitfield[i_no >> 5] & 1 << (i_no & 0x1F) ? true : false;
}

void dSv_zoneBit_c::init(void) {
    for (int i = 0; i < 2; i++) {
        this->switch_bitfield[i] = 0;
    }
    

    for (int i = 0; i < 2; i++) {
        this->item_bitfield[i] = 0;
    }

    this->room_switch = 0;
    this->room_item = 0;
}

void dSv_zoneBit_c::clearRoomSwitch(void) {
    this->room_switch = 0;
}

void dSv_zoneBit_c::clearRoomItem(void) {
    this->room_item = 0;
}

void dSv_zoneBit_c::onSwitch(int i_no) {
    this->switch_bitfield[i_no >> 4] |= (u16)(1 << (i_no & 0xF));
}

void dSv_zoneBit_c::offSwitch(int i_no) {
    this->switch_bitfield[i_no >> 4] &= ~(1 << (i_no & 0xF));
}

bool dSv_zoneBit_c::isSwitch(int i_no) const {
    return this->switch_bitfield[i_no >> 4] & 1 << (i_no & 0xF) ?  true : false;
}

// instruction in wrong place
#ifdef NONMATCHING
bool dSv_zoneBit_c::revSwitch(int i_no) {
    int uVar1 = 1 << (i_no & 0xF);
    this->switch_bitfield[i_no >> 4] ^= uVar1;
    return this->switch_bitfield[i_no >> 4] & uVar1 ? true : false;
}
#else
asm bool dSv_zoneBit_c::revSwitch(int i_no) {
    nofralloc
    #include "d/d_save/d_save/asm/func_80034D78.s"
}
#endif

void dSv_zoneBit_c::onOneSwitch(int i_no) {
    this->room_switch |= (u16)(1 << i_no);
}

void dSv_zoneBit_c::offOneSwitch(int i_no) {
    this->room_switch &= ~(1 << i_no);
}

bool dSv_zoneBit_c::isOneSwitch(int i_no) const {
    return this->room_switch & 1 << i_no ? true : false;
}

bool dSv_zoneBit_c::revOneSwitch(int i_no) {
    int iVar1 = 1 << i_no;
    this->room_switch ^= iVar1;
    return this->room_switch & iVar1 ? true : false;
}

void dSv_zoneBit_c::onItem(int i_no) {
    this->item_bitfield[i_no >> 4] |= (u16)(1 << (i_no & 0xF));
}

bool dSv_zoneBit_c::isItem(int i_no) const {
    return this->item_bitfield[i_no >> 4] & 1 << (i_no & 0xF) ?  true : false;
}

void dSv_zoneBit_c::onOneItem(int i_no) {
    this->room_item |= (u16)(1 << i_no);
}

bool dSv_zoneBit_c::isOneItem(int i_no) const {
    return this->room_item & 1 << i_no ? true : false;
}

void dSv_zoneActor_c::init(void) {
    for (int i = 0; i < 4; i++) {
        this->actor_bitfield[i] = 0;
    }
}

void dSv_zoneActor_c::on(int i_id) {
    this->actor_bitfield[i_id >> 5] |= 1 << (i_id & 0x1F);
}

void dSv_zoneActor_c::off(int i_id) {
    this->actor_bitfield[i_id >> 5] &= ~(1 << (i_id & 0x1F));
}

bool dSv_zoneActor_c::is(int i_id) const {
    return this->actor_bitfield[i_id >> 5] & 1 << (i_id & 0x1F) ?  true : false;
}

void dSv_zone_c::init(int param_1) {
    this->unk0 = param_1;
    zone_bit.init();
    zone_actor.init();
}

void dSv_restart_c::setRoom(const cXyz& i_position, short i_angle, s8 param_3) {
    this->unk0 = param_3;
    this->position = i_position;
    this->angle = i_angle;
}

void dSv_turnRestart_c::set(const cXyz& i_position, short i_angle, s8 param_3, u32 param_4) {
    this->position = i_position;
    this->angle = i_angle;
    this->unk18 = param_3;
    this->unk12 = param_4;
}

void dSv_info_c::init(void) {
    this->save_file.init();
    this->memory.init();
    this->dungeon_bit.init(-1);
    initZone();
    this->events.init();
}


void dSv_save_c::init(void) {
    this->player.init();
    for (int i = 0; i < 0x20; i++) {
        this->area_flags[i].init();
    }

    for (int i = 0; i < 0x40; i++) {
        this->unk_flags[i].init();
    }

    this->event_flags.init();
    this->minigame_flags.init();
}

dSv_memory2_c* dSv_save_c::getSave2(int i_stage2No) {
    return this->unk_flags + i_stage2No;
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
        this->zones[i].init(-1);
    }
}

u32 dSv_info_c::createZone(int param_1) {
    dSv_zone_c* zone = this->zones;
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
        this->memory.getTempFlags().onSwitch(i_no);
    } 
    else if (i_no < 0xc0) {
        this->dungeon_bit.onSwitch(i_no - 0x80);
    } 
    else {
        int zoneId =  dStage_roomControl_c_NS_getZoneNo(i_roomNo, i_no);
        if (i_no < 0xE0) {
            this->zones[zoneId].getZoneBit().onSwitch(i_no - 0xC0);
        }
        else {
            this->zones[zoneId].getZoneBit().onOneSwitch(i_no - 0xE0);
        }
    }
}

void dSv_info_c::offSwitch(int i_no, int i_roomNo) {
    if ((i_no == -1) || (i_no == 0xFF)) {
            return;
    }
    
    if (i_no < 0x80) {
        this->memory.getTempFlags().offSwitch(i_no);
    } 
    else if (i_no < 0xc0) {
        this->dungeon_bit.offSwitch(i_no - 0x80);
    } 
    else {
        int zoneId =  dStage_roomControl_c_NS_getZoneNo(i_roomNo, i_no);
        if (i_no < 0xE0) {
            this->zones[zoneId].getZoneBit().offSwitch(i_no - 0xC0);
        }
        else {
            this->zones[zoneId].getZoneBit().offOneSwitch(i_no - 0xE0);
        }
    }
}

// doesn't like getZoneBit() returning a reference
#ifdef NONMATCHING
bool dSv_info_c::isSwitch(int i_no, int i_roomNo) const {
    if ((i_no == -1) || (i_no == 0xFF)) {
        return false;
    }
    
    if (i_no < 0x80) {
        return this->memory.getTempFlags().isSwitch(i_no);
    } 
    else if (i_no < 0xc0) {
        return this->dungeon_bit.isSwitch(i_no - 0x80);
    } 
    else {
        int zoneId =  dStage_roomControl_c_NS_getZoneNo(i_roomNo, i_no);
        if (i_no < 0xE0) {
            return this->zones[zoneId].getZoneBit().isSwitch(i_no - 0xC0);
        }
        else {
            return this->zones[zoneId].getZoneBit().isOneSwitch(i_no - 0xE0);
        }
    }
}
#else
asm bool dSv_info_c::isSwitch(int i_no, int i_roomNo) const {
    nofralloc
    #include "d/d_save/d_save/asm/func_80035360.s"
}
#endif

void dSv_info_c::onItem(int i_no, int i_roomNo) {
    if ((i_no == -1) || (i_no == 0xFF)) {
            return;
    }
    
    if (i_no < 0x80) {
        this->dungeon_bit.onItem(i_no);
    } 
    else if (i_no < 0xA0) {
        this->memory.getTempFlags().onItem(i_no - 0x80);
    } 
    else {
        int zoneNo =  dStage_roomControl_c_NS_getZoneNo(i_roomNo, i_no);
        if (i_no < 0xC0) {
            this->zones[zoneNo].getZoneBit().onItem(i_no - 0xA0);
        }
        else {
            this->zones[zoneNo].getZoneBit().onOneItem(i_no - 0xC0);
        }
    }
}

asm bool dSv_info_c::isItem(int i_no, int i_roomNo) const {
    nofralloc
    #include "d/d_save/d_save/asm/func_80035590.s"
}


void dSv_info_c::onActor(int i_id, int i_roomNo) {
    if (i_id == -1 || i_id == dSv_zoneActor_c::ACTOR_MAX || i_roomNo == -1) {
        return;
    }

    int zoneNo =  dStage_roomControl_c_NS_getZoneNo(i_roomNo, i_id);
    this->zones[zoneNo].getZoneActor().on(i_id);
}

void dSv_info_c::offActor(int i_id, int i_roomNo) {
    if (i_id == -1 || i_id == dSv_zoneActor_c::ACTOR_MAX || i_roomNo == -1) {
        return;
    }

    int zoneNo =  dStage_roomControl_c_NS_getZoneNo(i_roomNo, i_id);
    this->zones[zoneNo].getZoneActor().off(i_id);
}

asm bool dSv_info_c::isActor(int i_id, int i_roomNo) const {
    nofralloc
    #include "d/d_save/d_save/asm/func_80035724.s"
}

asm void dSv_info_c::memory_to_card(char*, int) {
    nofralloc
    #include "d/d_save/d_save/asm/func_80035798.s"
}

asm void dSv_info_c::card_to_memory(char*, int) {
    nofralloc
    #include "d/d_save/d_save/asm/func_80035A04.s"
}

asm void dSv_info_c::initdata_to_card(char*, int) {
    nofralloc
    #include "d/d_save/d_save/asm/func_80035BD0.s"
}