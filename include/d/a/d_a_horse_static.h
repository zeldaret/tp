#ifndef D_A_D_A_HORSE_STATIC_H
#define D_A_D_A_HORSE_STATIC_H

#include "dolphin/types.h"
#include "f_op/f_op_actor.h"

class daTagHstop_c : public fopAc_ac_c {
public:
    static daTagHstop_c* getTop() { return m_top; }

    daTagHstop_c* getNext() { return mpNext; }
    bool getActiveFlg() const { return mActive; }

    /* 0x568 */ daTagHstop_c* mpNext;
    /* 0x56C */ daTagHstop_c* field_0x56c;
    /* 0x570 */ u8 field_0x570;
    /* 0x571 */ bool mActive;
    /* 0x572 */ u8 field_0x572;
    /* 0x573 */ u8 field_0x573;
    /* 0x574 */ int field_0x574;

    static daTagHstop_c* m_top;
};

#endif /* D_A_D_A_HORSE_STATIC_H */
