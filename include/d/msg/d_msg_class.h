#ifndef D_MSG_D_MSG_CLASS_H
#define D_MSG_D_MSG_CLASS_H

#include "dolphin/types.h"
#include "f_op/f_op_actor.h"


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
    /* 0xFC */ int field_0xfc;
};  // Size: 0x100

#endif /* D_MSG_D_MSG_CLASS_H */
