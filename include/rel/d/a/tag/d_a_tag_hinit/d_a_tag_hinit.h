#ifndef D_A_TAG_HINIT_H
#define D_A_TAG_HINIT_H

#include "d/com/d_com_inf_game.h"
#include "rel/d/a/d_a_horse/d_a_horse.h"

class daTagHinit_c : public fopAc_ac_c {
public:
    /* 805A3758 */ int create();
    /* 805A3820 */ ~daTagHinit_c();
    /* 805A389C */ int execute();

    /* 0x568 */ u8 field_0x568;
    /* 0x569 */ u8 field_0x569;
    /* 0x56A */ u8 field_0x56a;
    /* 0x56B */ u8 field_0x56b;
    /* 0x56C */ u16 field_0x56c;
    /* 0x56E */ u16 field_0x56e;
};

#endif /* D_A_TAG_HINIT_H */
