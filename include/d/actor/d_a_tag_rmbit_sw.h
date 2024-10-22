#ifndef D_A_TAG_RMBIT_SW_H
#define D_A_TAG_RMBIT_SW_H

#include "d/d_com_inf_game.h"

class daTagRmbitSw_c : public fopAc_ac_c {
public:
    /* 80D5FAF8 */ daTagRmbitSw_c();
    /* 80D5FB34 */ virtual ~daTagRmbitSw_c();
    /* 80D5FB94 */ int create();
    /* 80D5FBEC */ int Delete();
    /* 80D5FBF4 */ int draw();
    /* 80D5FBFC */ int execute();
    /* 80D5FDB8 */ void init();
    /* 80D5FDF0 */ u8 chkPlyrInTag();

    s8 getArg0_RoomSaveTableNo() { return fopAcM_GetParamBit(this, 0, 8); }
    s8 getArg1_RoomNo() { return fopAcM_GetParamBit(this, 8, 8); }
    u8 getArg2_CngBitVal() { return fopAcM_GetParamBit(this, 16, 1); }
    u8 getArg3_CngBitFlg() { return fopAcM_GetParamBit(this, 17, 1); }
    u8 getSwBit() { return fopAcM_GetParamBit(this, 24, 8); }

    /* 0x56C */ f32 field_0x56c;
    /* 0x570 */ f32 field_0x570;
    /* 0x574 */ f32 field_0x574;

};  // Size: 0x578

#endif /* D_A_TAG_RMBIT_SW_H */
