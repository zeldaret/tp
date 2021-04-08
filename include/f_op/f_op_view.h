#ifndef F_F_OP_VIEW_H_
#define F_F_OP_VIEW_H_

#include "dolphin/types.h"
#include "f_pc/f_pc_leaf.h"

class view_class {
public:
    /* 0x00 */ u8 field_0x00[0x10];
    /* 0x10 */ leafdraw_class* pLeafdraw;
    /* 0x14 */ u8 field_0x14[0xac];
    /* 0xC0 */ process_method_class* pmProcessMtd;
};

#endif