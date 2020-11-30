
#ifndef F_PC_LEAF_H
#define F_PC_LEAF_H

#include "f/f_pc/f_pc_base.h"
#include "f/f_pc/f_pc_draw_priority.h"

struct leafdraw_class : public base_process_class {
    profile_method_class *mpDrawMtd;
    u8 mbUnk0;
    u8 mbUnk1;
    draw_priority_class mDwPi;
};

extern "C" {

};

#endif
