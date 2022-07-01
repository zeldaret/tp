#ifndef D_A_TAG_MHINT_H
#define D_A_TAG_MHINT_H

#include "dolphin/types.h"

struct daTagMhint_c {
    /* 805A56B8 */ void create();
    /* 805A58E8 */ ~daTagMhint_c();
    /* 805A5974 */ void eventOrder();
    /* 805A5AE4 */ void execute();
    bool checkNoAttention() const { return _0x56d == 0xFF; }

    u8 _0[0x56d];
    u8 _0x56d;
};

#endif /* D_A_TAG_MHINT_H */
