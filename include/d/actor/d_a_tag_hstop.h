#ifndef D_A_TAG_HSTOP_H
#define D_A_TAG_HSTOP_H

#include "f_op/f_op_actor.h"
#include "d/d_msg_flow.h"

class daTagHstop_c : public fopAc_ac_c {
public:
    /* 805A43EC */ int create();
    /* 805A45F8 */ ~daTagHstop_c();
    /* 805A46B8 */ void setActive();
    /* 805A475C */ int execute();

    static daTagHstop_c* getTop() { return m_top; }

    daTagHstop_c* getNext() { return mNext; }
    bool getActiveFlg() const { return mActive; }

    static daTagHstop_c* m_top;
    static dMsgFlow_c m_msgFlow;

    /* 0x568 */ daTagHstop_c* mNext;
    /* 0x568 */ daTagHstop_c* mPrev;
    /* 0x570 */ u8 mPrm0;
    /* 0x571 */ bool mActive;
    /* 0x572 */ u8 mPrm1;
    /* 0x573 */ u8 field_0x573;
    /* 0x574 */ int field_0x574;
};

#endif /* D_A_TAG_HSTOP_H */
