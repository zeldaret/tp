#ifndef D_A_NPC_FISH_H
#define D_A_NPC_FISH_H

#include "d/a/d_a_npc.h"

class npc_fish_class : public fopAc_ac_c {
    /* 0x568 */ u8 field_0x568[0x5b4 - 0x568]; // unused in TU, unsure of type 
};

struct fish_data_s {
    /* 0x00 */ int param;
    /* 0x04 */ Vec pos;
    /* 0x10 */ u8 field_0x10;
};

struct fish_pos {
public:
    u8 param;
    f32 pos_x;
    f32 pos_z;
};


#endif /* D_A_NPC_FISH_H */
