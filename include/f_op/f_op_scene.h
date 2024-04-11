#ifndef F_F_OP_SCENE_H_
#define F_F_OP_SCENE_H_

#include "f_op/f_op_scene_tag.h"

struct request_of_phase_process_class;
class mDoDvdThd_command_c;

typedef struct scene_process_profile_definition {
    /* 0x00 */ node_process_profile_definition mBase;
    /* 0x20 */ process_method_class* mpMtd; // Subclass methods
    /* 0x24 */ u32 field_0x24; // padding?
} scene_process_profile_definition;

class scene_class {
public:
    /* 0x000 */ process_node_class mBase;
    /* 0x1AC */ process_method_class * mpMtd;
    /* 0x1B0 */ scene_tag_class mScnTg;
};

extern leafdraw_method_class g_fopScn_Method;

#endif
