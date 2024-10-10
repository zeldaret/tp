#ifndef D_A_OBJ_GM_H
#define D_A_OBJ_GM_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class obj_gm_class
 * @brief Gohma Egg Container
 *
 * @details
 *
 */
class obj_gm_class : public fopAc_ac_c {
private:
    /* 0x568 */ u8 field_0x568[0xaf4 - 0x568];
};

STATIC_ASSERT(sizeof(obj_gm_class) == 0xaf4);

class daObj_Gm_HIO_c {
public:
    /* 80BFB14C */ daObj_Gm_HIO_c();
    /* 80BFD284 */ ~daObj_Gm_HIO_c();
};

struct daObj {
public:
    /* 800372A0 */ void make_eff_break_gm_kotubo(fopAc_ac_c*);
    /* 80037330 */ void make_eff_break_gm_ootubo(fopAc_ac_c*);
};


#endif /* D_A_OBJ_GM_H */
