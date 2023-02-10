#ifndef F_OP_F_OP_KANKYO_H
#define F_OP_F_OP_KANKYO_H

#include "dolphin/types.h"
#include "f_pc/f_pc_manager.h"
#include "f_op/f_op_kankyo_mng.h"

class kankyo_class : public leafdraw_class {
public:
    /* 0xC0 */ int mBsType;
    /* 0xC4 */ create_tag_class mDwTg;
    /* 0xD8 */ leafdraw_method_class* mSubMtd;
    /* 0xDC */ cXyz mPos;
    /* 0xE8 */ cXyz mScale;
    /* 0xF4 */ u32 mParam;
};

struct kankyo_process_profile_definition {
    /* 0x00 */ leaf_process_profile_definition base;
    /* 0x24 */ leafdraw_method_class* mSubMtd;
};  // Size: 0x28

extern leafdraw_method_class g_fopKy_Method;

#endif /* F_OP_F_OP_KANKYO_H */
