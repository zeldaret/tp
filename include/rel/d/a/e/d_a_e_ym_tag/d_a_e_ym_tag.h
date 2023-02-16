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

    void setTagPos(cXyz& i_position) {
        mTagPos = i_position;
    }

    void setTagPosP() {
        mTagPosP = &mTagPos;
    }

    /* 0x568 */ u8 field_0x568[336];
    /* 0x6B8 */ cXyz mTagPos;
    /* 0x6C4 */ cXyz* mTagPosP;
    /* 0x6C8 */ u8 mTagNo;
};

class daE_YM_TAG_c : public fopAc_ac_c {
public:
    /* 80815E8C */ int execute();
    /* 80815F28 */ int create();


};


#endif /* D_A_E_YM_TAG_H */
