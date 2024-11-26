#ifndef F_OP_F_OP_MSG_H
#define F_OP_F_OP_MSG_H

#include "SSystem/SComponent/c_xyz.h"
#include "f_pc/f_pc_leaf.h"

class fopAc_ac_c;

class msg_class : public leafdraw_class {
public:
    /* 0xC0 */ int type;
    /* 0xC4 */ create_tag_class draw_tag;
    /* 0xD8 */ leafdraw_method_class* sub_method;
    /* 0xDC */ fopAc_ac_c* talk_actor;
    /* 0xE0 */ cXyz pos;
    /* 0xEC */ u32 msg_idx;
    /* 0xF0 */ u32 field_0xf0;
    /* 0xF4 */ u32 field_0xf4;
    /* 0xF8 */ u16 mode;
    /* 0xFA */ u8 select_idx;
};  // Size: 0xFC

extern leafdraw_method_class g_fopMsg_Method;

#endif /* F_OP_F_OP_MSG_H */
