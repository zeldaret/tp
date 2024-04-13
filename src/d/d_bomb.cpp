/**
 * d_bomb.cpp
 * dolzel2 - Bomb
 */

#include "d/d_bomb.h"

bool dBomb_c::checkStateCarry() {
    return (fopAcM_checkCarryNow(this) || fopAcM_checkHookCarryNow(this) ||
            fopAcM_GetParam(this) == 2 || fopAcM_GetParam(this) == 1);
}

bool dBomb_c::checkFlowerBombWait(fopAc_ac_c* param_1) {
    return (fopAcM_GetName(param_1) == PROC_NBOMB && fopAcM_GetParam(param_1) == 4);
}

bool dBomb_c::checkWaterBomb(fopAc_ac_c* param_1) {
    return (fopAcM_GetName(this) == PROC_NBOMB && daNbomb_c::checkWaterBomb());
}

bool dBomb_c::checkInsectBombMove(fopAc_ac_c* param_1) {
    return (fopAcM_GetName(this) == PROC_NBOMB && fopAcM_GetParam(this) == 7);
}
