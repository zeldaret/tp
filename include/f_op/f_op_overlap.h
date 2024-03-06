#ifndef F_F_OP_OVERLAP_H_
#define F_F_OP_OVERLAP_H_

#include "f_pc/f_pc_leaf.h"

class overlap_task_class : public leafdraw_class {
public:
    /* 0xC0 */ leafdraw_method_class* field_0xc0;
    /* 0xC4 */ u8 field_0xc4;  // used as both u8 and request_base_class* ??
    /* 0xC8 */ int field_0xc8;
};  // Size: 0xCC

struct overlap_process_profile_definition {
    /* 0x00 */ leaf_process_profile_definition base;
    /* 0x24 */ leafdraw_method_class* sub_method;
};  // Size: 0x28

static s32 fopOvlp_Draw(void* param_1);

extern leafdraw_method_class g_fopOvlp_Method;

#endif