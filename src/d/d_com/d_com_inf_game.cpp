#include "d/d_com/d_com_inf_game/d_com_inf_game.h"
#include "d/d_item/d_item/d_item.h"
#include "global.h"

asm void dComIfG_play_c::ct(void) {
    nofralloc
    #include "d/d_com/d_com_inf_game/asm/func_8002B1DC.s"
}

asm void dComIfG_play_c::init(void) {
    nofralloc
    #include "d/d_com/d_com_inf_game/asm/func_8002B22C.s"
}

void dComIfGp_checkItemGet(u8 param_1, int param_2) {
    checkItemGet(param_1, param_2);
}