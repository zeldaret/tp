#ifndef D_A_OBJ_SO_H
#define D_A_OBJ_SO_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class obj_so_class
 * @brief Monkey Cage
 *
 * @details
 *
 */
class obj_so_class : public fopAc_ac_c {
public:
    /* 0x0568 */ u8 field_0x568[0x8fc - 0x568];
    /* 0x08FC */ f32 field_0x8fc;
    /* 0x0900 */ f32 field_0x900;
    /* 0x0904 */ u8 field_0x904[0x91c - 0x904];
    /* 0x091C */ int field_0x91c;
    /* 0x0920 */ cXyz field_0x920[12];
    /* 0x09B0 */ u8 field_0x9b0[0xdac - 0x9b0];
    /* 0x0DAC */ s16 field_0xdac;
    /* 0x0DAE */ s16 field_0xdae;
    /* 0x0DB0 */ u8 field_0xdb0[0xdc4 - 0xdb0];
    /* 0x0DC4 */ s8 field_0xdc4;
    /* 0x0DC5 */ u8 field_0xdc5[0xdc8 - 0xdc5];
    /* 0x0DC8 */ f32 field_0xdc8;
    /* 0x0DCC */ u8 field_0xdcc[0x1054 - 0xdcc];
    /* 0x1054 */ s8 field_0x1054;
    /* 0x1055 */ u8 field_0x1055[0x1a98 - 0x1055];
    /* 0x1A98 */ s8 field_0x1a98[7];
    /* 0x1A9F */ u8 field_0x1a9f[0x1bd0 - 0x1a9f];

    bool partBreak() {
        for (int i = 0; i < 8; i++) {
            if (field_0x1a98[i] == 2) return 1;
        }
        return 0;
    }
};

STATIC_ASSERT(sizeof(obj_so_class) == 0x1bd0);

class daObj_So_HIO_c {
public:
    /* 80CE03CC */ daObj_So_HIO_c();
    /* 80CE3928 */ ~daObj_So_HIO_c();
};


#endif /* D_A_OBJ_SO_H */
