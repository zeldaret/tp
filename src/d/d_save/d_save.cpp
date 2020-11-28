#include "d_save.h"
#include "global.h"

u8 dSv_item_rename(u8 item_id) {
    switch (item_id) {
        case LANTERN_OIL_2: return LANTERN_OIL;
        case RED_POTION_2: return RED_POTION;
        case LANTERN_OIL_3: return LANTERN_OIL_4;
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

    this->equipment[0] = ORDON_CLOTHES;
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

void dSv_player_status_a_c::setSelectItemIndex(signed int select_item_index, u8 item_index) {
    if (select_item_index >= 4) {
        return;
    }
    this->select_item[select_item_index] = item_index;
}

u8 dSv_player_status_a_c::getSelectItemIndex(signed int select_item_index) const {
  if (select_item_index < 4) {
    return this->select_item[select_item_index];
  }
  return 0;
}

void dSv_player_status_a_c::setMixItemIndex(signed int mix_item_index, u8 item_index) {
    if (mix_item_index >= 4) {
        return;
    }
    this->mix_item[mix_item_index+1] = item_index;
}

u8 dSv_player_status_a_c::getMixItemIndex(signed int mix_item_index) const {
  if (mix_item_index < 4) {
    return this->mix_item[mix_item_index+1];
  }
  return 0;
}

u16 dSv_player_status_a_c::getRupeeMax(void) const {
    if(current_wallet < 3) { // if you make this a default, it wont match. Compiler, pls.
        switch(current_wallet) {
            case WALLET: return 300;
            case BIG_WALLET: return 600;
            case GIANT_WALLET: return 1000;
        }
    }
    return 0;
}

asm bool dSv_player_status_a_c::isMagicFlag(u8) const {
    nofralloc
    #include "func_80032AF8.s"
}

void dSv_player_status_b_c::init() {
  
  this->unk4 = 0;
  this->unk0 = 0;
  this->transform_level_flag = 0;
  this->dark_clear_level_flag = 0;
  this->unk10 = 0;
  this->unk12 = lbl_80451D58;
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

void dSv_horse_place_c::set(const char* i_stage, const cXyz& i_position, short i_angle, signed char i_room_id) {
  strcpy((char*)current_stage,i_stage);
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

void dSv_player_return_place_c::set(const char* i_stage, s8 i_room_id, u8 i_spawn_id) {
    strcpy((char*)current_stage,i_stage);
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

void dSv_player_field_last_stay_info_c::set(const char* i_last_stage_name, const cXyz& i_last_position, short i_last_angle, signed char i_last_spawn_id, u8 i_last_room_id) {
    strcpy((char*)last_stage, i_last_stage_name);

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

asm void dSv_player_item_c::setItem(int current_items_index, u8 new_items_index) {
    nofralloc
    #include "func_80032FB8.s"
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
                    if (((IVar1 == HEROS_BOW) && (IVar2 == REGULAR_BOMBS)) ||
                        ((IVar2 == HEROS_BOW && (IVar1 == REGULAR_BOMBS)))) {
                        return 0x59;
                    }
                    if (((IVar1 == HEROS_BOW) && (IVar2 == WATER_BOMBS)) ||
                        ((IVar2 == HEROS_BOW && (IVar1 == WATER_BOMBS)))) {
                        return 0x59;
                    }
                    if (((IVar1 == HEROS_BOW) && (IVar2 == BOMBLINGS)) ||
                        ((IVar2 == HEROS_BOW && (IVar1 == BOMBLINGS)))) {
                        return 0x59;
                    }
                    if (((IVar1 == HEROS_BOW) && (IVar2 == HAWKEYE)) ||
                        ((IVar2 == HEROS_BOW && (IVar1 == HAWKEYE)))) {
                        return 0x5a;
                    }
                    if (((IVar1 == FISHING_ROD) && (IVar2 == BEE_LARVA)) ||
                        ((IVar2 == FISHING_ROD && (IVar1 == BEE_LARVA)))) {
                        return 0x5b;
                    }
                    if (((IVar1 == FISHING_ROD) && (IVar2 == ZORAS_JEWEL)) ||
                        ((IVar2 == FISHING_ROD && (IVar1 == ZORAS_JEWEL)))) {
                        return 0x5c;
                    }
                    if (((IVar1 == FISHING_ROD) && (IVar2 == WORM)) ||
                        ((IVar2 == FISHING_ROD && (IVar1 == WORM)))) {
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
    #include "func_80033030.s"

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
    #include "func_800332F8.s"
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
    #include "func_80033370.s"
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
    #include "func_80033450.s"
}
#endif

asm void dSv_player_item_c::setEmptyBottle(void) {
    nofralloc 
    #include "func_80033494.s"
}

asm void dSv_player_item_c::setEmptyBottle(u8){
    nofralloc
    #include "func_80033514.s" 
}

asm void dSv_player_item_c::setEquipBottleItemIn(u8, u8) {
    nofralloc
    #include "func_80033598.s"
}

void dSv_player_item_c::setEquipBottleItemEmpty(u8 selected_index) {
    setEquipBottleItemIn(selected_index,EMPTY_BOTTLE);
}

u8 dSv_player_item_c::checkBottle(u8 i_item_id){
    u8 item_id;
    u8 num_bottles = 0;

    item_id = dSv_item_rename(i_item_id);
    for (int i = 0; i < MAX_BOTTLES; i++) {
        if (item_id == items[i+0xb]) {
            num_bottles++;
        }
    }
    return num_bottles;
}

asm u8 dSv_player_item_c::checkInsectBottle(void){
    nofralloc
    #include "func_80033754.s"
}

u8 dSv_player_item_c::checkEmptyBottle(void) {
    u8 num = 0;

    for(int i = 0; i < MAX_BOTTLES; i++) {
        if(items[i+0xb] == EMPTY_BOTTLE) {
            num++;
        }
    }
    return num;
}

asm void dSv_player_item_c::setBombBagItemIn(u8, u8, bool) {
    nofralloc
    #include "func_80033828.s"
}

asm void dSv_player_item_c::setBombBagItemIn(u8, u8, u8, bool) {
    nofralloc
    #include "func_80033910.s"
}

void dSv_player_item_c::setEmptyBombBagItemIn(u8 param_1,bool param_2) {
    setBombBagItemIn(EMPTY_BOMBBAG,param_1,param_2);
}

void dSv_player_item_c::setEmptyBombBagItemIn(u8 param_1,u8 param_2, bool param_3) {
    setBombBagItemIn(EMPTY_BOMBBAG,param_1,param_2,param_3);
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
    #include "func_80033A88.s"
}
#endif

asm void dSv_player_item_c::setEmptyBombBag(u8, u8) {
    nofralloc
    #include "func_80033B08.s"
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
    #include "func_80033C2C.s"
}

void dSv_player_item_c::setRodTypeLevelUp(void) {
    int current_fishing_rod_item_id = this->items[0x14];

    switch (current_fishing_rod_item_id) {
        case ROD_BEE_LARVA: {
            this->items[0x14] = ROD_CORAL_EARRING_BEE_LARVA;
            break;
        }
        case ROD_WORM: {
            this->items[0x14] = ROD_CORAL_EARRING_WORM; 
            break;
        }
        case FISHING_ROD: {
            this->items[0x14] = ROD_CORAL_EARRING;
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
        case BEE_LARVA: {
            isFirstBit(61) ? this->items[0x14] = ROD_CORAL_EARRING_BEE_LARVA : this->items[0x14] = ROD_BEE_LARVA;
            break;
        }
        case WORM: {
            isFirstBit(61) ? this->items[0x14] = ROD_CORAL_EARRING_WORM : this->items[0x14] = ROD_WORM;
            break;
        }
        case NO_ITEM: {
            isFirstBit(61) ? this->items[0x14] = ROD_CORAL_EARRING : this->items[0x14] = FISHING_ROD;
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
    #include "func_80033D40.s"
}
#endif

void dSv_player_get_item_c::init(void) {
    for (int i = 0; i < 8; i++) {
        this->pause_menu_bit_fields[i] = 0;
    }
}

// this is a few instructions off
#ifdef NONMATCHING
void dSv_player_get_item_c::onFirstBit(u8 param_1) {
    int uVar1 = ((int)param_1 & 0xe0) >> 0x3;
    this->pause_menu_bit_fields[uVar1] |= (u32)(1 << (param_1 & 0x1F));
}
#else
asm void dSv_player_get_item_c::onFirstBit(u8) {
    nofralloc
    #include "func_80033E60.s"
}
#endif

asm void dSv_player_get_item_c::offFirstBit(u8) {
    nofralloc
    #include "func_80033E94.s"
}

asm bool dSv_player_get_item_c::isFirstBit(u8) const {
    nofralloc
    #include "func_80033EC8.s"
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

void dSv_player_item_record_c::setBombNum(u8 bomb_bag_index, u8 bag_id) {
    this->bomb_bags[bomb_bag_index] = bag_id;
}

u8 dSv_player_item_record_c::getBombNum(u8 bomb_bag_index) const {
    return this->bomb_bags[bomb_bag_index];
}

void dSv_player_item_record_c::setBottleNum(u8 bottle_index, u8 bottle_num) {
    this->bottles[bottle_index] = bottle_num;
}

#ifdef NONMATCHING
u8 dSv_player_item_record_c::addBottleNum(u8 param_1, short param_2) {
    int iVar3 = this->bottles[param_1] + param_2;

    dSv_player_item_c ok;

    ok.getItem((u8)(param_1 + 0xB),true);

    if (iVar3 < 0) {
        this->bottles[param_1] = 0;
    } else if (iVar3 > dComIfGs_getBottleMax()) {
            this->bottles[param_1] = dComIfGs_getBottleMax();
    } else {
            this->bottles[param_1] = iVar3;
    }
    return this->bottles[param_1];
}
#else
asm u8 dSv_player_item_record_c::addBottleNum(u8 param_1, short param_2) {
    nofralloc
    #include "func_80033F9C.s"
}
#endif

u8 dSv_player_item_record_c::getBottleNum(u8 bottle_index) const {
    return this->bottles[bottle_index];
}

void dSv_player_item_max_c::init(void) {

    for (int i = 0; i < 7; i++) {
        this->unk0[i] = 30;
    }
    setBombNum(REGULAR_BOMBS,30);
    setBombNum(WATER_BOMBS,15);
    setBombNum(BOMBLINGS,10);
    this->unk0[7] = 0;
}

void dSv_player_item_max_c::setBombNum(u8 bomb_id,u8 bomb_max) {
    switch (bomb_id) {
        case REGULAR_BOMBS: this->unk0[1] = bomb_max; return;
        case WATER_BOMBS: this->unk0[2] = bomb_max; return;
        case BOMBLINGS: this->unk0[6] = bomb_max; return;
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
        case WATER_BOMBS: return (u8)(this->bomb_bags_ammo_max[0x1] * iVar3);
        case REGULAR_BOMBS: return (u8)(this->bomb_bags_ammo_max[0x1] * iVar3);
        case BOMBLINGS: return (u8)(this->unk_ammo_max[0x2] * iVar3);
        default: return 0;
    }
}
#else
asm u8 dSv_player_item_max_c::getBombNum(u8 param_1) const {
    nofralloc
    #include "func_800340F8.s"
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

void dSv_player_collect_c::setCollect(int param_1, u8 param_2) {
    this->unk0[param_1] |= (u8)(1 << param_2);
}

bool dSv_player_collect_c::isCollect(int param_1, u8 param_2) const {
   return this->unk0[param_1] & (u8)(1 << param_2) ? true : false;
}

void dSv_player_collect_c::onCollectCrystal(u8 param_1) {
    this->crystal |= (u8)(1 << param_1);  
}

bool dSv_player_collect_c::isCollectCrystal(u8 param_1) const {
    return this->crystal & (u8)(1 << param_1) ? true : false;
}

void dSv_player_collect_c::onCollectMirror(u8 param_1) {
    this->mirror |= (u8)(1 << param_1);  
}

bool dSv_player_collect_c::isCollectMirror(u8 param_1) const {
    return this->mirror & (u8)(1 << param_1) ? true : false;
}

void dSv_player_wolf_c::init(void) {
    for (int i = 0; i < 3; i++) {
        this->unk0[i] = 0;
    }

    this->unk3 = 0;
}

void dSv_light_drop_c::init(void) {
    for (int i = 0; i < 4; i++) {
        this->unk0[i] = 0;
    }

    this->light_drop_get_flag = 0;

    for (int i = 0; i < 3; i++) {
        this->unk5[i] = 0;
    }
}

void dSv_light_drop_c::setLightDropNum(u8 param_1,u8 param_2) {
    if ((4 <= param_1) && (param_1 <= 6)) {
        return;
    }
    this->unk0[param_1] = param_2;
}

u8 dSv_light_drop_c::getLightDropNum(u8 param_1) const {
    if ((4 <= param_1) && (param_1 <= 6)) {
        return 0;
    }
    return this->unk0[param_1];
}

void dSv_light_drop_c::onLightDropGetFlag(u8 param_1) {
    if ((4 <= param_1) && (param_1 <= 6)) {
        return;
    }
    this->light_drop_get_flag = this->light_drop_get_flag | (u8)(1 << param_1);
}

bool dSv_light_drop_c::isLightDropGetFlag(u8 param_1) const {
    if ((4 <= param_1) && (param_1 <= 6)) {
        return 0;
    }
    return this->light_drop_get_flag & (u8)(1 << param_1) ? true : false;
}

void dSv_letter_info_c::init(void) {
    for (int i = 0; i < 2; i++) {
        this->letter_read_flags[i] = 0;
        this->letter_read_flags[i + 2] = 0;
    }

    for (int i = 0; i < 64; i++) {
        this->unk16[i] = 0;
    }
}

void dSv_letter_info_c::onLetterGetFlag(int param_1) {
    this->letter_read_flags[param_1 >> 0x5] |= 0x1 << (param_1 & 0x1F);
}

bool dSv_letter_info_c::isLetterGetFlag(int param_1) const {
    return this->letter_read_flags[param_1 >> 0x5] & (1 << (param_1 & 0x1F)) ? true : false;
}

void dSv_letter_info_c::onLetterReadFlag(int param_1) {
    (this->letter_read_flags + (param_1 >> 0x5))[0x2] |= 0x1 << (param_1 & 0x1F);
}

#ifdef NONMATCHING
bool dSv_letter_info_c::isLetterReadFlag(int param_1) const {
    u32 tmp = this->letter_read_flags[(param_1 >> 5) + 2];
    int tmp2 = (1 << (param_1 & 0x1F));
    return  tmp2 & tmp ? true : false;
}
#else
asm bool dSv_letter_info_c::isLetterReadFlag(int) const {
    nofralloc
    #include "func_8003449C.s"
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
    #include "func_80034518.s"
}
#endif

void dSv_player_config_c::init(void) {
    u32 os_sound_mode;

    this->unk0 = 1;
    os_sound_mode = OSGetSoundMode();
    if (os_sound_mode == 0) {
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
    #include "func_80034644.s"
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

void dSv_memBit_c::onTbox(int param_1) {
    this->area_flags_bitfields1[param_1 >> 5] |= 1 << (param_1  & 0x1F);
}

void dSv_memBit_c::offTbox(int param_1) {
    this->area_flags_bitfields1[param_1 >> 5] &= ~(1 << (param_1  & 0x1F));
}

bool dSv_memBit_c::isTbox(int param_1) const {
     return 1 << (param_1 & 0x1f) & this->area_flags_bitfields1[param_1 >> 0x5] ?  true : false;
}

void dSv_memBit_c::onSwitch(int param_1) {
      (this->area_flags_bitfields1 + (param_1 >> 0x5))[0x2] |= 0x1 << (param_1 & 0x1F);
}
void dSv_memBit_c::offSwitch(int param_1) {
      (this->area_flags_bitfields1 + (param_1 >> 0x5))[0x2] &= ~(0x1 << (param_1 & 0x1F));
}

bool dSv_memBit_c::isSwitch(int param_1) const {
    return (this->area_flags_bitfields2[param_1 >> 0x5] & 0x1 << (param_1 & 0x1F)) ? true : false;
}

// instruction in wrong place
#ifdef NONMATCHING
bool dSv_memBit_c::revSwitch(int param_1) {
    int uVar2 = 0x1 << (param_1 & 0x1F);
    u32* puVar1 = (param_1 >> 0x5) + this->area_flags_bitfields1;
    puVar1[0x2] ^= uVar2;
    return puVar1[0x2] & uVar2 ? true : false;
}
#else
asm u8 dSv_memBit_c::revSwitch(int){
    nofralloc
    #include "func_8003488C.s"
}
#endif

void dSv_memBit_c::onItem(int param_1) {
     (this->area_flags_bitfields1 + (param_1 >> 0x5))[0x6] |= 0x1 << (param_1 & 0x1F);
}

bool dSv_memBit_c::isItem(int param_1) const {
     return (&this->rupee_flags_bitfields)[param_1 >> 0x5] & 0x1 << (param_1 & 0x1F) ? true : false;
}

void dSv_memBit_c::onDungeonItem(int param_1) {
    this->dungeons_flags |= (u8)(1 << param_1);
}

bool dSv_memBit_c::isDungeonItem(int param_1) const {
    return this->dungeons_flags & (u8)(1 << param_1) ?  true : false;
}

void dSv_event_c::init(void) {
    for (int i = 0; i < 256; i++) {
        this->events[i] = 0;
    }
    setInitEventBit();
}

void dSv_event_c::onEventBit(u16 param_1) {
    this->events[(param_1 >> 8)] |= (u8)param_1;
}

void dSv_event_c::offEventBit(u16 param_1) {
    this->events[(param_1 >> 8)] &= ~(u8)param_1;
}

// (u8) cast doesn't work here, thank u metrowerks
bool dSv_event_c::isEventBit(u16 param_1) const {
    return this->events[(param_1 >> 8)] & (param_1 & 0xFF) ? true : false;
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

void dSv_memory2_c::onVisitedRoom(int param_1) {
    this->unk0[param_1 >> 5] |= 1 << (param_1 & 0x1F); 
}

void dSv_memory2_c::offVisitedRoom(int param_1) {
    this->unk0[param_1 >> 5] &= ~(1 << (param_1 & 0x1F)); 
}

bool dSv_memory2_c::isVisitedRoom(int param_1) {
    return (1 << (param_1 & 0x1F) & this->unk0[param_1 >> 5]) ? true : false;
}

bool dSv_danBit_c::init(s8 param_1) {
    if (param_1 != this->unk0) {
        this->switch_bitfield[0] = 0;
        this->switch_bitfield[1] = 0;
        this->item_bitfield[0] = 0;
        this->item_bitfield[1] = 0;
        this->item_bitfield[2] = 0;
        this->item_bitfield[3] = 0;
        this->unk0 = param_1;
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

void dSv_danBit_c::onSwitch(int param_1) {
    this->switch_bitfield[param_1 >> 5] |= 1 << (param_1 & 0x1F);
}

void dSv_danBit_c::offSwitch(int param_1) {
    this->switch_bitfield[param_1 >> 5] &= ~(1 << (param_1 & 0x1F));
}

bool dSv_danBit_c::isSwitch(int param_1) const {
    return this->switch_bitfield[param_1 >> 0x5] & (0x1 << (param_1 & 0x1F)) ? true : false;
}

bool dSv_danBit_c::revSwitch(int param_1) {
    int uVar1 = 1 << (param_1 & 0x1F);
    this->switch_bitfield[param_1 >> 5] ^= uVar1;
    return this->switch_bitfield[param_1 >> 5] & uVar1 ? true : false;
}

void dSv_danBit_c::onItem(int param_1) {
    this->item_bitfield[param_1 >> 5] |= 1 << (param_1 & 0x1F);
}

bool dSv_danBit_c::isItem(int param_1) const {
    return this->item_bitfield[param_1 >> 5] & 1 << (param_1 & 0x1F) ? true : false;
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

void dSv_zoneBit_c::onSwitch(int param_1) {
    this->switch_bitfield[param_1 >> 4] |= (u16)(1 << (param_1 & 0xF));
}

void dSv_zoneBit_c::offSwitch(int param_1) {
    this->switch_bitfield[param_1 >> 4] &= ~(1 << (param_1 & 0xF));
}

bool dSv_zoneBit_c::isSwitch(int param_1) const {
    return this->switch_bitfield[param_1 >> 4] & 1 << (param_1 & 0xF) ?  true : false;
}

// instruction in wrong place
#ifdef NONMATCHING
bool dSv_zoneBit_c::revSwitch(int param_1) {
    int uVar1 = 1 << (param_1 & 0xF);
    this->switch_bitfield[param_1 >> 4] ^= uVar1;
    return this->switch_bitfield[param_1 >> 4] & uVar1 ? true : false;
}
#else
asm bool dSv_zoneBit_c::revSwitch(int param_1) {
    nofralloc
    #include "func_80034D78.s"
}
#endif

void dSv_zoneBit_c::onOneSwitch(int param_1) {
    this->room_switch |= (u16)(1 << param_1);
}

void dSv_zoneBit_c::offOneSwitch(int param_1) {
    this->room_switch &= ~(1 << param_1);
}

bool dSv_zoneBit_c::isOneSwitch(int param_1) const {
    return this->room_switch & 1 << param_1 ? true : false;
}

bool dSv_zoneBit_c::revOneSwitch(int param_1) {
    int iVar1 = 1 << param_1;
    this->room_switch ^= iVar1;
    return this->room_switch & iVar1 ? true : false;
}

void dSv_zoneBit_c::onItem(int param_1) {
    this->item_bitfield[param_1 >> 4] |= (u16)(1 << (param_1 & 0xF));
}

bool dSv_zoneBit_c::isItem(int param_1) const {
    return this->item_bitfield[param_1 >> 4] & 1 << (param_1 & 0xF) ?  true : false;
}

void dSv_zoneBit_c::onOneItem(int param_1) {
    this->room_item |= (u16)(1 << param_1);
}

bool dSv_zoneBit_c::isOneItem(int param_1) const {
    return this->room_item & 1 << param_1 ? true : false;
}