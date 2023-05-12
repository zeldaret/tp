#ifndef F_OP_F_OP_MSG_H
#define F_OP_F_OP_MSG_H

#include "SSystem/SComponent/c_xyz.h"
#include "f_pc/f_pc_leaf.h"

class fopAc_ac_c;

class msg_class : public leafdraw_class {
public:
    /* 0xC0 */ int mMsgType;
    /* 0xC4 */ create_tag_class mDwTg;
    /* 0xD8 */ leafdraw_method_class* mSubMtd;
    /* 0xDC */ fopAc_ac_c* mpActor;
    /* 0xE0 */ cXyz mPos;
    /* 0xEC */ u32 mMsgID;
    /* 0xF0 */ u32 field_0xf0;
    /* 0xF4 */ u32 field_0xf4;
    /* 0xF8 */ u16 mMode;
    /* 0xFA */ u8 mSelectedChoiceIdx;
};  // Size: 0xFC

extern leafdraw_method_class g_fopMsg_Method;

#endif /* F_OP_F_OP_MSG_H */
