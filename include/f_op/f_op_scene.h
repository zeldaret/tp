#ifndef F_F_OP_SCENE_H_
#define F_F_OP_SCENE_H_

#include "dolphin/types.h"
#include "f_op/f_op_scene_tag.h"
#include "f_pc/f_pc_node.h"

class scene_class {
public:
    /* 0x000 */ u8 field_0x00;
    /* 0x004 */ u32 field_0x04;
    /* 0x008 */ u8 field_0x08[0x24];
    /* 0x02C */ int* field_0x2C;
    /* 0x030 */ u8 field_0x30[0x17C];
    /* 0x1AC */ process_method_class* mpProcessMtd;
    /* 0x1B0 */ scene_tag_class* field_0x1b0;
};

#endif