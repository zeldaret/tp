#ifndef D_A_SUSPEND_H
#define D_A_SUSPEND_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daSus_c : public fopAc_ac_c {
public:
    u32 getScale() {
        return fopAcM_GetParam(this) >> 0x1E;
    }

    u8 getArg1() {
        return (fopAcM_GetParam(this) >> 9) & 1;
    }

    u8 getArg0() {
        return (fopAcM_GetParam(this) >> 8) & 1;
    }

    u8 getSw() {
        return fopAcM_GetParam(this) & 0xFF;
    }
    
    u8 getRoom() {
        return fopAcM_GetParam(this) >> 10;
    }

    /* 80031248 */ void newData(s8, cXyz const&, cXyz const&, u8, u8, u8);
    /* 804D5118 */ int create();


};

#endif /* D_A_SUSPEND_H */
