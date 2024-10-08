#ifndef D_A_TAG_PACHI_H
#define D_A_TAG_PACHI_H

#include "d/d_cc_d.h"
#include "f_op/f_op_actor_mng.h"

class daTagPati_c : public fopAc_ac_c {
public:
    /* 80D5D438 */ ~daTagPati_c();
    /* 80D5D570 */ int create();
    /* 80D5D78C */ int Execute();
    /* 80D5D7C8 */ void col_set();
    /* 80D5D830 */ u32 chk_CoHit();

    u32 get_prm() {
        u32 retVal = fopAcM_GetParam(this) & 0xFF;
        if (retVal == 0xFF) {
            retVal = 0;
        }
        return retVal;
    }

    /* 0x568 */ dCcD_Cyl mCyl;
    /* 0x6A4 */ dCcD_Stts mStts;
    /* 0x6E0 */ u32 field_0x6E0;
    /* 0x6E4 */ u32 field_0x6E4;
};

STATIC_ASSERT(sizeof(daTagPati_c) == 0x6E8);

#endif /* D_A_TAG_PACHI_H */
