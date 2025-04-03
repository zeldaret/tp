#ifndef D_A_OBJ_LP_H
#define D_A_OBJ_LP_H

#include "f_op/f_op_actor_mng.h"

struct wd_ss {
public:
    /* 80C559C8 */ ~wd_ss();
    /* 80C55A04 */ wd_ss();
    
    /* 0x0000 */ J3DModel* mpModel;
    /* 0x0004 */ u8 field_0x4[0x10 - 0x4];
    /* 0x0010 */ cXyz field_0x10[84];
};

STATIC_ASSERT(sizeof(wd_ss) == 0x400); // Could be incorrect size

/**
 * @ingroup actors-objects
 * @class obj_lp_class
 * @brief Lily Pad
 *
 * @details
 *
 */
class obj_lp_class : public fopAc_ac_c {
public:
    /* 0x0568 */ request_of_phase_process_class mPhase;
    /* 0x0570 */ u8 field_0x570;
    /* 0x0571 */ u8 field_0x571;
    /* 0x0572 */ u8 field_0x572;
    /* 0x0573 */ u8 field_0x573;
    /* 0x0574 */ s16 field_0x574;
    /* 0x0576 */ u8 field_0x576[0x57c - 0x576];
    /* 0x057C */ wd_ss mWdSs[42];
    /* 0xAD7C */ mDoExt_3DlineMat0_c field_0xad7c;
    /* 0xAD98 */ int field_0xad98;
    /* 0xAD9C */ u8 field_0xad9c[0xadb0 - 0xad9c];
    /* 0xADB0 */ u8 field_0xadb0;
    /* 0xADB1 */ s8 field_0xadb1;
    /* 0xADB2 */ u8 field_0xadb2;
    /* 0xADB3 */ u8 field_0xadb3;
    /* 0xADB4 */ u8 field_0xadb4;
    /* 0xADB5 */ u8 field_0xadb5[0xadb8 - 0xadb5];
};

STATIC_ASSERT(sizeof(obj_lp_class) == 0xadb8);


#endif /* D_A_OBJ_LP_H */
