#ifndef D_A_TAG_MSTOP_H
#define D_A_TAG_MSTOP_H

#include "dolphin/types.h"

struct daTagMstop_c {
    /* 805A6138 */ void create();
    /* 805A6338 */ ~daTagMstop_c();
    /* 805A63C4 */ void eventOrder();
    /* 805A63F8 */ void execute();
    bool checkNoAttention() const { return _0x56b == 0xFF; }

    u8 _0[0x56b];
    u8 _0x56b;
};

#endif /* D_A_TAG_MSTOP_H */
