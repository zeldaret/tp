#ifndef D_A_KYTAG07_H
#define D_A_KYTAG07_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

// struct LIGHT_INFLUENCE {};

class kytag07_class : public fopAc_ac_c {
public:
    /* 0x568 */ LIGHT_INFLUENCE mLightInfluence;
    /* 0x588 */ f32 field_0x588;
    /* 0x58C */ u8 field_0x58c;
};

#endif /* D_A_KYTAG07_H */
