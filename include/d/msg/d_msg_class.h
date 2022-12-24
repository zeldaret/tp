#ifndef D_MSG_D_MSG_CLASS_H
#define D_MSG_D_MSG_CLASS_H

#include "dolphin/types.h"
#include "f_op/f_op_actor.h"


class msg_class : public leafdraw_class {
public:
    /* 0xC0 */ int field_0xc0;
    /* 0xC4 */ create_tag_class field_0xc4;
    /* 0xD8 */ leafdraw_method_class* field_0xd8;
    /* 0xDC */ fopAc_ac_c* field_0xdc;
    /* 0xE0 */ cXyz field_0xe0;
    /* 0xEC */ u32 field_0xec;
    /* 0xF0 */ u32 field_0xf0;
    /* 0xF4 */ u32 field_0xf4;
    /* 0xF8 */ u16 field_0xf8;
    /* 0xFA */ u8 field_0xfa;
    /* 0xFC */ int field_0xfc;
};  // Size: 0x100

#endif /* D_MSG_D_MSG_CLASS_H */
