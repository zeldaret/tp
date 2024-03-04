#ifndef D_A_TAG_WLJUMP_H
#define D_A_TAG_WLJUMP_H

#include "d/msg/d_msg_flow.h"
#include "d/com/d_com_inf_game.h"

struct dPath;

class daTagWljump_c : public fopAc_ac_c {
public:
    /* 80D64EB8 */ int create();
    /* 80D65004 */ ~daTagWljump_c();
    /* 80D65090 */ int execute();
    /* 80D6589C */ int draw();

    const cXyz* getLockPos() const {
        if (field_0x568 < 0) {
            return NULL;
        } else {
            return &eyePos;
        }
    }

    /* 0x568 */ s8 field_0x568;
    /* 0x568 */ s8 field_0x569;
    /* 0x568 */ u8 field_0x56a;
    /* 0x568 */ u8 field_0x56b;
    /* 0x56C */ u8 field_0x56c[4];
    /* 0x570 */ u8 field_0x570;
    /* 0x571 */ u8 field_0x571;
    /* 0x572 */ u8 field_0x572;
    /* 0x573 */ u8 field_0x573;
    /* 0x574 */ s16 field_0x574;
    /* 0x574 */ u16 field_0x576;
    /* 0x578 */ dMsgFlow_c mMsgFlow;
    /* 0x5C4 */ dPath* field_0x5c4;
    /* 0x5C8 */ f32 field_0x5c8;
};

#endif /* D_A_TAG_WLJUMP_H */
