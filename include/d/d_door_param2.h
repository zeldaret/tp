#ifndef D_D_DOOR_PARAM2_H
#define D_D_DOOR_PARAM2_H

#include "dolphin/types.h"

class fopAc_ac_c;

class door_param2_c {
public:
    /* 8003A188 */ static u32 getKind(fopAc_ac_c* i_actor);
    /* 8003A194 */ static u32 getDoorModel(fopAc_ac_c* i_actor);
    /* 8003A1A0 */ static u8 getFrontOption(fopAc_ac_c* i_actor);
    /* 8003A1AC */ static u8 getBackOption(fopAc_ac_c* i_actor);
    /* 8003A1B8 */ static u32 getFRoomNo(fopAc_ac_c* i_actor);
    /* 8003A1C4 */ static u32 getBRoomNo(fopAc_ac_c* i_actor);
    /* 8003A1D0 */ static u8 getSwbit(fopAc_ac_c* i_actor);
    /* 8003A1DC */ static u8 getSwbit2(fopAc_ac_c* i_actor);
    /* 8003A1E8 */ static u8 getSwbit3(fopAc_ac_c* i_actor);
    /* 8003A1F4 */ static u32 isMsgDoor(fopAc_ac_c* i_actor);
    /* 8003A200 */ static u8 getEventNo(fopAc_ac_c* i_actor);
    /* 8003A20C */ static u32 getEventNo2(fopAc_ac_c* i_actor);
    /* 8003A218 */ static u16 getMsgNo(fopAc_ac_c* i_actor);
    /* 8003A224 */ static u8 getExitNo(fopAc_ac_c* i_actor);
    /* 8003A230 */ static u32 getFLightInf(fopAc_ac_c* i_actor);
    /* 8003A23C */ static u32 getBLightInf(fopAc_ac_c* i_actor);
    /* 8003A248 */ static u32 getMFLightInf(fopAc_ac_c* i_actor);
    /* 8003A254 */ static u32 getMBLightInf(fopAc_ac_c* i_actor);
};

#endif /* D_D_DOOR_PARAM2_H */
