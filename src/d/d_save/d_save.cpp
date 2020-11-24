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
    max_health = 15;
    current_health = 12;
    current_rupees = 0;
    max_lantern_oil = 0;
    current_lantern_oil = 0;
    unk10 = 0;

    for (int i = 0; i < 4; i++) {
        select_item[i] = NO_ITEM;
        mix_item[i + 1] =  NO_ITEM;
        dComIfGp_setSelectItem(i);
    }

    for (int i = 0; i < 6; i++) {
        equipment[i] = 0;
    }

    equipment[0] = ORDON_CLOTHES;
    equipment[1] = NO_ITEM;
    equipment[2] = NO_ITEM;
    equipment[3] = NO_ITEM;
    equipment[4] = NO_ITEM;
    current_wallet = WALLET;
    unk26 = 0;
    unk27 = 0;
    magic_flag = 0;
    unk29 = 0;
    unk30 = 0;

    for (int i = 0; i < 3; i++) {
        unk31[i] = 0;
    }
}

void dSv_player_status_a_c::setSelectItemIndex(signed int select_item_index, u8 item_index) {
    if (select_item_index >= 4) {
        return;
    }
    select_item[select_item_index] = item_index;
}

u8 dSv_player_status_a_c::getSelectItemIndex(signed int select_item_index) const {
  if (select_item_index < 4) {
    return select_item[select_item_index];
  }
  return 0;
}

void dSv_player_status_a_c::setMixItemIndex(signed int mix_item_index, u8 item_index) {
    if (mix_item_index >= 4) {
        return;
    }
    mix_item[mix_item_index+1] = item_index;
}

