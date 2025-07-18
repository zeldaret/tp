#ifndef D_A_E_BUG_H
#define D_A_E_BUG_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_bug_class
 * @brief Poison Mite
 * 
 * @details 
 * 
 */

struct bug_s {
    /* 80697B4C */ virtual ~bug_s() {};
    /* 80697BB8 */ bug_s();

    /* 0x04 */ u8 field_0x4[0x8 - 0x4];
    /* 0x08 */ int field_0x8;
    /* 0x0C */ u8 field_0xc[0x18 - 0xc];
    /* 0x18 */ cXyz field_0x18;
    /* 0x24 */ u8 field_0x24[0x28 - 0x24];
    /* 0x28 */ f32 field_0x28;
    /* 0x2C */ u8 field_0x2c[0x48 - 0x2c];
    /* 0x48 */ s16 field_0x48;
    /* 0x4A */ u8 field_0x4a[0x4c - 0x4a];
    /* 0x4C */ s16 field_0x4c;
    /* 0x4E */ u8 field_0x4e[0x50 - 0x4e];
    /* 0x50 */ u8 field_0x50;
    /* 0x51 */ u8 field_0x51;
    /* 0x52 */ u8 field_0x52;
    /* 0x53 */ u8 field_0x53[0x78 - 0x53];
};

STATIC_ASSERT(sizeof(bug_s) == 0x78);
class e_bug_class {
public:
    /* 0x0000 */ fopAc_ac_c actor;
    /* 0x0568 */ request_of_phase_process_class mPhase;
    /* 0x0570 */ u8 field_0x570;
    /* 0x0571 */ u8 field_0x571[0x57c - 0x571];
    /* 0x0574 */ u32 field_0x574;
    /* 0x0578 */ u32 field_0x578;
    /* 0x057C */ f32 field_0x57c;
    /* 0x0580 */ u8 field_0x580[0x588 - 0x580];
    /* 0x0588 */ bug_s mBugs[256];
    /* 0x7D88 */ int field_0x7d88;
    /* 0x7D8C */ Z2SoundObjBeeGroup mSound;
    /* 0x7DAC */ u8 field_0x7dac;
    /* 0x7DAD */ u8 field_0x7dad[0x7db0 - 0x7dad];
};

STATIC_ASSERT(sizeof(e_bug_class) == 0x7db0);

class daE_Bug_HIO_c {
    /* 80694B8C */ daE_Bug_HIO_c();
    /* 80697BEC */ ~daE_Bug_HIO_c();
};

#endif /* D_A_E_BUG_H */
