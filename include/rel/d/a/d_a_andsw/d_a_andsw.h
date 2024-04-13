#ifndef D_A_ANDSW_H
#define D_A_ANDSW_H

#include "d/com/d_com_inf_game.h"

class daAndsw_c : public fopAc_ac_c {
public:
    u8 getSwNo() {
        return fopAcM_GetParamBit(this,0,8);
    }

    u8 getSwNo2() {
        return fopAcM_GetParamBit(this,8,8);
    }

    u16 getTimer() {
        return fopAcM_GetParamBit(this,16,8);
    }

    u8 getType() {
        return fopAcM_GetParamBit(this,24,8);
    }

    /* 80457978 */ int Create();
    /* 804579B8 */ int create();
    /* 80457A20 */ int execute();
    /* 80457ABC */ int _delete();

    /* 0x568 */ u8 mSwNo;
    /* 0x568 */ u8 mSwNo2;
    /* 0x56A */ s16 mTimer;
};


#endif /* D_A_ANDSW_H */
