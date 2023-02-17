#ifndef D_A_TAG_WATCHGE_H
#define D_A_TAG_WATCHGE_H

#include "rel/d/a/e/d_a_e_ge/d_a_e_ge.h"
#include "d/com/d_com_inf_game.h"

class daTagWatchGe_c : public fopAc_ac_c {
public:
    u8 getGroupNo() {
        return mGroupNo;
    }

    /* 80D642D8 */ int draw();
    /* 80D64338 */ int execute();
    /* 80D643F8 */ int create();

    /* 0x568 */ u8 field_0x568;
    /* 0x569 */ u8 mGroupNo;
    /* 0x56A */ u8 field_0x56a;
};

#endif /* D_A_TAG_WATCHGE_H */