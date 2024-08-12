#ifndef D_A_TAG_MSG_H
#define D_A_TAG_MSG_H

#include "f_op/f_op_actor_mng.h"
#include "d/msg/d_msg_flow.h"

class daTag_Msg_HIO_Param_c {
public:
    /* 0x0 */ u8 mDebugAdjustON;
};

class daTag_Msg_Param_c {
public:
    /* 80490128 */ virtual ~daTag_Msg_Param_c() {}

    static const daTag_Msg_HIO_Param_c m;
};

class daTag_Msg_c : public fopAc_ac_c {
public:
    /* 8048F7F8 */ virtual ~daTag_Msg_c();
    /* 8048F878 */ int create();
    /* 8048F954 */ int createHeap();
    /* 8048F9B4 */ int destroy();
    /* 8048F9E8 */ int execute();
    /* 8048FC68 */ int draw();
    /* 8048FC70 */ BOOL rangeCheck();
    /* 8048FE18 */ BOOL otherCheck();
    /* 8048FF8C */ char* getResName();
    /* 8048FF9C */ void getParam();
    /* 8049004C */ BOOL cut_speak(int, BOOL);

    static char* mEvtCutTBL[2];

    /* 0x56C */ char mStaffName[8];
    /* 0x574 */ request_of_phase_process_class mPhase;
    /* 0x57C */ int mFlowID;
    /* 0x580 */ dMsgFlow_c mMsgFlow;
    /* 0x5CC */ int mOrderEvtNum;
    /* 0x5D0 */ s16 mEventIdx;
    /* 0x5D2 */ u8 field_0x5D2[0x5D8 - 0x5D2];
    /* 0x5D8 */ daTag_Msg_Param_c* mParam;
    /* 0x5DC */ u8 field_0x5dc;
    /* 0x5DD */ u8 field_0x5dd;
    /* 0x5DE */ u8 mOnSwitch;
    /* 0x5DF */ u8 mOffSwitch;
    /* 0x5E0 */ u16 mOnSaveLabel;
    /* 0x5E2 */ u16 mOffSaveLabel;
    /* 0x5E4 */ u8 field_0x5e4;
};

STATIC_ASSERT(sizeof(daTag_Msg_c) == 0x5E8);

#endif /* D_A_TAG_MSG_H */
