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

class daMant_packet_c : public J3DPacket {
    public:
        /* 80861298 */ void draw();
        /* 80862BA4 */ ~daMant_packet_c();

        /* 0x0010 */ Mtx mMtx;
        /* 0x0040 */ Mtx mMtx2;
        /* 0x0070 */ dKy_tevstr_c* field_0x70;
        /* 0x0074 */ u8 field_0x74;
        /* 0x0075 */ u8 field_0x75[0x78 - 0x75];
        /* 0x0078 */ cXyz mPos[338];
        /* 0x1050 */ cXyz mNrm[338];
        /* 0x2029 */ u8 mArg0;
        /* 0x202a */ u8 field_0x202a[0x202b - 0x202a];
};
struct mant_j_s {
    public:
        /* 80862AC0 */ ~mant_j_s();
        /* 80862B3C */ mant_j_s();
    
        /* 0x0000 */ cXyz field_0x0[13];
        /* 0x009C */ cXyz field_0x9c[13];
        /* 0x0138 */ u8 field_0x0138;
        /* 0x0139 */ u8 field_0x0139[0x13A - 0x139];
        /* 0x013A */ u8 field_0x013a;
        /* 0x013B */ u8 field_0x013B[0x180 - 0x13B];
};
class mant_class : public fopAc_ac_c {
public:
    /* 0x0568 */ u8 field_0x568[0x570 - 0x568];
    /* 0x0570 */ daMant_packet_c field_0x0570;
    /* 0x259C */ u8 field_0x259c;
    /* 0x259D */ u8 field_0x259D[0x25A8 - 0x259D];
    /* 0x25A8 */ mant_j_s field_0x25a8[13];
    /* 0x3928 */ cXyz field_0x3928[2];
    /* 0x3940 */ cXyz field_0x3940;
    /* 0x394C */ f32 field_0x394c;
    /* 0x3950 */ f32 field_0x3950;
    /* 0x3954 */ f32 field_0x3954;
    /* 0x3958 */ f32 field_0x3958;
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

#endif /* D_A_MANT_H */
