#ifndef D_A_OBJ_DIGHOLL_H
#define D_A_OBJ_DIGHOLL_H

#include "d/com/d_com_inf_game.h"

class daObjDigholl_c : public fopAc_ac_c {
public:
    /* 80BDC618 */ int create();
    /* 80BDC75C */ ~daObjDigholl_c();
    /* 80BDC7D8 */ int execute();
    /* 80BDCB0C */ int draw();

    /* 0x568 */ u8 field_0x568;
    /* 0x569 */ u8 field_0x569;
    /* 0x56A */ u8 field_0x56a;
    /* 0x56B */ u8 field_0x56b;
    /* 0x56C */ s16 field_0x56c;
    /* 0x56E */ s16 field_0x56e;
};     // Size: 0x570

#endif /* D_A_OBJ_DIGHOLL_H */
