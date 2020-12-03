#include "d/d_a/d_a_item_static/d_a_item_static.h"
#include "global.h"

u32 daItem_c::startCtrl(void){
    this->unk2376 |= 4;
    return 1;
}

u32 daItem_c::startControl(void){
    this->unk2378 = 1;
    return 1;
}

u32 daItem_c::endControl(void){
    this->unk2378 = 0;
    return 1;
}