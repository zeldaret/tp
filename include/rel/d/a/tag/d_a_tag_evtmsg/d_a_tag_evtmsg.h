#ifndef D_A_TAG_EVTMSG_H
#define D_A_TAG_EVTMSG_H

#include "f_op/f_op_actor_mng.h"
#include "d/msg/d_msg_flow.h"

class daTag_EvtMsg_c;
typedef BOOL (daTag_EvtMsg_c::*EvtCutFunc)(int);

class daTag_EvtMsg_c : public fopAc_ac_c {
public:
    /* 0x568 */ int mTimer;
    /* 0x56C */ int mFlowID;
    /* 0x570 */ s16 mEventID;
    /* 0x572 */ u8 field_0x572;
    /* 0x574 */ dMsgFlow_c mMsgFlow;

public:
    /* 8048CF38 */ int create();
    /* 8048D014 */ int Delete();
    /* 8048D01C */ int Execute();
    /* 8048D31C */ int Draw();
    /* 8048D324 */ u32 getOnEvtBit();
    /* 8048D340 */ u32 getOffEvtBit();
    /* 8048D35C */ u8 getOnSwBit();
    /* 8048D368 */ u8 getOffSwBit();
    /* 8048D374 */ u8 getProcType();
    /* 8048D384 */ BOOL isDelete();
    /* 8048D428 */ BOOL chkPointInArea(cXyz);
    /* 8048D54C */ BOOL ECut_talk(int);
    /* 8048D5CC */ BOOL ECut_wait(int);

    /* 8048D6F0 */ virtual ~daTag_EvtMsg_c();

    static char* mEvtCutNameList[];
    static EvtCutFunc mEvtCutList[];
};

#endif /* D_A_TAG_EVTMSG_H */
