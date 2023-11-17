#ifndef D_A_TAG_LV6GATE_H
#define D_A_TAG_LV6GATE_H

#include "f_op/f_op_actor_mng.h"

class daTagLv6Gate_c : public fopAc_ac_c {
public:
    /* 80D4F8B8 */ void createHeap();
    /* 80D4FBD8 */ void create();
    /* 80D4FEDC */ void execute();
    /* 80D506AC */ void draw();

    void stabMasterSword() { field_0x76a = 1; }

    /* 0x568 */ u8 field_0x568[0x76A - 0x568];
    /* 0x76A */ u8 field_0x76a;
};

#endif /* D_A_TAG_LV6GATE_H */
