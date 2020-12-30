#include "d/d_bomb/d_bomb.h"

bool dBomb_c::checkStateCarry(){
   return ((unk_3 & 0x2000) != 0 || (unk_3 & 0x100000) != 0 || unk_2 == 2 || unk_2 == 1);
}

bool dBomb_c::checkFlowerBombWait(fopAc_ac_c* param_1){
    return (unk_1 == 0x221 && unk_2 == 4);
}

bool dBomb_c::checkWaterBomb(fopAc_ac_c* param_1){
    return (unk_1 == 0x221 && (unk_4 & 0x10)!=0);
}

bool dBomb_c::checkInsectBombMove(fopAc_ac_c* param_1){
    return (unk_1 == 0x221 && unk_2 == 7);
}