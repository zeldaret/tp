/**
 * d_com_inf_actor.cpp
 * dolzel2 - Common Information For Actor
 */

#include "d/dolzel.h"

#include "d/d_com_inf_actor.h"
#include "dolphin/types.h"

/* ############################################################################################## */
/* 80450610-80450618 000090 0008+00 0/0 1/1 0/0 .sdata           g_dComIfAc_gameInfo */
dComIfAc_info_c g_dComIfAc_gameInfo = {
    0,      // field_0x0
    false,  // mPause
};

/* 80450618-80450620 000098 0004+04 0/0 2/2 7/7 .sdata           g_dComIfGoat_gameInfo */
dComIfGoat_info_c g_dComIfGoat_gameInfo = {
    NULL, // field_0x0
};
