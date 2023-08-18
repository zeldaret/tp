#ifndef D_A_TAG_MHINT_H
#define D_A_TAG_MHINT_H

#include "f_op/f_op_actor.h"
#include "d/msg/d_msg_flow.h"

class daTagMhint_c : public fopAc_ac_c {
public:
    /* 805A56B8 */ void create();
    /* 805A58E8 */ ~daTagMhint_c();
    /* 805A5974 */ void eventOrder();
    /* 805A5AE4 */ void execute();
    bool checkNoAttention() const { return field_0x56d == 0xFF; }

private:
    /* 0x568 */ u8 field_0x568;
    /* 0x569 */ u8 mSwitch;
    /* 0x56A */ u8 field_0x56a;
    /* 0x56B */ u8 field_0x56b;
    /* 0x56C */ u8 mToolEventID;
    /* 0x56D */ u8 field_0x56d;
    /* 0x56E */ u8 field_0x56e;
    /* 0x56F */ u8 field_0x56f;
    /* 0x570 */ u8 field_0x570;
    /* 0x571 */ u8 field_0x571;
    /* 0x572 */ u8 field_0x572;
    /* 0x574 */ u16 field_0x574;
    /* 0x576 */ s16 mEventID;
    /* 0x578 */ u16 field_0x578;
    /* 0x57A */ u16 field_0x57a;
    /* 0x57C */ u16 field_0x57c;
    /* 0x57E */ u16 field_0x57e;
    /* 0x580 */ dMsgFlow_c mMsgFlow;
    /* 0x5CC */ f32 field_0x5cc;
    /* 0x5D0 */ f32 field_0x5d0;
};

#endif /* D_A_TAG_MHINT_H */
