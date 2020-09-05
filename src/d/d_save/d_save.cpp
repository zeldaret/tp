#include "d_save.h"

extern "C" void dComIfGp_setSelectItem(int);

asm u8 dSv_item_rename(u8) {
    nofralloc
    clrlwi r0, r3, 0x18
    cmpwi r0, 0x69
    beq lbl_80032948
    bge lbl_80032934
    cmpwi r0, 0x68
    bge lbl_80032940
    blr
lbl_80032934:
    cmpwi r0, 0x6e
    beq lbl_80032950
    blr
lbl_80032940:
    li r3, 0x66
    blr
lbl_80032948:
    li r3, 0x61
    blr
lbl_80032950:
    li r3, 0x6f
    blr
}
#pragma peephole on

void dSv_player_status_a_c::init() {
    max_health = 15;
    current_health = 12;
    current_rupees = 0;
    max_lantern_oil = 0;
    current_lantern_oil = 0;
    _unk1 = 0;

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
    _unk6 = 0;
    _unk7 = 0;
    magic_flag = 0;
    _unk9 = 0;
    _unk10 = 0;

    for (int i = 0; i < 3; i++) {
        _unk11[i] = 0;
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