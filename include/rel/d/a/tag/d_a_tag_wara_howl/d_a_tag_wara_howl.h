#ifndef D_A_TAG_WARA_HOWL_H
#define D_A_TAG_WARA_HOWL_H

#include "f_op/f_op_actor_mng.h"

class daTagWrHowl_c : public fopAc_ac_c {
public:
    /* 80D63F38 */ daTagWrHowl_c();
    /* 80D63FD4 */ int create();
    /* 80D6402C */ int Delete();
    /* 80D64034 */ int draw();
    /* 80D6403C */ int execute();
    /* 80D64090 */ void init();
    /* 80D640B4 */ bool chkWlfInTag();

    /* 80D63F74 */ virtual ~daTagWrHowl_c();

    s8 getTuneId() { return fopAcM_GetParamBit(this, 4, 4); }

    /* 0x56C */ f32 field_0x56c;
    /* 0x570 */ f32 field_0x570;
};

#endif /* D_A_TAG_WARA_HOWL_H */
