#ifndef D_A_TAG_MSTOP_H
#define D_A_TAG_MSTOP_H

#include "d/msg/d_msg_flow.h"
#include "d/com/d_com_inf_game.h"

/**
 * @ingroup actors-tags
 * @brief Midna Stop Tag
 * 
 */
class daTagMstop_c : public fopAc_ac_c {
public:
    /* 805A6138 */ int create();
    /* 805A6338 */ ~daTagMstop_c();
    /* 805A63C4 */ void eventOrder();
    /* 805A63F8 */ int execute();
    bool checkNoAttention() const { return field_0x56b == 0xFF; }

private:
    /* 0x568 */ u8 field_0x568;
    /* 0x569 */ u8 mSwitch;
    /* 0x56A */ u8 field_0x56a;
    /* 0x56B */ u8 field_0x56b;
    /* 0x56C */ u8 field_0x56c;
    /* 0x56D */ u8 field_0x56d;
    /* 0x56E */ u16 field_0x56e;
    /* 0x570 */ u16 field_0x570;
    /* 0x572 */ u16 field_0x572;
    /* 0x574 */ dMsgFlow_c mMsgFlow;
    /* 0x5C0 */ f32 field_0x5c0;
    /* 0x5C4 */ f32 field_0x5c4;
    /* 0x5C8 */ cXyz field_0x5c8;
};

#endif /* D_A_TAG_MSTOP_H */
