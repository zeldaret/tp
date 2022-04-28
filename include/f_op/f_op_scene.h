#ifndef F_F_OP_SCENE_H_
#define F_F_OP_SCENE_H_

#include "SSystem/SComponent/c_phase.h"
#include "dolphin/types.h"
#include "f_op/f_op_scene_tag.h"
#include "f_pc/f_pc_base.h"
#include "f_pc/f_pc_node.h"
#include "m_Do/m_Do_dvd_thread.h"

struct request_of_phase_process_class;
class mDoDvdThd_command_c;

class scene_class {
public:
    /* 0x000 */ base_process_class field_0x0;
    /* 0x0B8 */ u8 field_0xb8[0x10];
    /* 0x0C8 */ u32 field_0xc8;
    /* 0x0CC */ u8 field_0xcc[0xE0];
    /* 0x1AC */ process_method_class* mpProcessMtd;
    /* 0x1B0 */ scene_tag_class* field_0x1b0;
    /* 0x1B4 */ u8 field_0x1b4[0x10];
    /* 0x1C4 */ request_of_phase_process_class field_0x1c4;
};

#endif