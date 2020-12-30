
#ifndef F_PC_LEAF_H
#define F_PC_LEAF_H

#include "f/f_pc/f_pc_base.h"
#include "f/f_pc/f_pc_draw_priority.h"
#include "f/f_pc/f_pc_method.h"

struct leafdraw_method_class : public process_method_class {
    process_method_func mpDrawFunc;
};

struct leafdraw_class : public base_process_class {
    leafdraw_method_class* mpDrawMtd;
    u8 mbUnk0;
    u8 mbUnk1;
    draw_priority_class mDwPi;
};

extern "C" {

int fpcLf_GetPriority(leafdraw_class* pLeaf);
int fpcLf_DrawMethod(leafdraw_method_class* pMthd, void* pUserData);
int fpcLf_Draw(leafdraw_class* pMthd);
};

#endif
