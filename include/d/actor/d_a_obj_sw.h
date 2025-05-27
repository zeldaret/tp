#ifndef D_A_OBJ_SW_H
#define D_A_OBJ_SW_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class obj_sw_class
 * @brief Switch
 *
 * @details
 *
 */
class obj_sw_class : public fopAc_ac_c {
public:
    /* 0x568 */ u8 field_0x568[0x570 - 0x568];
    /* 0x570 */ u8 field_0x570;
    /* 0x571 */ u8 field_0x571[0x5b6 - 0x571];
    /* 0x5B6 */ u8 field_0x5b6;
    /* 0x5B7 */ u8 field_0x5b7[0x5ea - 0x5b7];
    /* 0x5EA */ s16 field_0x5ea;
    /* 0x5EC */ u8 field_0x5ec[0x602 - 0x5ec];
    /* 0x602 */ s16 field_0x602;
    /* 0x604 */ u8 field_0x604[0x614 - 0x604];
    /* 0x614 */ cXyz field_0x614;
    /* 0x620 */ u8 field_0x620[0x8fc - 0x620];
    /* 0x8FC */ f32 field_0x8fc;
    /* 0x900 */ f32 field_0x900;
    /* 0x904 */ u8 field_0x904[0x91c - 0x904];
    /* 0x91C */ int field_0x91c;
    /* 0x920 */ cXyz field_0x920[12];
    /* 0x9B0 */ u8 field_0x9b0[0xd8c - 0x9b0];
    /* 0xD8C */ int field_0xd8c;
};

STATIC_ASSERT(sizeof(obj_sw_class) == 0xd90);

struct obj_sc_s {
public:
    /* 80CF2F3C */ ~obj_sc_s();
    /* 80CF2FA8 */ obj_sc_s();
};


#endif /* D_A_OBJ_SW_H */