u8 dSv_player_status_a_c::getMixItemIndex(signed int mix_item_index) const {
  if (mix_item_index < 4) {
    return mix_item[mix_item_index+1];
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
  
  unk4 = 0;
  unk0 = 0;
  transform_level_flag = 0;
  dark_clear_level_flag = 0;
  unk10 = 0;
  unk12 = lbl_80451D58;
  unk16 = 0;

  for (int i = 0; i < 3; i++) {
      unk18[i] = 0;
  }
}

void dSv_player_status_b_c::onDarkClearLV(int flagOnOff) {

  dark_clear_level_flag = dark_clear_level_flag | (u8)(1 << flagOnOff);
}

asm bool dSv_player_status_b_c::isDarkClearLV(int unk) const {
    nofralloc
    #include "func_80032BB0.s" 
}

void dSv_player_status_b_c::onTransformLV(int flagOnOff) {
    transform_level_flag = transform_level_flag | (u8)(1 << flagOnOff);
}

asm bool dSv_player_status_b_c::isTransformLV(int unk) const {
    nofralloc
    #include "func_80032BEC.s"
}

void dSv_horse_place_c::init(void) {
    float position_val;
    char* default_stage;

    default_stage = strcpy((char*)current_stage, (char*)lbl_80379234);
    position_val = lbl_80451D5C;
    position.x = lbl_80451D5C;
    position.y = position_val;
    position.z = position_val;
    angle = 0;
    spawn_id = 0;
    room_id = 0;
}

void dSv_horse_place_c::set(const char* i_stage, const cXyz& i_position, short i_angle, signed char i_room_id) {
  strcpy((char*)current_stage,i_stage);
  position.x = i_position.x;
  position.y = i_position.y;
  position.z = i_position.z;
  angle = i_angle;
  room_id = i_room_id;
}

asm void dSv_player_return_place_c::init(void) {
    nofralloc
    #include "func_80032CC8.s"
}

void dSv_player_field_last_stay_info_c::init() {
    float position_val;

    strcpy((char*)last_stage, (char*)lbl_80379234);
    position_val = lbl_80451D5C;

    last_position.x = lbl_80451D5C;
    last_position.y = position_val;
    last_position.z = position_val;
    last_angle = 0;
    last_spawn_id = 0;
    last_room_id = 1;
    unk24 = 0;
    last_region = 0;

    for (int i = 0; i < 2; i++) {
        unk26[i] = 0;
    }
}

void dSv_player_field_last_stay_info_c::set(const char* i_last_stage_name, const cXyz& i_last_position, short i_last_angle, signed char i_last_spawn_id, u8 i_last_room_id) {
    strcpy((char*)last_stage, i_last_stage_name);

    last_position.x = i_last_position.x;
    last_position.y = i_last_position.y;
    last_position.z = i_last_position.z;
    last_angle = i_last_angle;
    last_spawn_id = i_last_spawn_id;
    last_room_id = i_last_room_id;
}

void dSv_player_field_last_stay_info_c::onRegionBit(int i_region_bit) {
    if (i_region_bit < 0) {
        return;
    }
    if (8 <= i_region_bit) {
        return;
    }
    last_region = last_region | (u8)(1 << i_region_bit);
}

// this is close
// bool dSv_player_field_last_stay_info_c::isRegionBit(int param_1) const {
//   if ((param_1 >= 0) && (param_1 < 8)) {
//       return (last_region & (1 << (u8)param_1)) ? 1 : 0;
//   }
// }

asm bool dSv_player_field_last_stay_info_c::isRegionBit(int unk) const {
    nofralloc
    #include "func_80032E78.s"
}

void dSv_player_last_mark_info_c::init(void) {
  float position;
  
  strcpy((char*)ooccoo_stage,(char*)lbl_80379234);
  position = lbl_80451D5C;
  ooccoo_position.x = lbl_80451D5C;
  ooccoo_position.y = position;
  ooccoo_position.z = position;
  ooccoo_angle = 0;
  ooccoo_room_id = 0;
  ooccoo_spawn_id = 0;
  unk24 = -1;
 
  for (int i = 0; i < 3; i++) {
    unk25[i] = 0;
  }
}

void dSv_player_last_mark_info_c::setWarpItemData(const char* i_ooccoo_stage, const cXyz& i_ooccoo_position, short i_ooccoo_angle, s8 i_ooccoo_room_id, u8 unk1, u8 unk2) {
  strcpy((char*)ooccoo_stage,i_ooccoo_stage);
  ooccoo_position.x = i_ooccoo_position.x;
  ooccoo_position.y = i_ooccoo_position.y;
  ooccoo_position.z = i_ooccoo_position.z;
  ooccoo_angle = i_ooccoo_angle;
  ooccoo_room_id = i_ooccoo_room_id;
}

void dSv_player_item_c::init(void) {
  for (int i = 0; i < 24; i++) {
    items[i] = NO_ITEM;
    item_slots[i] = NO_ITEM;
  }
}

asm void dSv_player_item_c::setItem(int current_items_index, u8 new_items_index) {
    nofralloc
    #include "func_80032FB8.s"
}

// u8 dSv_player_item_c::getItem(int param_1, bool param_2) const {
//     int IVar1;
//     int IVar2;
//     u8 current_select_item_index;

//     if (param_1 < 0x18) {
//         if (param_2 != false) {
//             for (int select_item_index = 0; select_item_index < 2; select_item_index++) {
//                 current_select_item_index = getSelectItemIndex(select_item_index);
//                 if (((param_1 == (current_select_item_index)) ||
//                     (current_select_item_index = dComIfGs_getMixItemIndex(select_item_index), param_1 == (current_select_item_index))) &&
//                     (current_select_item_index = dComIfGs_getMixItemIndex(select_item_index), (current_select_item_index) != NO_ITEM)) {
//                     current_select_item_index = getSelectItemIndex(select_item_index);
//                     IVar1 = items[current_select_item_index];
//                     current_select_item_index = dComIfGs_getMixItemIndex(select_item_index);
//                     IVar2 = items[current_select_item_index];
//                     if (((IVar1 == HEROS_BOW) && (IVar2 == REGULAR_BOMBS)) ||
//                         ((IVar2 == HEROS_BOW && (IVar1 == REGULAR_BOMBS)))) {
//                         return 0x59;
//                     }
//                     if (((IVar1 == HEROS_BOW) && (IVar2 == WATER_BOMBS)) ||
//                         ((IVar2 == HEROS_BOW && (IVar1 == WATER_BOMBS)))) {
//                         return 0x59;
//                     }
//                     if (((IVar1 == HEROS_BOW) && (IVar2 == BOMBLINGS)) ||
//                         ((IVar2 == HEROS_BOW && (IVar1 == BOMBLINGS)))) {
//                         return 0x59;
//                     }
//                     if (((IVar1 == HEROS_BOW) && (IVar2 == HAWKEYE)) ||
//                         ((IVar2 == HEROS_BOW && (IVar1 == HAWKEYE)))) {
//                         return 0x5a;
//                     }
//                     if (((IVar1 == FISHING_ROD) && (IVar2 == BEE_LARVA)) ||
//                         ((IVar2 == FISHING_ROD && (IVar1 == BEE_LARVA)))) {
//                         return 0x5b;
//                     }
//                     if (((IVar1 == FISHING_ROD) && (IVar2 == ZORAS_JEWEL)) ||
//                         ((IVar2 == FISHING_ROD && (IVar1 == ZORAS_JEWEL)))) {
//                         return 0x5c;
//                     }
//                     if (((IVar1 == FISHING_ROD) && (IVar2 == WORM)) ||
//                         ((IVar2 == FISHING_ROD && (IVar1 == WORM)))) {
//                         return 0x5d;
//                     }
//                     if (((select_item_index == 0x3) &&
//                          (current_select_item_index = getSelectItemIndex(0x3),
//                           (current_select_item_index & 0xff) == 0x0)) &&
//                         (current_select_item_index = dComIfGs_getMixItemIndex(0x3), (current_select_item_index & 0xff) == 0x0)) {
//                         dComIfGs_setSelectItemIndex(0x3, -0x1);
//                         dComIfGs_setMixItemIndex(0x3, -0x1);
//                         return 0xff;
//                     }
//                     OSReport_Error(lbl_8037923d, (unsigned int)IVar1, (unsigned int)IVar2);
//                 }
//             }
//         }
//         current_select_item_index = (unsigned int)items[param_1];
//     } else {
//         current_select_item_index = NO_ITEM;
//     }
//     return current_select_item_index;
// }

asm u8 dSv_player_item_c::getItem(int, bool) const {
    nofralloc
    #include "func_80033030.s"

}

// this is close
// void dSv_player_item_c::setLineUpItem(void) {
//     u8* i_item_lst;

//     for (int i = 0; i < 24; i++) {
//         item_slots[i] = 0xFF;
//     }

//     i_item_lst = lbl_803A7270;

//     for (int i = 0; i < 23; i++) {
//         if (items[*i_item_lst] != 0xFF) {
//             item_slots[i] = *i_item_lst;
//         }
//         i_item_lst++;
//     }
// }

asm void dSv_player_item_c::setLineUpItem(void) {
    nofralloc
    #include "func_800332F8.s"
}

u8 dSv_player_item_c::getLineUpItem(int slot_number) const {
    if (slot_number < MAX_ITEM_SLOTS) {
        return item_slots[slot_number];
    }
    return NO_ITEM;
}

// void dSv_player_item_c::setBottleItemIn(u8 i_item_id_1, u8 i_item_id_2){
//     u8 current_item_index;
//     u8 new_item_index;

//     current_item_index = dSv_item_rename(i_item_id_1);
//     new_item_index = dSv_item_rename(i_item_id_2);
    
//     for (int i = 0; i < 4; i++) {
//         // sanitize input to make sure it's only a bottle
//         if (current_item_index == items[i+11]) {
//             setItem(i+11,new_item_index);
//             // if hotsprings water, turn on the timer
//             if (new_item_index == 107) {
//                 setHotSpringTimer(i+11);
//             }
//             for (int j = 0; j < 4; j++) {
//                 j = getSelectItemIndex(i);
//                 if (i+11 == j) {
//                     dComIfGp_setSelectItem(j);
//                 }
//             }
//         }
//     }
// }

asm void dSv_player_item_c::setBottleItemIn(u8, u8){
    nofralloc 
    #include "func_80033370.s"
}

// this is 1 instruction off
// void dSv_player_item_c::setEmptyBottleItemIn(u8 i_item_id){
//     u8 item_id = (dSv_item_rename(i_item_id));
//     setBottleItemIn(96,item_id);
// }

asm void dSv_player_item_c::setEmptyBottleItemIn(u8){
    nofralloc
    #include "func_80033450.s"
}

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
// void dSv_player_item_c::setEmptyBombBag(void) {

//   int current_item_index;
//   u8 uVar1;
  
//   for (int i = 0; i < 3; i++) {
//     current_item_index = (u8)(i + 15);
//     uVar1 = getItem(current_item_index,true);

//     if (uVar1 == 0xff) {
//       setItem(current_item_index,80);
//       return;
//     }
//   }
// }

asm void dSv_player_item_c::setEmptyBombBag(void) {
    nofralloc
    #include "func_80033A88.s"
}

asm void dSv_player_item_c::setEmptyBombBag(u8, u8) {
    nofralloc
    #include "func_80033B08.s"
}

// this is a few instructions off
// u8 dSv_player_item_c::checkBombBag(u8 param_1) {
//     u8 ok = 0;

//     for (int i = 0; i < 3; i++) {
//         if (param_1 == this->items[i + 15]) {
//             ok = ok + 0x1;
//         }
//     }
//     return ok;
// }

asm u8 dSv_player_item_c::checkBombBag(u8 param_1) {
    nofralloc
    #include "func_80033BEC.s"
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
// void dSv_player_item_c::setBaitItem(u8 param_1) {
//     switch (param_1) {
//         case BEE_LARVA: {
//             isFirstBit(61) ? this->items[0x14] = ROD_CORAL_EARRING_BEE_LARVA : this->items[0x14] = ROD_BEE_LARVA;
//             break;
//         }
//         case WORM: {
//             isFirstBit(61) ? this->items[0x14] = ROD_CORAL_EARRING_WORM : this->items[0x14] = ROD_WORM;
//             break;
//         }
//         case NO_ITEM: {
//             isFirstBit(61) ? this->items[0x14] = ROD_CORAL_EARRING : this->items[0x14] = FISHING_ROD;
//             break;
//         }
//     }

//     for (int i = 0; i < 4; i++) {
//         dComIfGp_setSelectItem(i);
//     }
// }

asm void dSv_player_item_c::setBaitItem(u8 param_1) {
    nofralloc
    #include "func_80033D40.s"
}

void dSv_player_get_item_c::init(void) {
    for (int i = 0; i < 8; i++) {
        pause_menu_bit_fields[i] = 0;
    }
}

asm void dSv_player_get_item_c::onFirstBit(u8) {
    nofralloc
    #include "func_80033E60.s"
}

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

asm u8 dSv_player_item_record_c::addBottleNum(u8 param_1, short param_2) {
    nofralloc
    #include "func_80033F9C.s"
}

u8 dSv_player_item_record_c::getBottleNum(u8 bottle_index) const {
    return bottles[bottle_index];
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
// u8 dSv_player_item_max_c::getBombNum(u8 param_1) const {
//     u8 iVar3;
    
//     iVar3 = 0x1;
//     if (isFirstBit(79)) {
//         iVar3 = 0x2;
//     }

//     switch (param_1) {
//         case WATER_BOMBS: return (u8)(this->bomb_bags_ammo_max[0x1] * iVar3);
//         case REGULAR_BOMBS: return (u8)(this->bomb_bags_ammo_max[0x1] * iVar3);
//         case BOMBLINGS: return (u8)(this->unk_ammo_max[0x2] * iVar3);
//         default: return 0;
//     }
// }

asm u8 dSv_player_item_max_c::getBombNum(u8 param_1) const {
    nofralloc
    #include "func_800340F8.s"
}

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

// very close
// void dSv_player_collect_c::setCollect(int param_1, u8 param_2) {
//     this->unk0[param_1] = this->unk0[param_1] | (u8)(1 << param_2);
// }

asm void dSv_player_collect_c::setCollect(int param_1, u8 param_2) {
    nofralloc
    #include "func_800341E8.s"
}

bool dSv_player_collect_c::isCollect(int param_1, u8 param_2) const {
   return this->unk0[param_1] & (u8)(1 << param_2) ? true : false;
}

void dSv_player_collect_c::onCollectCrystal(u8 param_1) {
    this->crystal = this->crystal | (u8)(1 << param_1);  
}

bool dSv_player_collect_c::isCollectCrystal(u8 param_1) const {
    return this->crystal & (u8)(1 << param_1) ? true : false;
}

void dSv_player_collect_c::onCollectMirror(u8 param_1) {
    this->mirror = this->mirror | (u8)(1 << param_1);  
}

bool dSv_player_collect_c::isCollectMirror(u8 param_1) const {
    return this->mirror & (u8)(1 << param_1) ? true : false;
}