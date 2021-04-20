#ifndef D_MSG_FLOW_H_
#define D_MSG_FLOW_H_

#include "dolphin/types.h"
#include "f/f_op/f_op_actor.h"

class dMsgFlow_c {
public:
    virtual void dbgPrint();

private:
    /* 0x04 */ void* field_0x04;
    /* 0x08 */ void* field_0x08;
    /* 0x0C */ void* field_0x0c;
    /* 0x10 */ u16 field_0x10;
    /* 0x12 */ u16 field_0x12;
    /* 0x14 */ fopAc_ac_c* field_0x14;
    /* 0x18 */ int field_0x18;
    /* 0x1C */ u16 field_0x1c;
    /* 0x1E */ u8 field_0x1e[2];
    /* 0x20 */ int mMsg;
    /* 0x24 */ u8 mSelectMessage;
    /* 0x25 */ u8 field_0x25;
    /* 0x26 */ u8 field_0x26;
    /* 0x27 */ u8 field_0x27;
    /* 0x28 */ int mMsgNo;
    /* 0x2C */ int mNowMsgNo;
    /* 0x30 */ u16 field_0x30;
    /* 0x32 */ u16 mEventId;
    /* 0x34 */ int field_0x34;
    /* 0x38 */ u16 field_0x38;
    /* 0x3A */ s16 mChoiceNo;
    /* 0x3C */ int field_0x3c;
    /* 0x40 */ u8 field_0x40;
    /* 0x41 */ u8 field_0x41;
    /* 0x42 */ s8 field_0x42;
    /* 0x43 */ s8 field_0x43;
    /* 0x44 */ s8 field_0x44;
    /* 0x45 */ s8 field_0x45;
    /* 0x46 */ u8 field_0x46;
    /* 0x47 */ u8 field_0x47;
    /* 0x48 */ u8 mNonStopJunpFlowFlag;
};

#endif