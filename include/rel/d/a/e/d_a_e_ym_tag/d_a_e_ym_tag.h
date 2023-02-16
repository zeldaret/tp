#ifndef D_A_E_YM_TAG_H
#define D_A_E_YM_TAG_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

// this probably needs to be moved to d_a_e_ym.h
class daE_YM_c : public fopAc_ac_c {
public:
    u8 getTagNo() {
        return mTagNo;
    }

    /* 0x568 */ u8 field_0x568[352];
    /* 0x6C8 */ u8 mTagNo;
};

class daE_YM_TAG_c : public fopAc_ac_c {
public:
    /* 80815E8C */ void execute();
    /* 80815F28 */ void create();


};


#endif /* D_A_E_YM_TAG_H */
