#ifndef F_OP_F_OP_KANKYO_H
#define F_OP_F_OP_KANKYO_H

#include "dolphin/types.h"
#include "f_pc/f_pc_manager.h"
#include "f_op/f_op_kankyo_mng.h"

class kankyo_class : public leafdraw_class {
public:
    /* 0xC0 */ int field_0xc0;
    /* 0xC4 */ create_tag_class field_0xc4;
    /* 0xD8 */ leafdraw_method_class* field_0xd8;
    /* 0xDC */ cXyz field_0xdc;
    /* 0xE8 */ cXyz field_0xe8;
    /* 0xF4 */ u32 field_0xf4;
};

#endif /* F_OP_F_OP_KANKYO_H */
