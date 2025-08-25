/**
 * d_door_param2.cpp
 *
 */

#include "d/dolzel.h"

#include "d/d_door_param2.h"
#include "f_op/f_op_actor_mng.h"

/* 8003A188-8003A194 034AC8 000C+00 0/0 0/0 17/17 .text getKind__13door_param2_cFP10fopAc_ac_c */
int door_param2_c::getKind(fopAc_ac_c* i_actor) {
    return fopAcM_GetParamBit(i_actor, 0, 5);
}

/* 8003A194-8003A1A0 034AD4 000C+00 0/0 0/0 2/2 .text getDoorModel__13door_param2_cFP10fopAc_ac_c
 */
u32 door_param2_c::getDoorModel(fopAc_ac_c* i_actor) {
    return fopAcM_GetParamBit(i_actor, 5, 3);
}

/* 8003A1A0-8003A1AC 034AE0 000C+00 0/0 0/0 17/17 .text
 * getFrontOption__13door_param2_cFP10fopAc_ac_c                */
u8 door_param2_c::getFrontOption(fopAc_ac_c* i_actor) {
    return fopAcM_GetParamBit(i_actor, 8, 2);
}

/* 8003A1AC-8003A1B8 034AEC 000C+00 0/0 0/0 14/14 .text
 * getBackOption__13door_param2_cFP10fopAc_ac_c                 */
u8 door_param2_c::getBackOption(fopAc_ac_c* i_actor) {
    return fopAcM_GetParamBit(i_actor, 10, 3);
}

/* 8003A1B8-8003A1C4 034AF8 000C+00 0/0 0/0 19/19 .text getFRoomNo__13door_param2_cFP10fopAc_ac_c
 */
u8 door_param2_c::getFRoomNo(fopAc_ac_c* i_actor) {
    return fopAcM_GetParamBit(i_actor, 13, 6);
}

/* 8003A1C4-8003A1D0 034B04 000C+00 0/0 0/0 10/10 .text getBRoomNo__13door_param2_cFP10fopAc_ac_c
 */
u8 door_param2_c::getBRoomNo(fopAc_ac_c* i_actor) {
    return fopAcM_GetParamBit(i_actor, 19, 6);
}

/* 8003A1D0-8003A1DC 034B10 000C+00 0/0 0/0 25/25 .text getSwbit__13door_param2_cFP10fopAc_ac_c */
u8 door_param2_c::getSwbit(fopAc_ac_c* i_actor) {
    return i_actor->home.angle.z & 0xFF;
}

/* 8003A1DC-8003A1E8 034B1C 000C+00 0/0 0/0 12/12 .text getSwbit2__13door_param2_cFP10fopAc_ac_c
 */
u8 door_param2_c::getSwbit2(fopAc_ac_c* i_actor) {
    return (i_actor->home.angle.z >> 8) & 0xFF;
}

/* 8003A1E8-8003A1F4 034B28 000C+00 0/0 0/0 3/3 .text getSwbit3__13door_param2_cFP10fopAc_ac_c */
u8 door_param2_c::getSwbit3(fopAc_ac_c* i_actor) {
    return (i_actor->home.angle.x >> 8) & 0xFF;
}

/* 8003A1F4-8003A200 034B34 000C+00 0/0 0/0 4/4 .text isMsgDoor__13door_param2_cFP10fopAc_ac_c */
int door_param2_c::isMsgDoor(fopAc_ac_c* i_actor) {
    return fopAcM_GetParamBit(i_actor, 31, 1);
}

/* 8003A200-8003A20C 034B40 000C+00 0/0 0/0 3/3 .text getEventNo__13door_param2_cFP10fopAc_ac_c */
u8 door_param2_c::getEventNo(fopAc_ac_c* i_actor) {
    return i_actor->home.angle.x & 0xFF;
}

/* 8003A20C-8003A218 034B4C 000C+00 0/0 0/0 2/2 .text getEventNo2__13door_param2_cFP10fopAc_ac_c
 */
u8 door_param2_c::getEventNo2(fopAc_ac_c* i_actor) {
    return (i_actor->home.angle.x >> 8) & 0xFF;
}

/* 8003A218-8003A224 034B58 000C+00 0/0 0/0 2/2 .text getMsgNo__13door_param2_cFP10fopAc_ac_c */
u16 door_param2_c::getMsgNo(fopAc_ac_c* i_actor) {
    return i_actor->home.angle.x & 0xFFFF;
}

/* 8003A224-8003A230 034B64 000C+00 0/0 0/0 6/6 .text getExitNo__13door_param2_cFP10fopAc_ac_c */
u8 door_param2_c::getExitNo(fopAc_ac_c* i_actor) {
    return fopAcM_GetParamBit(i_actor, 25, 6);
}

/* 8003A230-8003A23C 034B70 000C+00 0/0 0/0 1/1 .text getFLightInf__13door_param2_cFP10fopAc_ac_c
 */
u32 door_param2_c::getFLightInf(fopAc_ac_c* i_actor) {
    return fopAcM_GetParamBit(i_actor, 25, 3) & 0xFF;
}

/* 8003A23C-8003A248 034B7C 000C+00 0/0 0/0 1/1 .text getBLightInf__13door_param2_cFP10fopAc_ac_c
 */
u32 door_param2_c::getBLightInf(fopAc_ac_c* i_actor) {
    return fopAcM_GetParamBit(i_actor, 28, 3) & 0xFF;
}

/* 8003A248-8003A254 034B88 000C+00 0/0 0/0 1/1 .text getMFLightInf__13door_param2_cFP10fopAc_ac_c
 */
u32 door_param2_c::getMFLightInf(fopAc_ac_c* i_actor) {
    return fopAcM_GetParamBit(i_actor, 19, 3) & 0xFF;
}

/* 8003A254-8003A260 034B94 000C+00 0/0 0/0 1/1 .text getMBLightInf__13door_param2_cFP10fopAc_ac_c
 */
u32 door_param2_c::getMBLightInf(fopAc_ac_c* i_actor) {
    return fopAcM_GetParamBit(i_actor, 22, 3) & 0xFF;
}
