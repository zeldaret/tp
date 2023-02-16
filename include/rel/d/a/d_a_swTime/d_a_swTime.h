#ifndef D_A_SWTIME_H
#define D_A_SWTIME_H

#include "f_op/f_op_actor_mng.h"
#include "d/com/d_com_inf_game.h"

class daSwTime_c : public fopAc_ac_c {
public:
    u8 getTime() {
        return fopAcM_GetParamBit(this,0,8);
    }

    u8 getSwbit() {
        return fopAcM_GetParamBit(this,8,8);
    }

    u8 getSwbit2() {
        return fopAcM_GetParamBit(this,16,8);
    }

    /* 80D4F638 */ int Create();
    /* 80D4F660 */ int create();
    /* 80D4F6C8 */ int execute();
    /* 80D4F758 */ int _delete();

    /* 0x568 */ u8 mTime;
    /* 0x569 */ u8 mSwbit;
    /* 0x56A */ u8 mSwbit2;
};

#endif /* D_A_SWTIME_H */
