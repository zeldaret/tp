#ifndef D_A_MANT_H
#define D_A_MANT_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-unsorted
 * @class mant_class
 * @brief ???
 *
 * @details Related to Ganondorf Horseback Battle
 *
 */
class mant_class : public fopAc_ac_c {
public:
    /* 0x0568 */ u8 field_0x568[0x395c - 0x568];
    /* 0x395C */ f32 field_0x395c;
    /* 0x3960 */ f32 field_0x3960;
    /* 0x3964 */ u8 field_0x3964;
    /* 0x3965 */ u8 field_0x3965;
    /* 0x3966 */ u8 field_0x3966;
    /* 0x3967 */ u8 field_0x3967;
    /* 0x3968 */ u8 field_0x3968;
    /* 0x3969 */ u8 field_0x3969;
    /* 0x396A */ u8 field_0x396A[0x39a4 - 0x396A];
    
};

STATIC_ASSERT(sizeof(mant_class) == 0x39a4);

class daMant_packet_c : public fopAc_ac_c {
public:
    /* 80861298 */ void draw();
    /* 80862BA4 */ ~daMant_packet_c();
};

struct mant_j_s {
public:
    /* 80862AC0 */ ~mant_j_s();
    /* 80862B3C */ mant_j_s();
};

#endif /* D_A_MANT_H */
